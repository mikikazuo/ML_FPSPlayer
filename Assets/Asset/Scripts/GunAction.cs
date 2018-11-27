using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GunAction : MonoBehaviour
{
    [SerializeField, TooltipAttribute("銃口の位置")]
    private Transform muzzle_Offset;

    [SerializeField, TooltipAttribute("弾丸")]
    private GameObject bullet;

    [SerializeField, TooltipAttribute("弾を飛ばす力")]
    private float bullet_Power = 500f;

    [SerializeField, TooltipAttribute("弾を飛ばす時間間隔")]
    private float attack_Interval = 0.2f;

    private WeaponStatus status;
    //コールチン管理
    private enum AttackFaze
    {
        StandBy,
        Attack,
        Stop
    }

    private AttackFaze _faze = AttackFaze.StandBy;

    private void Start()
    {
        status = GetComponent<WeaponStatus>();
    }
    //銃の引き金を引くと発砲
    public void triggerGun(bool pull)
    {
        switch (_faze)
        {
            case AttackFaze.StandBy:
                if (pull)
                {
                    StartCoroutine(Attack());
                    //　効果音の再生
                    status.GetShotSE().Play();
                }
                break;
            case AttackFaze.Attack:
                if (!pull)
                {
                    _faze = AttackFaze.Stop;
                    if(status.GetShotSE().loop)
                    status.GetShotSE().Stop();
                }
                break;
        }
    }
    // コルーチン  
    private IEnumerator Attack()
    {
        _faze = AttackFaze.Attack;
        while (_faze == AttackFaze.Attack)
        {
            var bulletInstance =
                GameObject.Instantiate(bullet, muzzle_Offset.position, muzzle_Offset.rotation) as GameObject;
            bulletInstance.GetComponent<Rigidbody>().AddForce(bulletInstance.transform.forward * bullet_Power);
            Destroy(bulletInstance, 5f);

            //　光を表示
            status.GetShotLight().enabled = true;
            yield return new WaitForSeconds(attack_Interval / 5);
            status.GetShotLight().enabled = false;
            yield return new WaitForSeconds(attack_Interval);
        
        }


        _faze = AttackFaze.StandBy;
    }
}