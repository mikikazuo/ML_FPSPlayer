using UnityEngine;
using System.Collections;

public class BulletAttack : MonoBehaviour
{
    [SerializeField]
    private int atk = 5;
    //　弾が当たった時のパーティクル
    [SerializeField]
    private GameObject shotEffect;

    public void Start()
    {
    
    }
    private void OnCollisionEnter(Collision col)
    {
        var effectInstance = GameObject.Instantiate(shotEffect, transform.position, Quaternion.identity);
        Destroy(effectInstance, 3f);



        HumanBase target = col.gameObject.GetComponent<HumanBase>();
        if (target)
        {
            target.Hp -= atk;
        }

        Destroy(this.gameObject);
    }
}
