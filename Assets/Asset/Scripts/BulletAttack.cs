using UnityEngine;
using System.Collections;
using System.Threading;
using UnityStandardAssets.Characters.FirstPerson;

public class BulletAttack : MonoBehaviour
{
    [SerializeField]
    private int atk = 5;
    //　弾が当たった時のパーティクル
    [SerializeField]
    private GameObject shotEffect;

    public MazeAgent owner;

    private float count;
    private void Update()
    {
        count += Time.deltaTime;
        if (count > 5.0f)
        {
            Destroy(this.gameObject);
            owner.AddReward(-0.01f);
        }
    }

    private void OnTriggerEnter(Collider col)
    {
        Destroy(this.gameObject);
        var effectInstance = GameObject.Instantiate(shotEffect, transform.position, Quaternion.identity);
        Destroy(effectInstance, 2f);

        //azeAgent target = col.gameObject.GetComponent<MazeAgent>();
        HumanBase target = col.gameObject.GetComponent<HumanBase>();
        if (target)
        {
            target.Hp -= atk;
            //target.resetPosition.addReward(target,owner);
            owner.AddReward(0.5f);
            owner.Done();
        }
        else
        {
            owner.AddReward(-0.01f);
        }
    }
}
