using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class HumanoidAI : MonoBehaviour
{
    private List<Vector3> patrolWaypoints = new List<Vector3>();
    private List<Vector3> coverLocations = new List<Vector3>();
    private int targetIndex = -1;//cover
    private int patrolIndex = -1;


    public GameObject player;

    private float shootRange = 20.0f;
    private float alertRange = 35.0f;

    private float aiHeight = 2.0f;
    private float playerHeight = 2.0f;

    private float speed;

    NavMeshAgent agent;
    enum HumanoidAIState
    {
        Unassigned,
        Patrolling,
        //Alert,
        //Searching,
        Shooting,
        ShootingFromCover,
        GoingToCover,
        Hiding
    }

    [SerializeField]
    private HumanoidAIState state = HumanoidAIState.Unassigned;
    private HumanoidAIState previousState = HumanoidAIState.Unassigned;

    // Use this for initialization
    void Start()
    {
        state = HumanoidAIState.Patrolling;
        agent = GetComponent<NavMeshAgent>();

        foreach(GameObject waypoint in GameObject.FindGameObjectsWithTag("CoverWaypoint"))
        {
            coverLocations.Add( waypoint.transform.position );
        }
        foreach( GameObject waypoint in GameObject.FindGameObjectsWithTag( "PatrolWaypoint" ) )
        {
            patrolWaypoints.Add( waypoint.transform.position );
        }
    }

    // Update is called once per frame
    void Update()
    {
        float distanceToPlayer = Vector3.Distance( player.transform.position, transform.position );

        //set initial state
        if( state == HumanoidAIState.Unassigned)
        { 
            if( distanceToPlayer > alertRange )
            {
                state = HumanoidAIState.Patrolling;
            }
            if( distanceToPlayer < alertRange && distanceToPlayer > shootRange)
            {
                state = HumanoidAIState.GoingToCover;
            }
            if( distanceToPlayer < shootRange)
            {
                state = HumanoidAIState.Shooting;
            }
        }

        //state logic
        if( state == HumanoidAIState.GoingToCover)
        {
            speed = 7.0f;   
            if(coverLocations.Count == 0)
            {
                Debug.Log( "No cover waypoints set" );
                state = HumanoidAIState.Patrolling;
            }
            if( targetIndex == -1 )
            { 
                targetIndex = GetClosestWaypointOutOfPlayerVision();
            }

            agent.destination = coverLocations[ targetIndex ];

            //https://answers.unity.com/questions/324589/how-can-i-tell-when-a-navmesh-has-reached-its-dest.html
            if( !agent.pathPending )
            {
                if( agent.remainingDistance <= agent.stoppingDistance )
                {
                    if( !agent.hasPath || agent.velocity.sqrMagnitude == 0f )
                    {
                        speed = 3.5f;
                        state = HumanoidAIState.Hiding;
                    }
                }
            }
            //If on the way to cover the AI is in range and sees the player it switches to shooting
            if( distanceToPlayer < shootRange && CheckLineOfSightPlayer() )
            {
                state = HumanoidAIState.Shooting;
            }

        }
        if( state == HumanoidAIState.Hiding)
        {
            //add crouching here?
            
            if( distanceToPlayer < shootRange )
            {
                state = HumanoidAIState.ShootingFromCover;
            }
        }

        if( state == HumanoidAIState.Patrolling)
        {

            agent.autoBraking = false;
            if(patrolIndex == -1)
            {
               patrolIndex = GetClosestWaypoint( patrolWaypoints );
            }

            if( !agent.pathPending && agent.remainingDistance < 0.5f )
                GotoNextPoint();

            if( distanceToPlayer < alertRange && distanceToPlayer > shootRange )
            {

                agent.autoBraking = true;
                state = HumanoidAIState.GoingToCover;
            }
            if( distanceToPlayer < shootRange )
            {
                agent.autoBraking = true;
                state = HumanoidAIState.Shooting;
            }

        }
        if( state == HumanoidAIState.Shooting)
        {
            agent.SetDestination( transform.position );
        }

        agent.speed = speed;
        previousState = state;
    }
    void GotoNextPoint()
    {
        if( patrolWaypoints.Count == 0 )
            return;

        agent.destination = patrolWaypoints[ patrolIndex ];

        patrolIndex = ( patrolIndex + 1 ) % patrolWaypoints.Count;
    }

    bool CheckLineOfSightPlayer()
    {
        //eye level
        Vector3 eye = new Vector3(transform.position.x,
            GetGroundYValue( transform.position ) + aiHeight,
            transform.position.z);
        
        Vector3 playerEye = player.transform.position;
        playerEye.y = GetGroundYValue( playerEye ) + playerHeight;

        Vector3 direction = playerEye - eye;
        RaycastHit hit;
        Physics.Raycast( eye, direction, out hit);
        
        return if(hit.transform.tag == "Player");
    }

    int GetClosestWaypoint(List<Vector3> list)
    {
        float distanceToClosest = float.MaxValue;
        int index = -1;

        for( int i = 0; i < list.Count; i++ )
        {
            if( Vector3.Distance(transform.position,list[i]) < distanceToClosest )
            {
                index = i;
                distanceToClosest = Vector3.Distance( transform.position, list[ i ] );
            }
        }

        return index; 
    }
    int GetClosestWaypointOutOfPlayerVision()
    {
        float distanceToClosest = float.MaxValue;
        int index = -1;
        
        for( int i = 0; i < coverLocations.Count; i++ )
        {
            if( Vector3.Distance( transform.position, coverLocations[ i ] ) < distanceToClosest )
            {
                Vector3 eye = new Vector3(
                    coverLocations[ i ].x,
                    GetGroundYValue( coverLocations[ i ]) + aiHeight, 
                    coverLocations[ i ].z);

                Vector3 playerEye = player.transform.position;
                playerEye.y = GetGroundYValue( playerEye ) + playerHeight;
                Vector3 direction = playerEye - eye;
                
                RaycastHit hit;
                Physics.Raycast( playerEye, direction, out hit);

                //get cover location where the player cant see the AI 
                if( !(hit.transform.tag == "Player") )
                {
                    index = i;
                    distanceToClosest = Vector3.Distance( transform.position, coverLocations[ i ] );
                }
            }
        }

        if( index != -1)
            return index;

        //make sure to check for this when using 
        state = HumanoidAIState.Unassigned;
        return -1;
    }

    float GetGroundYValue(Vector3 point)
    {
        //in the future make sure this is actually the ground and not the player and other stuff
        RaycastHit hitinfo;
        Physics.Raycast( point, Vector3.down, out hitinfo );
        return hitinfo.point.y;
    }
}

//Fix raycasts to check for player instead of just anything
