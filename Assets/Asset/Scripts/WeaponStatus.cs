using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeaponStatus : MonoBehaviour {

    [SerializeField] private AudioSource shotSE;    //　銃の発砲音
    [SerializeField] private Light shotLight;           //　銃の光
 

    public AudioSource GetShotSE()
    {
        return shotSE;
    }

    public Light GetShotLight()
    {
        return shotLight;
    }

}
