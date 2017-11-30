using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class HumanoidAI : MonoBehaviour
{
    private List<Vector3> patrolWaypoints = new List<Vector3>();
    private List<Vector3> coverLocations = new List<Vector3>();

    private List<Vector3> strafeLocations = new List<Vector3>();
    private bool positionsInvalid = false;

    private int targetIndex = -1;//cover
    private int patrolIndex = -1;
    private int strafeIndex = -1;

    private List<Vector3> DebugRaysOrigin = new List<Vector3> ();
    private List<Vector3> DebugRaysDirection = new List<Vector3> ();


    public GameObject player;

    private float shootRange = 20.0f;
    private float alertRange = 35.0f;

    private float aiHeight = 1.9f;
    private float playerHeight = 1.9f;

    private float speed = 3.5f;

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
                GotoNextPoint();
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
            speed = 9.0f;   

            if(coverLocations.Count == 0)
            {
                Debug.Log( "No cover waypoints set" );
                targetIndex = -1;
                state = HumanoidAIState.Patrolling;
            }
            if( targetIndex == -1 )
            { 
                targetIndex = GetClosestWaypointOutOfPlayerVision();
            }

			if(targetIndex != -1)
            agent.destination = coverLocations[ targetIndex ];

            //https://answers.unity.com/questions/324589/how-can-i-tell-when-a-navmesh-has-reached-its-dest.html
            if( !agent.pathPending )
            {
                if( agent.remainingDistance <= agent.stoppingDistance )
                {
                    if( !agent.hasPath || agent.velocity.sqrMagnitude == 0f )
                    {
                        targetIndex = -1;
                        speed = 3.5f;
                        state = HumanoidAIState.Hiding;
                    }
                }
            }
            //If on the way to cover the AI is in range and sees the player it switches to shooting
            if( distanceToPlayer < shootRange && IsPlayerInLineOfSight() )
            {
                targetIndex = -1;
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
            if( distanceToPlayer > shootRange && IsPlayerInLineOfSight() )
            {
                state = HumanoidAIState.GoingToCover;
            }
        }

        if( state == HumanoidAIState.Patrolling)
        {

            agent.autoBraking = false;

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

            agent.autoBraking = false;
            agent.SetDestination( transform.position );
            if( distanceToPlayer > shootRange )
            {
                //always reset shooting upon leaving (changing states)
                ResetShooting();
                state = HumanoidAIState.GoingToCover;
            }
            /* not working properly yet
            //only do this once
            if( strafeLocations.Count == 0 && !positionsInvalid )
            { 
                //generate two points to strafe between that are valid paths and also spots that have vision of the player
                Vector3 toPlayer = VectorToPlayer();

                //TODO test and make sure this is correct
                Vector3 perpToPlayer = Vector3.Cross(toPlayer,Vector3.up).normalized;

                List<Vector3> potentialPoints = new List<Vector3>();

                potentialPoints.Add(transform.position + perpToPlayer);
                potentialPoints.Add( transform.position - perpToPlayer );

                NavMeshHit nmHit;

                //Sample position finds a valid location close to a point 

                if( NavMesh.SamplePosition( potentialPoints[ 0 ], out nmHit, 1, NavMesh.AllAreas ) )
                {
                    strafeLocations.Add( nmHit.position );
                }
                else if( NavMesh.SamplePosition( potentialPoints[ 0 ], out nmHit, 1, NavMesh.AllAreas ) ) 
                {
                    strafeLocations.Add( nmHit.position );
                }
                else
                {
                    //stop moving [temporary]
                    agent.SetDestination( transform.position );
                    positionsInvalid = true;
                }
                //if no points are valid, just stand still
            }
            else
            {
                //TODO make sure .1f isnt too small
                if( !agent.pathPending && agent.remainingDistance < 0.4f )
                    StrafeToNextPoint();

                //shoot if can see the player here

            }
            */
        }
		for( int index = 0; index < DebugRaysOrigin.Count; index++)
		{
            Debug.DrawRay( DebugRaysOrigin[ index ], DebugRaysDirection[ index ], Color.blue, 2.0f );
		}

        agent.speed = speed;
        previousState = state;
    }
    void ResetShooting()
    {
        agent.autoBraking = true;   
        positionsInvalid = false;
        strafeLocations.Clear();
    }

    //combine and generalize these functions after
    void GotoNextPoint()
    {
        if( patrolWaypoints.Count == 0 )
            return;

        if( patrolIndex == -1 )
        {
            patrolIndex = GetClosestWaypoint( patrolWaypoints );
        }

        agent.destination = patrolWaypoints[ patrolIndex ];

        patrolIndex = ( patrolIndex + 1 ) % patrolWaypoints.Count;
    }

    void StrafeToNextPoint()
    {
        if( strafeLocations.Count == 0 )
            return;

        if( strafeIndex == -1 )
        {
            strafeIndex = 0;
        }

        agent.destination = strafeLocations[ strafeIndex ];

        strafeIndex = ( strafeIndex + 1 ) % strafeLocations.Count;
    }

    //Y value might have to be included in the future?
    Vector3 VectorToPlayer()
    {
        Vector3 temp = player.transform.position - transform.position;
        return new Vector3( temp.x, 0.0f, temp.z );
    }

    bool IsPlayerInLineOfSight()
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
        DebugRaysOrigin.Add( eye );
        DebugRaysDirection.Add( direction );
        if (Physics.Raycast (eye, direction, out hit)) 
		{
			return (hit.transform.tag == "Player");
		} 
		else 
		{
			return false;
		}

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
                DebugRaysOrigin.Add( eye );
                DebugRaysDirection.Add( direction );
                if (Physics.Raycast (eye, direction, out hit)) 
				{
					if ((hit.transform.tag != "Player")) {
						index = i;
						distanceToClosest = Vector3.Distance (transform.position, coverLocations [i]);
					}
				} 
                //get cover location where the player cant see the AI 
                
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
