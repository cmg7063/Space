///SmoothFollow Script. 
/// This script was not written by me. It was provided by the professor.
/// This script is attached to the Camera, allows for a smooth follow through the scene.

using UnityEngine;
using System.Collections;

public class SmoothFollow : MonoBehaviour 
{
	public Transform target;
	public float distance;
	public float height;
	public float heightDamping;
	public float positionDamping;
	public float rotationDamping;
	
	// Update is called once per frame
	void LateUpdate ()
	{
		// Early out if we don't have a target
		if (!target)
			return;
		
		float wantedHeight = target.position.y + height;
		float currentHeight = transform.position.y;
		
		// Damp the height
		currentHeight = Mathf.Lerp (currentHeight, wantedHeight, heightDamping * Time.deltaTime);
		
		// Set the position of the camera 
		Vector3 wantedPosition = target.position - target.forward * distance;
		transform.position = Vector3.Lerp (transform.position, wantedPosition, Time.deltaTime * positionDamping);
		
		// adjust the height of the camera
		transform.position = new Vector3 (transform.position.x, currentHeight, transform.position.z);
		
		
		//transform.forward = Vector3.Lerp (transform.forward, target.position - transform.position, Time.deltaTime * rotationDamping);
		transform.forward = Vector3.Lerp (transform.forward, target.forward , Time.deltaTime * rotationDamping);
		
	}
	// Use this for initialization
	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
	
	}
}
