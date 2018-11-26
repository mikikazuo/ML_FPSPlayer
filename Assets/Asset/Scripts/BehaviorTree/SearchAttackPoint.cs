using UnityEngine;
using BehaviorDesigner.Runtime;
using BehaviorDesigner.Runtime.Tasks;

namespace BehaviorDesigner.Runtime.Tasks.Movement
{
    public class SearchAttackPoint : NavMeshMovement
    {
        [SerializeField, Tooltip("最後に敵を確認した時点から有効な時間")]
        private float validEnemyInfoTime = 20;

        //敵がいた位置への目視に関して
        [Tooltip("The LayerMask of the objects to ignore when performing the line of sight check")]
        public LayerMask ignoreLayerMask = 1 << LayerMask.NameToLayer("Ignore Raycast");

        [Tooltip("The agent is done rotating to the cover point when the square magnitude is less than this value")]
        public SharedFloat rotationEpsilon = 0.5f;

        [Tooltip("Max rotation delta if lookAtCoverPoint")]
        public SharedFloat maxLookAtRotationDelta;

        private ControlAIGraph ai_Graph;

        private bool findPoint;

        private int count;

        [SerializeField]
        private float stayTime;

        private float time;
        public override void OnAwake()
        {
            base.OnAwake();
            ai_Graph = transform.parent.GetComponent<ControlAIGraph>();
        }

        public override void OnStart()
        {
            findPoint = false;
            count = 0;
            base.OnStart();
            SetDestination(ai_Graph.BOARD.enemy_Info.attention_Pos);

        }

        public override TaskStatus OnUpdate()
        {
            RaycastHit hit;
            //            if (!findPoint)
            //            {
            //                for (float i = 0; i < 2 * Mathf.PI; i += 0.10f)
            //                {
            //                    Vector3 direction = 0.1f*new Vector3(Mathf.Cos(i), 0, Mathf.Sin(i));
            //                    var ray = new Ray(transform.position, direction);
            //                    Debug.DrawRay(ray.origin, 0.1f*ray.direction, Color.red, 20, false);
            //                    if (!Physics.Linecast(transform.TransformPoint(0.1f*new Vector3(Mathf.Cos(i), 0, Mathf.Sin(i))),
            //                        ai_Graph.BOARD.enemy_Info.last_Enemy_Pos, out hit,
            //                        ~ignoreLayerMask, QueryTriggerInteraction.Ignore))
            //                    {
            //                        SetDestination(transform.TransformPoint(0.1f*new Vector3(Mathf.Cos(i), 0, Mathf.Sin(i))));
            //                        findPoint = true;
            //                        break;
            //                    }
            //                    else
            //                    {
            //                        Debug.Log(hit.collider.gameObject);
            //                    }
            //                }
            //            }


            if (!Physics.Linecast(transform.position,
                ai_Graph.BOARD.enemy_Info.attention_Pos, out hit,
                ~ignoreLayerMask, QueryTriggerInteraction.Ignore))
            {
                /*
                var rotation = Quaternion.LookRotation(ai_Graph.BOARD.enemy_Info.last_Enemy_Pos - ai_Graph.BODY.transform.position);
                // Return success if the agent isn't going to look at the cover point or it has completely rotated to look at the cover point
                if (Quaternion.Angle(ai_Graph.BODY.transform.rotation, rotation) < rotationEpsilon.Value)
                {
                    ai_Graph.BOARD.attackPoint = ai_Graph.BODY.transform.position;
                    return TaskStatus.Success;
                }
                else
                {
                    // Still needs to rotate towards the target
                    ai_Graph.BODY.transform.rotation = Quaternion.RotateTowards( ai_Graph.BODY.transform.rotation, rotation, maxLookAtRotationDelta.Value);
                }
                */

                ai_Graph.BOARD.attackPoint = ai_Graph.BODY.transform.position;
                Stop();
                time += Time.deltaTime;
                if (time >= stayTime)
                {
                    time = 0;
                    return TaskStatus.Success;
                }
            }
            else
            {
                if (HasArrived())
                    findPoint = false;
            }

            return TaskStatus.Running;
        }
    }
}