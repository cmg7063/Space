using UnityEngine;
using System.Collections;

/// <summary>
/// Music rollover
/// This is to be applied to the MusicBox GameObject
/// A script that ensures that the music plays throughout the scene progressions
/// </summary>

public class MusicRollover : MonoBehaviour 
{
	// Attributes
	private static MusicRollover instance = null;

	// Methods
	void Awake()
	{
		if(instance != null && instance != this)
		{
			Destroy(this.gameObject);
			return;
		}
		else
		{
			instance = this;
		}
		DontDestroyOnLoad (this.gameObject);
	}

	void Update()
	{
		if(UnityEngine.SceneManagement.SceneManager.GetActiveScene().name == "level1" || UnityEngine.SceneManagement.SceneManager.GetActiveScene().name == "level2")
		{
			Destroy(this.gameObject);
		}
	}
}
