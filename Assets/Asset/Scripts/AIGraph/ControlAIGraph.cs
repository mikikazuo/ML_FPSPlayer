using System.Collections;
using System.Collections.Generic;
using BehaviorDesigner.Runtime;
using UnityEngine;


public class ControlAIGraph : MonoBehaviour
{
    private Animator topStateInfo;
    public Animator TOPSTATE
    {
        get { return topStateInfo; }
    }
    private BehaviorTree[] trees;
    private BlackBoard board;

    public BlackBoard BOARD
    {
        get { return board; }
        set { board = value; }
    }
    //本体
    private GameObject body;

    public GameObject BODY
    {
        get { return body; }
        set { body = value; }
    }

    //最上位ステートに応じてビヘイビアツリーの切り替え
    public void changeTree()
    {
        for (int i = 0; i < trees.Length; i++)
            trees[i].enabled = topStateInfo.GetCurrentAnimatorStateInfo(0).IsName(trees[i].BehaviorName)
                ? true
                : false;
    }

    private void Awake()
    {
        board = new BlackBoard();
        body = transform.parent.gameObject;
    }

    // Use this for initialization
    void Start()
    {
        trees = GetComponentsInChildren<BehaviorTree>();
        topStateInfo = GetComponent<Animator>();
        changeTree();
    }

    private void Update()
    {

    }

}