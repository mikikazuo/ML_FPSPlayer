using UnityEngine;
using BehaviorDesigner.Runtime;
using BehaviorDesigner.Runtime.Tasks;

namespace BehaviorDesigner.Runtime.Tasks.Movement
{
    public class RotateToObj : Action
    {
        [Tooltip("The GameObject that the task operates on. If null the task GameObject is used.")]
        public SharedGameObject targetTransform;

        [Tooltip("The agent is done rotating to the cover point when the square magnitude is less than this value")]
        public SharedFloat rotationEpsilon = 0.5f;

        [Tooltip("Max rotation delta if lookAtCoverPoint")]
        public SharedFloat maxLookAtRotationDelta;

        private ControlAIGraph ai_Graph;

        public override void OnAwake()
        {
            base.OnAwake();
            ai_Graph = transform.parent.GetComponent<ControlAIGraph>();
        }

        public override TaskStatus OnUpdate()
        {

            Vector3 offset_y_vec = targetTransform.Value.transform.position - ai_Graph.BODY.transform.position;
            offset_y_vec = new Vector3(offset_y_vec.x, ai_Graph.BODY.transform.position.y, offset_y_vec.z);
            var rotation = Quaternion.LookRotation(offset_y_vec);
            // Return success if the agent isn't going to look at the cover point or it has completely rotated to look at the cover point
            if (Quaternion.Angle(ai_Graph.BODY.transform.rotation, rotation) < rotationEpsilon.Value)
            {
                return TaskStatus.Success;
            }
            else
            {
                // Still needs to rotate towards the target
                ai_Graph.BODY.transform.rotation = Quaternion.RotateTowards(ai_Graph.BODY.transform.rotation, rotation,
                    maxLookAtRotationDelta.Value);
            }

            return TaskStatus.Running;
        }
    }
}