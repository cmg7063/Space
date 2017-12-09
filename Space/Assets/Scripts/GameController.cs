using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;
using UnityEngine.UI;


public class GameController : MonoBehaviour
{

    public Button instructions;
    public Button play;
    public Button quit;
    public Button options;

    public void Instructions()
    {
        SceneManager.LoadScene("WeaponFireDemoScene");
    }

    public void Play()
    {
        SceneManager.LoadScene("Intro");
    }

    public void Quit()
    {
        Application.Quit();
    }

    public void Options()
    {
        SceneManager.LoadScene("Options");
    }
    // Use this for initialization
    void Start ()
    {
		
	}
	
	// Update is called once per frame
	void Update ()
    {
        if(SceneManager.GetActiveScene() == SceneManager.GetSceneByName("Title"))
        {
            if (Input.anyKey)
            {
                SceneManager.LoadScene("Menu");
            }
        }
        if (SceneManager.GetActiveScene() == SceneManager.GetSceneByName("Intro"))
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                SceneManager.LoadScene("level1");
            }
        }
    }
}
