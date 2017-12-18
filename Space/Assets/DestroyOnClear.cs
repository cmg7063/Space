using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyOnClear : MonoBehaviour
{
    private List<GameObject> ai;

    // Use this for initialization
    void Start()
    {
        ai = new List<GameObject>( GameObject.FindGameObjectsWithTag( "HumanoidAI" ) );
    }

    // Update is called once per frame
    void Update()
    {
        if( ai.Count == 0 )
        {
            Destroy( gameObject );
        }
    }
}
