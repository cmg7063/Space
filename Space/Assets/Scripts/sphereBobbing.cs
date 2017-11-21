using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class sphereBobbing : MonoBehaviour
{
    private Vector3 bobbingVec;
    private float originalY;

    public float bobForce;
	// Use this for initialization
	void Start ()
    {
        this.originalY = this.transform.position.y;
	}
	
	// Update is called once per frame
	void Update ()
    {
        bobbingVec = transform.position;
        bobbingVec.y = originalY + (Mathf.Sin(Time.time) * bobForce);
        transform.position = bobbingVec;
    }
}
