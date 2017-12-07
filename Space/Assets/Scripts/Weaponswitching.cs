using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weaponswitching : MonoBehaviour {
    //Curreent selected weapon index
    public int selectedWeaponIndex = 0;
    public GameObject[] weapons;
    
	// Use this for initialization
	void Start () {
        SwitchWeapon();

        
	}
	
	// Update is called once per frame
	void Update () {
        //Copy selected weapon index
        int previousSelectedWeaponIndex = selectedWeaponIndex;

        //If they scroll up check which weapon to select
        if (Input.GetAxis("Mouse ScrollWheel") > 0f)
        {
            
            if(selectedWeaponIndex >= transform.childCount - 1)
            {
                selectedWeaponIndex = 0;
            } else
            {
                selectedWeaponIndex++;
            }
        }
        //If they scroll down check which weapon to select
        if (Input.GetAxis("Mouse ScrollWheel") < 0f)
        {
            
            if (selectedWeaponIndex <= 0)
            {
                selectedWeaponIndex = transform.childCount - 1;
            } else
            {
                selectedWeaponIndex--;
            }
        }

        //First weapon index
        if (Input.GetKeyDown(KeyCode.Alpha1))
        {
            selectedWeaponIndex = 0;
        }
        //Second weapon index
        if (Input.GetKeyDown(KeyCode.Alpha2))
        {
            selectedWeaponIndex = 1;
        }
        //Third weapon index
        if (Input.GetKeyDown(KeyCode.Alpha3))
        {
            selectedWeaponIndex = 2;
        }
        //If the selected weapon index has changed then switch weapon
        if (previousSelectedWeaponIndex != selectedWeaponIndex)
        {
            SwitchWeapon();
        }
    }

    void SwitchWeapon()
    {
        //Counter variable
        int i = 0;
        //Cycle through all weapons to find the new weapon
        foreach(Transform weapon in transform)
        {
            if(i == selectedWeaponIndex)
            {
                weapon.gameObject.SetActive(true);
            } else
            {
                weapon.gameObject.SetActive(false);
            }
            i++;
        }
    }
}
