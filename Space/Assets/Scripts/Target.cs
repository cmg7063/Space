using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Target : MonoBehaviour {
    //Targets health
    public float health = 100f;
    
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void TakeDamage(float amount)
    {
        health -= amount;
        if(health <= 0f)
        {
            Destroy(gameObject);
        }
    }
}
