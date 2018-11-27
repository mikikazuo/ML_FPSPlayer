using BehaviorDesigner.Runtime.Tasks.Movement;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharaStatus : MonoBehaviour
{
    private int hp = 100;
    private int maxhp;
    private bool ok;
    private ControlAIGraph ai_Graph;

    [Tooltip("The LayerMask of the objects to ignore when performing the line of sight check")]
    public LayerMask ignoreLayerMask;

    [Tooltip("How far away the unit can hear")]
    public float hearingRadius = 5;
    public float hearingGunRadius = 15;

    [Tooltip("The object that we are searching for")]
    public GameObject targetObject;
    public GameObject targetGunObject;


    private GameObject returnedObject;

    /*
    [SerializeField, Tooltip("Should the target bone be used?")]
    private bool useTargetBone;
    [SerializeField, Tooltip("The target's bone if the target is a humanoid")]
    private HumanBodyBones targetBone;
    */

    // Use this for initialization
    void Start()
    {
        maxhp = hp;
        ai_Graph = GetComponentInChildren<ControlAIGraph>();

    }

    /*
    private void canSee()
    {

        GameObject obj = MovementUtility.WithinSight(transform, Vector3.zero, 60, 20, targetObject, Vector3.zero, ignoreLayerMask, useTargetBone, targetBone); ;

        if (obj)
        {
            returnedObject = obj;

           ai_Graph.BOARD.enemy_Info.attention_Pos = returnedObject.transform.position;
            ai_Graph.BOARD.enemy_Info.progress_Time = 0;
            if (ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("Free"))
                ai_Graph.TOPSTATE.SetTrigger("Noticed");


        }
    }
    */
    private void canHear()
    {
        if (Vector3.Distance(targetObject.transform.position, transform.position) < hearingRadius)
        {
            GameObject obj = MovementUtility.WithinHearingRange(transform, Vector3.zero, 0.05f, targetObject);
            if (obj)
            {
                returnedObject = obj;
                ai_Graph.BOARD.enemy_Info.attention_Pos = returnedObject.transform.position;
                ai_Graph.BOARD.enemy_Info.progress_Time = 0;
                if (ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("Free") ||
                    ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("Attack") ||
                    ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("Search")||
                      ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("NearSearch")||
                       ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("SearchAround"))
                    ai_Graph.TOPSTATE.SetTrigger("Near");
            }
        }
        else if (Vector3.Distance(targetGunObject.transform.position, transform.position) < hearingGunRadius)
        {
            GameObject obj = MovementUtility.WithinHearingRange(transform, Vector3.zero, 0.01f, targetGunObject);
            if (obj)
            {
                returnedObject = obj;
                ai_Graph.BOARD.enemy_Info.attention_Pos = returnedObject.transform.position;
                     ai_Graph.BOARD.enemy_Info.progress_Time = 0;
                if (ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("Free"))
                    ai_Graph.TOPSTATE.SetTrigger("Near");
            }

        }
    }
    private void Update()
    {
      //  canHear();

        if (ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("Search")) {
            ai_Graph.BOARD.enemy_Info.progress_Time += Time.deltaTime;
            if (ai_Graph.BOARD.enemy_Info.progress_Time > 10)
            ai_Graph.TOPSTATE.SetTrigger("NearSearch");
        }
        if (ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("Attack"))
        {
            ai_Graph.BOARD.enemy_Info.progress_Time += Time.deltaTime;
            if (ai_Graph.BOARD.enemy_Info.progress_Time > 10)
                ai_Graph.TOPSTATE.SetTrigger("Search");
        }
        if (ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("SearchAround"))
        {
            ai_Graph.BOARD.enemy_Info.progress_Time += Time.deltaTime;
            if (ai_Graph.BOARD.enemy_Info.progress_Time > 30)
                ai_Graph.TOPSTATE.SetTrigger("Free");
        }

    }
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Bullet"))
        {
            hp -= 10;
            ai_Graph.BOARD.enemy_Info.attention_Pos =targetObject.transform.position;
            ai_Graph.BOARD.enemy_Info.progress_Time = 0;
            if (ai_Graph.TOPSTATE.GetCurrentAnimatorStateInfo(0).IsName("Free"))
                ai_Graph.TOPSTATE.SetTrigger("Near");
        }
    }
}
