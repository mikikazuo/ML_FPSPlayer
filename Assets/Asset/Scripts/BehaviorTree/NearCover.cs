using UnityEngine;
using BehaviorDesigner.Runtime;
using BehaviorDesigner.Runtime.Tasks;

namespace BehaviorDesigner.Runtime.Tasks.Movement
{
    public class NearCover : NavMeshMovement
    {
        private ControlAIGraph ai_Graph;

        [Tooltip("The agent is done rotating to the cover point when the square magnitude is less than this value")]
        public SharedFloat rotationEpsilon = 0.5f;
        [Tooltip("Max rotation delta if lookAtCoverPoint")]
        public SharedFloat maxLookAtRotationDelta;
        [Tooltip("The LayerMask of the objects to ignore when performing the line of sight check")]
        public LayerMask ignoreLayerMask = 1 << LayerMask.NameToLayer("Ignore Raycast");

        private float time;
        public override void OnAwake()
        {
            base.OnAwake();
            ai_Graph = transform.parent.GetComponent<ControlAIGraph>();
        }
        // Use this for initialization
        public override void OnStart()
        {
            base.OnStart();
            /*
            RaycastHit hit;
            for (float i = 0; i < 2 * Mathf.PI; i += 0.10f)
                for (int j = 1; j < 10; j++)
                    if (Physics.Linecast(transform.TransformPoint(-j * new Vector3( Mathf.Cos(i), 0, Mathf.Sin(i))),
                 ai_Graph.BOARD.enemy_Info.attention_Pos, out hit,
                 ~ignoreLayerMask, QueryTriggerInteraction.Ignore))
                    {
                        Debug.Log(transform.TransformPoint(-j * new Vector3(Mathf.Cos(i), 0, Mathf.Sin(i))));
                        SetDestination(transform.TransformPoint(-j * new Vector3( Mathf.Cos(i), 0, Mathf.Sin(i))));
                        return;
                    }
                    */
            
            SetDestination(ai_Graph.BOARD.hidePoint);
        }


        // Update is called once per frame
        public override TaskStatus OnUpdate()
        {


            /*
			var rotation = Quaternion.LookRotation(ai_Graph.BOARD.enemy_Info.attention_Pos- ai_Graph.BODY.transform.position);
			// Return success if the agent isn't going to look at the cover point or it has completely rotated to look at the cover point
			if (Quaternion.Angle(ai_Graph.BODY.transform.rotation, rotation) < rotationEpsilon.Value)
			{
				if (HasArrived())
					return TaskStatus.Success;
			}
			else
			{
				// Still needs to rotate towards the target
				ai_Graph.BODY.transform.rotation = Quaternion.RotateTowards( ai_Graph.BODY.transform.rotation, rotation, maxLookAtRotationDelta.Value);
			}
            */
            RaycastHit hit;
            if (Physics.Linecast(transform.position,
                          ai_Graph.BOARD.enemy_Info.attention_Pos, out hit,
                          ~ignoreLayerMask, QueryTriggerInteraction.Ignore))
            {
                return TaskStatus.Success;
            }
            if (!Physics.Linecast(ai_Graph.BOARD.hidePoint,
                          ai_Graph.BOARD.enemy_Info.attention_Pos, out hit,
                          ~ignoreLayerMask, QueryTriggerInteraction.Ignore))
            {
                ai_Graph.GetComponent<Animator>().SetTrigger("Leave");
            }

            if (HasArrived()|| Vector3.Distance(transform.position, ai_Graph.BOARD.attackPoint)>15)
                return TaskStatus.Success;

            return TaskStatus.Running;
        }
    }
}