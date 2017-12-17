using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HPBar : MonoBehaviour
{
    private HumanoidAI ai;
    public GameObject player;

    // Use this for initialization
    void Start ()
    {
        ai = GetComponentInParent<HumanoidAI>();
	}
	
	// Update is called once per frame
	void Update ()
    {
        if( ai.IsPlayerInLineOfSight() )
        {
            GetComponent<SpriteRenderer>().enabled = true;
        }
        else
        {
            GetComponent<SpriteRenderer>().enabled = false;
        }

        //Vector3 aiLoc = ai.transform.position; 
        //Vector3 playerLoc = player.transform.position;
        //Vector3 temp = (ai.transform.position - player.transform.position).normalized * 10.0f;
        //temp += player.transform.position;
        //temp.y = ai.transform.position.y + 1.1f + (player.transform.position.y/2.0f)-1.0f;
        Vector3 temp = ai.transform.position;
        temp.y += 1.1f;
        transform.position = temp;
        //transform.position.Scale()
        transform.LookAt( Camera.main.transform.position, -Vector3.up );
        transform.eulerAngles = new Vector3( transform.rotation.eulerAngles.x, transform.rotation.eulerAngles.y, 0.0f );

    }
}
