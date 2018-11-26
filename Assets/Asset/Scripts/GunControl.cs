using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class GunControl : MonoBehaviour
{
	private GunAction gun;

    [SerializeField]
    private Transform normal_transform;

    [SerializeField]
    private Transform zoom_transform;

	// Use this for initialization
	void Start ()
	{
		gun = GetComponentInChildren<GunAction>();
        gun.gameObject.transform.position = zoom_transform.position;
        gun.gameObject.transform.rotation = zoom_transform.rotation;
    }
	
	// Update is called once per frame
	void Update () {
		gun.triggerGun(Input.GetMouseButton(0));
        /*
        if (Input.GetMouseButtonDown(1))
        {
            gun.gameObject.transform.position = zoom_transform.position;
            gun.gameObject.transform.rotation = zoom_transform.rotation;
        }
        else if(Input.GetMouseButtonUp(1))
        {
            gun.gameObject.transform.position = normal_transform.position;
            gun.gameObject.transform.rotation = normal_transform.rotation;
        }
        */
    }
}
