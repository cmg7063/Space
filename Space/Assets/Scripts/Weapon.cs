using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon : MonoBehaviour {
    //Weapon Damage
    public float damage = 10f;
    //Weapon Range
    public float range = 100f;
    //Fire Rate
    public float fireRate = 1f;
    //Magazine Size
    public uint magazineSize = 30;
    //Total Ammo Count
    public uint totalAmmo = 90;
    //Max ammo count
    public const uint maxAmmo = 180;
    //Is the weapon automatic
    public bool automaticFireRate = true;  
    //Main Camera
    public Camera fpscam;
    //Muzzle Flash
    public ParticleSystem muzzleFlash;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (automaticFireRate)
        {
            if (Input.GetButton("Fire1"))
            {
                Shoot();
            }
        } else
        {
            if (Input.GetButtonDown("Fire1"))
            {
                Shoot();
            }
        }
	}

    void Shoot()
    {
        muzzleFlash.Play();
        RaycastHit hit;
        if(Physics.Raycast(fpscam.transform.position, fpscam.transform.forward, out hit, range))
        {
            Debug.Log(hit.transform.name);
            Target target = hit.transform.GetComponent<Target>();

            if(target != null)
            {
                target.TakeDamage(damage);
            }
        }
    }
}
