﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestingSomething : MonoBehaviour
{

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        Debug.DrawLine( transform.position, transform.position+transform.forward );
        Debug.DrawLine( transform.position, transform.position + -transform.forward );
    }
}
