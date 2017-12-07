using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeScene : MonoBehaviour 
{
	public string targetSceneName;

	// Use this for initialization
	void Start () 
	{
		
	}
	
	// Update is called once per frame
	void Update () 
	{
		
	}

	private void OnTriggerEnter( Collider collision )
	{
		if( collision.gameObject.tag == "Player" )
		{
			UnityEngine.SceneManagement.SceneManager.LoadSceneAsync( targetSceneName );
		}
	}
}
