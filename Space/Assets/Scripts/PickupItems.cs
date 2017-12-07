using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickupItems : MonoBehaviour {
    public int ItemID;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnTriggerEnter(Collider col)
    {
        if(col.tag == "Player")
        {
            if(ItemID == 1)
            {
                Weapon w = col.GetComponentInChildren<Weaponswitching>().weapons[0].GetComponent<Weapon>();
                w.totalAmmoCount += w.magazineSize;
                if(w.totalAmmoCount > w.maxAmmo)
                {
                    w.totalAmmoCount = w.maxAmmo;
                }               
            }
            else if (ItemID == 2)
            {
                Weapon w = col.GetComponentInChildren<Weaponswitching>().weapons[1].GetComponent<Weapon>();
                w.totalAmmoCount += w.magazineSize;
                if (w.totalAmmoCount > w.maxAmmo)
                {
                    w.totalAmmoCount = w.maxAmmo;
                }
            }
            else if (ItemID == 3)
            {
                Weapon w = col.GetComponentInChildren<Weaponswitching>().weapons[2].GetComponent<Weapon>();
                w.totalAmmoCount += w.magazineSize;
                if (w.totalAmmoCount > w.maxAmmo)
                {
                    w.totalAmmoCount = w.maxAmmo;
                }
            }
            Destroy(gameObject);
        }        
    }
}
