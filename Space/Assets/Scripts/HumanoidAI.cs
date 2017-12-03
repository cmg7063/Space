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

    //private List<Vector3> DebugRaysOrigin = new List<Vector3> ();
    //private List<Vector3> DebugRaysDirection = new List<Vector3> ();
     

    public GameObject player;

    public float shootRange = 25.0f;
    public float alertRange = 40.0f;

    public float aiHeight = 2.0f;
    public float playerHeight = 2.0f;
    private float distanceToPlayer;
    private float speed = 3.5f;

    private float debugTimer = 0.0f;

    NavMeshAgent agent;
    public enum HumanoidAIState
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
    public HumanoidAIState state = HumanoidAIState.Unassigned;
    private HumanoidAIState previousState = HumanoidAIState.Unassigned;
    private HumanoidAIState stateLastFrame = HumanoidAIState.Unassigned;

    // Use this for initialization
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();

        //Ensures raycast does not miss when checking line of sight from the top of the models
        
        //QUESTION Turns out player sinks into the ground by about .02f units for some reason
        
        aiHeight -= .1f;
        playerHeight -= .1f;

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
        distanceToPlayer = Vector3.Distance( player.transform.position, transform.position );

        #region speed_and_variables
        //separating speed out from the other places for readability
        if( state == HumanoidAIState.Unassigned )
        {
            agent.autoBraking = true;
            agent.updateRotation = true;
            speed = 0.0f;
        }
        else if( state == HumanoidAIState.GoingToCover )
        {
            agent.autoBraking = true;
            agent.updateRotation = true;
            speed = 9.0f;
        }
        else if( state == HumanoidAIState.Hiding )
        {
            agent.autoBraking = true;
            agent.updateRotation = true;
            speed = 0.0f;
        }
        else if( state == HumanoidAIState.Patrolling )
        {
            agent.autoBraking = false;
            agent.updateRotation = true;
            speed = 3.5f;
        }
        else if( state == HumanoidAIState.Shooting )
        {
            //testing braking here
            agent.autoBraking = false;
            agent.updateRotation = false;
            speed = 3.0f;
        }
        #endregion

        #region main_states
        //set initial state
        if( state == HumanoidAIState.Unassigned )
        {
            if( distanceToPlayer > alertRange )
            {
                GotoNextPoint();
                state = HumanoidAIState.Patrolling;
            }
            if( distanceToPlayer < alertRange && distanceToPlayer > shootRange )
            {
                state = HumanoidAIState.GoingToCover;
            }
            if( ShouldShoot() )
            {
                state = HumanoidAIState.Shooting;
            }
        }
        //state logic
        else if( state == HumanoidAIState.GoingToCover )
        {
            if( ShouldShoot() )
            {
                targetIndex = -1;
                state = HumanoidAIState.Shooting;
            }
            else
            {
                if( coverLocations.Count == 0 )
                {
                    Debug.Log( "No cover waypoints set" );
                    targetIndex = -1;
                    state = HumanoidAIState.Patrolling;
                }

                if( targetIndex == -1 )
                {
                    targetIndex = GetClosestWaypointOutOfPlayerVision();
                }

                if( targetIndex != -1 )
                    agent.destination = coverLocations[ targetIndex ];

                //https://answers.unity.com/questions/324589/how-can-i-tell-when-a-navmesh-has-reached-its-dest.html
                if( !agent.pathPending )
                {
                    if( agent.remainingDistance <= agent.stoppingDistance )
                    {
                        if( !agent.hasPath || agent.velocity.sqrMagnitude == 0f )
                        {
                            targetIndex = -1;
                            state = HumanoidAIState.Hiding;
                        }
                    }
                }
            }
        }
        else if( state == HumanoidAIState.Hiding )
        {
            //add crouching here?

            if( ShouldShoot() )
            {
                //TODO add shooting from cover
                //state = HumanoidAIState.ShootingFromCover;
                state = HumanoidAIState.Shooting;
            }
            if( distanceToPlayer > shootRange && IsPlayerInLineOfSight() )
            {
                state = HumanoidAIState.GoingToCover;
            }
        }
        else if( state == HumanoidAIState.Patrolling )
        {


            if( !agent.pathPending && agent.remainingDistance < 0.5f )
                GotoNextPoint();

            if( distanceToPlayer < alertRange && distanceToPlayer > shootRange )
            {
                state = HumanoidAIState.GoingToCover;
            }
            if( ShouldShoot() )
            {
                state = HumanoidAIState.Shooting;
            }

        }
        else if( state == HumanoidAIState.Shooting )
        {

            if( distanceToPlayer > shootRange + 5.0f )
            {
                //always reset shooting upon leaving (changing states)
                ResetShooting();
                state = HumanoidAIState.GoingToCover;
            }
            else
            { 
                //only do this once
                if( strafeLocations.Count == 0 && !positionsInvalid )
                {
                    //attempt to clear current destination
                    agent.SetDestination( transform.position );
                    //generate two points to strafe between that are valid paths and also spots that have vision of the player
                    Vector3 toPlayer = VectorToPlayer();

                    //TODO test and make sure this is correct
                    Vector3 perpToPlayer = Vector3.Cross(toPlayer,Vector3.up).normalized;

                    List<Vector3> potentialPoints = new List<Vector3>();

                    //2 units distance -> multiply by 2
                    potentialPoints.Add( transform.position + 2.0f * ( perpToPlayer ) );
                    potentialPoints.Add( transform.position - 2.0f * ( perpToPlayer ) );

                    //thanks for making changing struct values so stupid
                    var temp0 = potentialPoints[0];
                    var temp1 = potentialPoints[1];
                    temp0.y = GetGroundYValue( temp0 );
                    temp1.y = GetGroundYValue( temp1 );
                    potentialPoints[ 0 ] = temp0;
                    potentialPoints[ 1 ] = temp1;


                    NavMeshHit nmHit0;
                    NavMeshHit nmHit1;
                    //Sample position finds a valid location close to a point, maxdistance <=1.0f breaks it

                    float length0 =-1;
                    float length1 =-1;

                    if( NavMesh.SamplePosition( potentialPoints[ 0 ], out nmHit0, 2.0f, NavMesh.AllAreas ) )
                    {
                        length0 = CalculatePathLength( nmHit0.position );
                        //strafeLocations.Add( nmHit0.position );
                    }
                    if( NavMesh.SamplePosition( potentialPoints[ 1 ], out nmHit1, 2.0f, NavMesh.AllAreas ) )
                    {
                        length1 = CalculatePathLength( nmHit1.position );
                        //strafeLocations.Add( nmHit1.position );
                    }
                    if( length0 == -1 && length1 == -1 )
                    {
                        //stop moving [temporary]
                        agent.SetDestination( transform.position );
                        positionsInvalid = true;
                        Debug.Log( "Something went wrong in Shooting while generating points" );
                    }

                    //points returned have a weirdly high Y value so I set it to 0 because
                    //it makes the debug waypoints look nicer
                    Vector3 hit0 = nmHit0.position;
                    Vector3 hit1 = nmHit1.position;

                    hit0.y = GetGroundYValue( hit0 );
                    hit1.y = GetGroundYValue( hit1 );

                    if( length0 == length1 )
                    {
                        //add either who cares
                        if( Random.value < .5f )
                        {
                            strafeLocations.Add( hit0 );
                        }
                        else
                        {
                            strafeLocations.Add( hit1 );
                        }

                    }
                    else if( length0 > length1 )
                    {
                        strafeLocations.Add( hit1 );
                    }
                    else
                    {
                        strafeLocations.Add( hit0 );
                    }

                    //Summary
                    //strafing between current position and one generated point
                    //I choose the point that is closer since I assume it doesn't lead around an obstacle on the navmesh
                    //in reality there could be an obstacle in both directions
                    //but for now I believe this will work well enough

                    //TODO: generate more points if path to generated points is above a certain value
                    //might be too costly though

                    strafeLocations.Add( transform.position );

                    GameObject point0 = Instantiate(Resources.Load("DebugWaypoint"), strafeLocations[0],Quaternion.identity) as GameObject;
                    GameObject point1 = Instantiate(Resources.Load("DebugWaypoint"), strafeLocations[1],Quaternion.identity) as GameObject;

                }
                else
                {
                    //TODO make sure .1f isnt too small
                    if( !agent.pathPending && agent.remainingDistance < .1f )
                        StrafeToNextPoint();

                    //TODO tweak this later FIX 
                    Vector3 newDir = Vector3.RotateTowards(transform.forward, DirectionToPlayer(), .0333f, 0.0F);
                    transform.rotation = Quaternion.LookRotation( newDir );

                    //shoot if can see the player here

                }
            }
        }
        #endregion

        #region Debug
  //      for( int index = 0; index < DebugRaysOrigin.Count; index++)
		//{
  //          Debug.DrawRay( DebugRaysOrigin[ index ], DebugRaysDirection[ index ], Color.blue, 2 );
  //      }
        #endregion

        agent.speed = speed;
        //stores previous state, not state last frame
        if( stateLastFrame != state )
        {
            previousState = stateLastFrame;
        }
        stateLastFrame = state;
        

    }

    float CalculatePathLength( Vector3 targetPosition )
    {
        // Create a path and set it based on a target position.
        NavMeshPath path = new NavMeshPath();
        if( agent.enabled )
            agent.CalculatePath( targetPosition, path );

        // Create an array of points which is the length of the number of corners in the path + 2.
        Vector3[] allWayPoints = new Vector3[path.corners.Length + 2];

        // The first point is the enemy's position.
        allWayPoints[ 0 ] = transform.position;

        // The last point is the target position.
        allWayPoints[ allWayPoints.Length - 1 ] = targetPosition;

        // The points inbetween are the corners of the path.
        for( int i = 0; i < path.corners.Length; i++ )
        {
            allWayPoints[ i + 1 ] = path.corners[ i ];
        }

        // Create a float to store the path length that is by default 0.
        float pathLength = 0;

        // Increment the path length by an amount equal to the distance between each waypoint and the next.
        for( int i = 0; i < allWayPoints.Length - 1; i++ )
        {
            pathLength += Vector3.Distance( allWayPoints[ i ], allWayPoints[ i + 1 ] );
        }

        return pathLength;
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

    /// <summary>
    /// Resets variables related to shooting
    /// </summary>
    void ResetShooting()
    {
        GameObject[] objectsToDestroy = GameObject.FindGameObjectsWithTag( "DebugWaypoint" );
        for( int index = 0; index < objectsToDestroy.Length; index++ )
        {
            Destroy( objectsToDestroy[ index ] );
        }
        positionsInvalid = false;
        strafeLocations.Clear();
    }

    /// <summary>
    /// Checks if player is in range and in sight
    /// </summary>
    /// <returns>Bool</returns>
    bool ShouldShoot()
    {
        return ( distanceToPlayer < shootRange && IsPlayerInLineOfSight() );
    }

    //combine and generalize these functions after

    /// <summary>
    /// Sets the next destination while patrolling
    /// Use after one waypoint is reached
    /// </summary>
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

    /// <summary>
    /// Patrolling rewritten for strafing
    /// </summary>
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
            GetGroundYValue(transform.position ) + aiHeight,
            transform.position.z);

        Vector3 playerEye = player.transform.position;
        playerEye.y = GetGroundYValue( playerEye ) + playerHeight;

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
        Vector3 eye = new Vector3(transform.position.x,
            GetGroundYValue( transform.position ) + aiHeight,
            transform.position.z);
        
        Vector3 playerEye = player.transform.position;
        playerEye.y = GetGroundYValue( playerEye ) + playerHeight;

        Vector3 direction = playerEye - eye;
        RaycastHit hit;
        Physics.Raycast( eye, direction, out hit);
        Debug.DrawRay( eye, direction, Color.blue, Time.deltaTime );

        if (Physics.Raycast (eye, direction, out hit)) 
		{
			return (hit.transform.tag == "Player");
		} 
		else 
		{
			return false;
		}

    }

    public Vector3 GetDirectionToPlayer()
    {
        Vector3 eye = new Vector3(transform.position.x,
            GetGroundYValue( transform.position ) + aiHeight,
            transform.position.z);

        Vector3 playerEye = player.transform.position;
        playerEye.y = GetGroundYValue( playerEye ) + playerHeight;

        return playerEye - eye;
    }

    /// <summary>
    /// Returns the closest point to the AI in a list
    /// </summary>
    /// <param name="list">List of waypoints</param>
    /// <returns></returns>
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
    /// <summary>
    /// Gets closest waypoint from where the AI is currently standing that is also unseen by the player currently
    /// </summary>
    /// <returns>Index from coverLocations</returns>
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
                Debug.DrawRay( eye, direction, Color.green, 3.0f );
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

    /// <summary>
    /// Finds the height of the ground at a given point
    /// </summary>
    /// <param name="point"></param>
    /// <returns>Y value as float</returns>
    float GetGroundYValue(Vector3 point)
    {
        //in the future make sure this is actually the ground and not the player and other stuff
        point.y = float.MaxValue;
        RaycastHit hitinfo;
        Physics.Raycast( point, Vector3.down, out hitinfo );
        return hitinfo.point.y;
    }

    public Vector3 GetAIEye()
    {

        Vector3 temp = transform.position;
        temp.y = GetGroundYValue( temp );
        temp.y += aiHeight;

        return temp;
    }

    public HumanoidAIState GetState()
    {
        return state;
    }
    public HumanoidAIState GetPreviousState()
    {
        return previousState;
    }
    public float DistanceToPlayer()
    {
        return Vector3.Distance( player.transform.position, transform.position );
    }
    public float GetShootRange()
    {
        return shootRange;
    }

}
//TODO?

//goingtocover
//if player can see the enemy from the new location on the way there pick a new one

//while shooting if the enemy cant see the player from either locations its walking between possibly find new cover

