using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AgentMovement : MonoBehaviour {

    //https://docs.unity3d.com/Manual/nav-CreateNavMeshAgent.html
    //https://docs.unity3d.com/Manual/nav-BuildingNavMesh.html

    public Transform goal;
    public GameObject player;
    private AIState state = AIState.Idle;
    NavMeshAgent agent;
    //Rigidbody rb;
    [SerializeField]
    private float jumpTimer;
    [SerializeField]
    private float idleTimer;

    private bool isJumping;
    private bool isGrounded;
    private bool jumpCD = false;
    public GameObject model; 
    private bool isGroundedLast;

    public enum AIState
    {
        Idle,
        Hiding,
        Jumping,
        Chasing,
        ChargingJump
    }

// Use this for initialization
	void Start ()
    {
        agent = GetComponent<NavMeshAgent>();
        // rb = GetComponent<Rigidbody>();
        isGroundedLast = false;
    }
	
    //extract jump timer from states

	// Update is called once per frame
	void Update ()
    {
        //1.1 is a little more than the height
        isGrounded = Physics.Raycast( model.transform.position, Vector3.down, 1.1f );

        Vector3 vectorToPlayer = ( player.transform.position - transform.position );

        //assign states
        if( Vector3.Distance( player.transform.position, transform.position ) > 7 && 
            Vector3.Distance( player.transform.position, transform.position ) < 30 ) 
        {
            state = AIState.Chasing;
            agent.isStopped = false;
        }
        else if( Vector3.Distance( player.transform.position, transform.position ) > 25 )
        {
            state = AIState.Idle;
        }
        else if( Vector3.Distance( player.transform.position, transform.position ) <7 )
        {
            state = AIState.Jumping;
            agent.isStopped = false;
        }

        //state logic
        if( state == AIState.Chasing )
        {
            agent.speed = 3.5f;
            //move to closest point X distance from player

            agent.destination = agent.transform.position + vectorToPlayer;
        }
        if( state == AIState.Idle )
        {
            agent.isStopped = true;
        }
        if(state == AIState.Jumping)
        {
            agent.speed = 7.0f;
            if( jumpCD)
            {
                agent.speed = 0.0f;
            }
            agent.destination = agent.transform.position + vectorToPlayer;

            if( !jumpCD )
            {
                if( jumpTimer == 0.0f )
                {
                    isJumping = true;
                }
                //change
                float jumpForce = 10.0f;

                jumpTimer += Time.deltaTime;

                if( jumpTimer > 0.5f )
                {
                    isJumping = false;
                    //dont set state unless enemy is too far away to jump, which is done above
                }
                if( isJumping )
                {

                    model.transform.position =
                        new Vector3( model.transform.position.x,
                        model.transform.position.y + ( jumpForce * Time.deltaTime ),
                        model.transform.position.z );
                }
            }
            else
            { 
                idleTimer += Time.deltaTime;
            
                if(idleTimer >1.0f)
                {
                    jumpCD = false;
                    idleTimer = 0.0f;
                    jumpTimer = 0.0f;
                }
            }
        }
        //fall if not jumping and not grounded
        if( !isGrounded && (!isJumping || state != AIState.Jumping) )
        {
            //change
            float fallspeed = 10.0f;

            if( vectorToPlayer != Vector3.zero )
            {
                //to be changed
                transform.position += vectorToPlayer.normalized * .1f;
            }
            model.transform.position = 
                new Vector3( model.transform.position.x, 
                model.transform.position.y - (fallspeed* Time.deltaTime), 
                model.transform.position.z );

        }

        if( isGroundedLast == false && isGrounded == true )
        {
            jumpCD = true;
        }

        Debug.DrawLine( transform.position, agent.destination );
        Debug.Log( state.ToString() );
        isGroundedLast = isGrounded;
    }
}
