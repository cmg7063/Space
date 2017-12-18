using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class Weapon : MonoBehaviour {
    //Main Camera
    public Camera fpscam;
    //Muzzle Flash
    public ParticleSystem muzzleFlash;
    //Impact Effect
    public GameObject impactEffect;
    //Weapon Damage
    public float damage = 25.0f;
    //Weapon Range
    public float range = 100f;
    //Fire Rate
    public float fireRate = 650f;
    //Magazine count
    public uint magazineAmmoCount = 30;
    //Total Ammo Count
    public uint totalAmmoCount = 90;
    //Magazine Size
    public uint magazineSize = 30;
    //Max ammo count
    public uint maxAmmo = 180;
    //Reload timer
    public float reloadTime = 1f;
    //Is the weapon automatic
    public bool automaticFireRate = true;
    //Time between each shot
    public float timeBetweenShots;
    //Time since the last shot
    public float timeSinceLastShot;
    //Bool to see if the weapon is reloading
    public bool isReloading = false;
    //Animation handler
    public Animator animatorHandler;
    //Weapon UI
    public GameObject ammoCounter;

    // Use this for initialization
    void Start () {
        timeBetweenShots = 60.0f / fireRate;
        timeSinceLastShot = timeBetweenShots;
        
	}

    private void OnEnable()
    {
        //Update ammo counter
        ammoCounter.GetComponent<Text>().text = magazineAmmoCount + "/" + totalAmmoCount;
        isReloading = false;
        animatorHandler.SetBool("reloading", false);
    }

    // Update is called once per frame
    void Update () {

        if(timeSinceLastShot < timeBetweenShots)
        {
            timeSinceLastShot += Time.deltaTime;
        }
        

        if (isReloading)
        {
            return;
        }

        ammoCounter.GetComponent<Text>().text = magazineAmmoCount + "/" + totalAmmoCount;
        if (magazineAmmoCount <= 0 || Input.GetKeyDown(KeyCode.R) && magazineAmmoCount != magazineSize)
        {
            if (totalAmmoCount > 0)
            {
                animatorHandler.SetBool("reloading", true);
                StartCoroutine(Reload());
            }
            return;
        }

        if (automaticFireRate)
        {
            if (Input.GetButton("Fire1"))
            {
                if (timeBetweenShots <= timeSinceLastShot)
                {
                    Shoot();
                }

            }
        }
        else
        {
            if (Input.GetButtonDown("Fire1"))
            {
                if (timeBetweenShots <= timeSinceLastShot)
                {
                    Shoot();
                }
            }
        }


    }

    IEnumerator Reload()
    {
        isReloading = true;
        //Update ammo counter
        ammoCounter.GetComponent<Text>().text = "--/" + totalAmmoCount;
        yield return new WaitForSeconds(reloadTime - 0.30f);        
        animatorHandler.SetBool("reloading", false);
        yield return new WaitForSeconds(0.30f);
        if (totalAmmoCount + magazineAmmoCount > magazineSize)
        {
            totalAmmoCount -= magazineSize - magazineAmmoCount;
            magazineAmmoCount = magazineSize;            
        }
        else
        {
            magazineAmmoCount += totalAmmoCount;
            totalAmmoCount = 0;
        }
        ammoCounter.GetComponent<Text>().text = magazineAmmoCount + "/" + totalAmmoCount;
        isReloading = false;
    }

    void Shoot()
    {
        //Update ammo counter
        ammoCounter.GetComponent<Text>().text = magazineAmmoCount + "/" + totalAmmoCount;
        timeSinceLastShot = 0;
        muzzleFlash.Play();
        magazineAmmoCount--;
        RaycastHit hit;
        if(Physics.Raycast(fpscam.transform.position, fpscam.transform.forward, out hit, range) && hit.transform.tag != "Player")
        {
            
            Target target = hit.transform.GetComponent<Target>();

            if(target != null)
            {
                target.TakeDamage(damage);
            }

            Instantiate(impactEffect, hit.point, Quaternion.LookRotation(hit.normal));
        }

        if(hit.transform.tag == "HumanoidAI")
        {
            hit.transform.gameObject.GetComponentInParent<HumanoidAI>().TakeDamage( damage );
        }
    }
}
