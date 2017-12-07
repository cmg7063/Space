using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateItem : MonoBehaviour {
    public float topPos;
    public float botPos;
    public bool rising;
	// Use this for initialization
	void Start () {
        topPos = transform.position.y + 0.1f;
        botPos = transform.position.y - 0.1f;
        rising = true;
	}
	
	// Update is called once per frame
	void Update () {
        transform.Rotate(new Vector3(0, 30 * Time.deltaTime, 0));
        if(transform.position.y <= topPos && rising)
        {
            transform.position = new Vector3(transform.position.x, transform.position.y + (0.1f * Time.deltaTime), transform.position.z);
        } else if (transform.position.y >= botPos && !rising)
        {
            transform.position = new Vector3(transform.position.x, transform.position.y - (0.1f * Time.deltaTime), transform.position.z);
        }

        if(rising && transform.position.y > topPos)
        {
            rising = false;
        }

        if (!rising && transform.position.y < botPos)
        {
            rising = true;
        }
    }
}
