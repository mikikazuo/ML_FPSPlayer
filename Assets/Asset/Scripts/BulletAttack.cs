using UnityEngine;
using System.Collections;
using UnityStandardAssets.Characters.FirstPerson;

public class BulletAttack : MonoBehaviour
{
    [SerializeField]
    private int atk = 5;
    //　弾が当たった時のパーティクル
    [SerializeField]
    private GameObject shotEffect;

    public MazeAgent owner;
    private void OnTriggerEnter(Collider col)
    {
        Destroy(this.gameObject);
        var effectInstance = GameObject.Instantiate(shotEffect, transform.position, Quaternion.identity);
        Destroy(effectInstance, 2f);

        MazeAgent target = col.gameObject.GetComponent<MazeAgent>();
        if (target)
        {
            target.Hp -= atk;
            //target.resetPosition.addReward(target,owner);
            owner.AddReward(0.1f);
        }else
            owner.AddReward(-0.01f);
    }
}
