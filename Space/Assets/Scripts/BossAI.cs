using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class BossAI : MonoBehaviour
{


    public GameObject player;
    public GameObject healthBar;

    public float attackRange = 5.0f;
    public float alertRange = 40.0f;

    public float aiHeight = 2.0f;
    public float playerHeight = 2.0f;
    private float distanceToPlayer;
    private float speed = 3.5f;

    private float debugTimer = 0.0f;
    private float health = 100.0f;
    private float healthBarWidth;

    //public Animator pAnimator;

    NavMeshAgent agent;

    public enum BossAIState
    {
        Unassigned,
        Chasing,
        Attacking,
        Stomping //possible addition
    }



    [SerializeField]
    public BossAIState state = BossAIState.Unassigned;

    // Use this for initialization
    void Start()
    {
        healthBarWidth = healthBar.GetComponent<SpriteRenderer>().sprite.rect.width;
        agent = GetComponent<NavMeshAgent>();
        //pAnimator = GetComponentInChildren<Animator>();
        //Ensures raycast does not miss when checking line of sight from the top of the models

        //QUESTION  player sinks into the ground by about .02f units for some reason

        aiHeight -= .1f;
        playerHeight -= .1f;

        healthBar.GetComponent<SpriteRenderer>().color = new Color( 20.0f / 255.0f, 184.0f / 255.0f, 1.0f );

    }

    void UpdateHealth()
    {
        Sprite temp = healthBar.GetComponent<SpriteRenderer>().sprite;

        float newWidth = healthBarWidth * (health / 100.0f);
        temp = Sprite.Create( temp.texture,
            new Rect( 0.0f, 0.0f, newWidth, temp.rect.height ),
            new Vector2( 0.5f, 0.5f ), 100.0f );

        healthBar.GetComponent<SpriteRenderer>().sprite = temp;
        if( health <= 33.3f )
        {
            healthBar.GetComponent<SpriteRenderer>().color = new Color( 1.0f, 0.0f, 0.0f );
        }

    }

    // Update is called once per frame
    void Update()
    {
        distanceToPlayer = Vector3.Distance( player.transform.position, transform.position );

        //Debug 
        //TakeDamage( Time.deltaTime * 10.0f );

        //Walk isn't working? and shooting is stupid
        //doesn't really fit at all since his arm is a cannon thing and he decides to crouch for some reason before every shot
        

        //separating speed out from the other places for readability
        if( state == BossAIState.Unassigned )
        {
            //pAnimator.Play( "Idle");
            agent.autoBraking = true;
            agent.updateRotation = true;
            speed = 0.0f;
        }
        else if( state == BossAIState.Chasing )
        {
            //pAnimator.Play( "Run" );
            agent.autoBraking = true;
            agent.updateRotation = true;
            speed = 9.0f;
        }
        else if( state == BossAIState.Attacking )
        {
            //pAnimator.Play( "Idle" );
            agent.autoBraking = true;
            agent.updateRotation = true;
            speed = 0.0f;
        }
        else if( state == BossAIState.Stomping )
        {

            //pAnimator.Play( "Run" );
            agent.autoBraking = false;
            agent.updateRotation = true;
            speed = 3.5f;
        }

        //set initial state
        if( state == BossAIState.Unassigned )
        {
            if( distanceToPlayer > alertRange )
            {

            }

        }
    }

    public IEnumerator TurnToFaceSmoothly( Transform targetToLookAt )
    {
        // WHILE NOT LOOKING AT TARGET
        while( Vector3.Dot( transform.forward, ( targetToLookAt.position - transform.position ).normalized ) < 0.95f )
        {
            // GET DIRECTION
            Vector3 dir = targetToLookAt.position - transform.position;

            // ROTATE SMOOTH
            transform.rotation = Quaternion.Slerp( transform.rotation, Quaternion.LookRotation( dir ), 5f * Time.smoothDeltaTime );

            // ONLY ROTATE Y AXIS (CLAMP)
            transform.eulerAngles = new Vector3( 0f, transform.eulerAngles.y, 0f );

            yield return null;
        }
    }


    //Y value might have to be included in the future?
    /// <summary>
    /// Gets a vector pointing from this transform to the player's
    /// </summary>
    /// <returns>Vector3 with a y value of 0</returns>
    Vector3 VectorToPlayer()
    {
        Vector3 temp = player.transform.position - transform.position;
        return new Vector3( temp.x, 0.0f, temp.z );
    }

    public Vector3 DirectionToPlayer()
    {
        Vector3 eye = new Vector3( transform.position.x,
            transform.position.y + aiHeight/2.0f,
            transform.position.z);

        Vector3 playerEye = player.transform.position;
        playerEye.y = playerEye.y + playerHeight / 2.0f;

        Vector3 direction = playerEye - eye;
        return direction;
    }

    /// <summary>
    /// Checks if the AI can see the player from the top of the AI to the top of the Player
    /// Potential errors: Height has to be slightly lower than the actual height otherwise the raycast will miss
    /// TODO: Check bottom of player too from AI eyes
    /// </summary>
    /// <returns></returns>
    public bool IsPlayerInLineOfSight()
    {
        //eye level
        Vector3 eye = new Vector3( transform.position.x,
            transform.position.y + aiHeight/2.0f,
            transform.position.z );

        Vector3 playerEye = player.transform.position;
        playerEye.y = playerEye.y + playerHeight / 2.0f;

        Vector3 direction = playerEye - eye;
        RaycastHit hit;
        Physics.Raycast( eye, direction, out hit );
        Debug.DrawRay( eye, direction, Color.blue, Time.deltaTime );

        if( Physics.Raycast( eye, direction, out hit ) )
        {
            return ( hit.transform.tag == "Player" );
        }
        else
        {
            return false;
        }

    }

    public Vector3 GetDirectionToPlayer()
    {
        Vector3 eye = new Vector3(transform.position.x,
            transform.position.y + aiHeight/2.0f,
            transform.position.z);

        Vector3 playerEye = player.transform.position;
        playerEye.y = playerEye.y + playerHeight / 2.0f;
        Vector3 result = playerEye - eye;
        result.y = 0;
        return result;
    }


    public Vector3 GetAIEye()
    {

        Vector3 temp = transform.position;
        temp.y += aiHeight / 2.0f;

        return temp;
    }

    public BossAIState GetState()
    {
        return state;
    }

    public float DistanceToPlayer()
    {
        return Vector3.Distance( player.transform.position, transform.position );
    }

    public void TakeDamage( float amount )
    {
        health -= amount;
        UpdateHealth();
        if( health <= 0.0f )
        {
            Destroy( gameObject );
        }
    }
}
