using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HumanBase : MonoBehaviour
{
    [SerializeField]
    protected int maxHp = 100;
    protected int hp;

    public int Hp
    {
        get { return hp; }
        set { hp = hp < 0 ? hp = 0 : value; }
    }
    public int MaxHp
    {
        get { return maxHp; }
    }
    // Use this for initialization
    protected virtual void Start()
    {
        hp = maxHp;
    }

}
