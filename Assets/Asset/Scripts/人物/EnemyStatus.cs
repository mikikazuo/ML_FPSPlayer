using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyStatus : HumanBase
{
    private ControlAIGraph ai_Graph;
    [SerializeField, Tooltip("The object that we are searching for")]
    public GameObject targetObject;


    // Use this for initialization
    protected override void Start()
    {
        base.Start();
        ai_Graph = GetComponentInChildren<ControlAIGraph>();
    }

    // Update is called once per frame
    void Update()
    {
        if (ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("Search"))
        {
            ai_Graph.BOARD.enemy_Info.progress_Time += Time.deltaTime;
            if (ai_Graph.BOARD.enemy_Info.progress_Time > 15)
                ai_Graph.TOPSTATE.SetTrigger("NearSearch");
        }
        if (ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("Attack"))
        {
            ai_Graph.BOARD.enemy_Info.progress_Time += Time.deltaTime;
            if (ai_Graph.BOARD.enemy_Info.progress_Time > 15)
                ai_Graph.TOPSTATE.SetTrigger("Search");
        }
        if (ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("SearchAround"))
        {
            ai_Graph.BOARD.enemy_Info.progress_Time += Time.deltaTime;
            if (ai_Graph.BOARD.enemy_Info.progress_Time > 40)
                ai_Graph.TOPSTATE.SetTrigger("Free");
        }
    }
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Bullet"))
        {
            ai_Graph.BOARD.enemy_Info.attention_Pos = targetObject.transform.position;
            ai_Graph.BOARD.enemy_Info.progress_Time = 0;
            if (ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("Free")||
                ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("NearSearch") ||
                ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("SearchAround") ||
                ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("Search"))
                ai_Graph.TOPSTATE.SetTrigger("Near");
        }
    }
}
