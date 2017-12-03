using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DisplayAIState : MonoBehaviour
{

    public GameObject aiObject;
    private HumanoidAI ai;
    private Text textRef;
    // Use this for initialization
    void Start()
    {
        textRef = GetComponentInChildren<Text>();
        ai = aiObject.GetComponent<HumanoidAI>();
    }

    // Update is called once per frame
    void Update()
    {
        textRef.text = ai.GetState().ToString();
    }
}
