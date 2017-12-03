using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AIWeapon : MonoBehaviour
{
    public ParticleSystem muzzleFlash;

    private HumanoidAI ai;
    public GameObject playerObject;

    public float fireRate = 1f;
    public float damage = 10f;
    public uint magazineSize = 30;

    private Light light;

    [SerializeField]
    private float shootTimer = 0.0f;
    [SerializeField]
    private bool shootCD = false;
    //private PlayerScriptName player
    // Use this for initialization
    void Start()
    {
        ai = GetComponent<HumanoidAI>();
        light = GetComponentInChildren<Light>();
        //player = playerObject.GetComponent<PlayerScriptName>();
    }

    // Update is called once per frame
    void Update()
    {
        
        light.enabled = false;

        //reset
        if( ( ai.GetPreviousState() == HumanoidAI.HumanoidAIState.Shooting ||
            ai.GetPreviousState() == HumanoidAI.HumanoidAIState.ShootingFromCover ) )
        {
            shootCD = false;
            shootTimer = 0.0f;
            //dont do anything if the current state isnt shooting
            return;
        }


        if( ( ai.GetState() == HumanoidAI.HumanoidAIState.Shooting ||
            ai.GetState() == HumanoidAI.HumanoidAIState.ShootingFromCover ) && 
            shootCD )
        { 
            shootTimer += Time.deltaTime;

            if( shootTimer >= fireRate)
            {
                shootCD = false;
            }
        }
        
        if( (ai.GetState() == HumanoidAI.HumanoidAIState.Shooting || 
            ai.GetState() == HumanoidAI.HumanoidAIState.ShootingFromCover) &&
            !shootCD )
        {
            shootTimer = 0.0f;
            shootCD = true;
            Shoot();
        }
    }
    
    void Shoot()
    {
        if( !ai.IsPlayerInLineOfSight() )
        {
            return;
        }

        muzzleFlash.Play();
        //induce a seizure
        light.enabled = true;

        //offset ray
        Vector3 variation = Random.insideUnitCircle;
        variation.z = ai.transform.position.z;
        variation = ai.transform.TransformDirection( variation.normalized );

        float variationFactor = ai.DistanceToPlayer();

        variationFactor = variationFactor / ai.GetShootRange();

        if( variationFactor > 1.0f)
        {
            variationFactor = 1.0f;
        }

        variationFactor *= 20.0f;

        variation *= variationFactor;
        

        //badly coded way of making  ai shoot lower
        variation.y -= .5f;
        RaycastHit hit;
        if( Physics.Raycast(ai.GetAIEye(),ai.GetDirectionToPlayer() + variation, out hit ) )
        {
            if(hit.transform.tag=="Player")
            {
                Debug.Log( "Player hit" );
            }
        }

        Debug.DrawRay( ai.GetAIEye(), ai.GetDirectionToPlayer() + variation, Color.red, 1.0f );

        //float damage = CalculateDamage();

        //Subtract from health and play any damage effects
        //player.TakeDamage( damage );

        //instantiate effect on 


    }
    float CalculateDamage()
    {
        //The farther the player is away the less damage they should take
        return 0.0f;
    }
}
