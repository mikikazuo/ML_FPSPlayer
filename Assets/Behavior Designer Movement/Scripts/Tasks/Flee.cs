using UnityEngine;

namespace BehaviorDesigner.Runtime.Tasks.Movement
{
    [TaskDescription("Flee from the target specified using the Unity NavMesh.")]
    [TaskCategory("Movement")]
    [HelpURL("https://www.opsive.com/support/documentation/behavior-designer-movement-pack/")]
    [TaskIcon("Assets/Behavior Designer Movement/Editor/Icons/{SkinColor}FleeIcon.png")]
    public class Flee : NavMeshMovement
    {
        public SharedGameObject target;
        [Tooltip("The agent has fleed when the magnitude is greater than this value")]
        public SharedFloat fleedDistance = 20;
        [Tooltip("The distance to look ahead when fleeing")]
        public SharedFloat lookAheadDistance = 5;

        [Tooltip("The LayerMask of the objects to ignore when performing the line of sight check")]
        public LayerMask ignoreLayerMask = 1 << LayerMask.NameToLayer("Ignore Raycast");

        private Vector3 ini_pos;
        private bool hasMoved;

        public override void OnStart()
        {
            base.OnStart();

            hasMoved = false;
            ini_pos = transform.position;
            SetDestination(Target());
        }

        // Flee from the target. Return success once the agent has fleed the target by moving far enough away from it
        // Return running if the agent is still fleeing
        public override TaskStatus OnUpdate()
        {
            /*
            if (Vector3.Magnitude(transform.position - target.Value.transform.position) > fleedDistance.Value)
            {
                return TaskStatus.Success;
            }
            */
            if (Vector3.Magnitude(target.Value.transform.position - transform.position) > fleedDistance.Value)
            {
                return TaskStatus.Success;
            }

            if (HasArrived())
            {
                if (!hasMoved)
                {
                    return TaskStatus.Failure;
                }
                if (!SetDestination(Target()))
                {
                    return TaskStatus.Failure;
                }
                hasMoved = false;
            }
            else
            {
                // If the agent is stuck the task shouldn't continue to return a status of running.
                var velocityMagnitude = Velocity().sqrMagnitude;
                if (hasMoved && velocityMagnitude <= 0f)
                {
        
                    return TaskStatus.Failure;
                }
                hasMoved = velocityMagnitude > 0f;
            }

            return TaskStatus.Running;
        }

        // Flee in the opposite direction
        private Vector3 Target()
        {
            Vector3 vec = (  transform.position - target.Value.transform.position  ).normalized * lookAheadDistance.Value;

            
            Vector3 lineCast_yOffset = new Vector3(0, -0.5f, 0);
            RaycastHit hit;
            int left_or_righ = 1;
            for (float i = 0; i <90; i++)
            {
                for (int j = 0; j < 2; j++)
                {
                    var target = Quaternion.Euler(0f, Random.Range(0, 60) * left_or_righ, 0f) * vec ;

                    if (!Physics.Linecast(transform.TransformPoint(lineCast_yOffset), target+ transform.position - lineCast_yOffset, out hit,
                            ~ignoreLayerMask, QueryTriggerInteraction.Ignore))
                    {
                        vec = target;
                        return vec + transform.position;
                    }
                    left_or_righ *= -1;
                }
            }

            for (float i = 0; i < 90; i++)
            {
                for (int j = 0; j < 2; j++)
                {
                    var target = Quaternion.Euler(0f, Random.Range(90,150 ) * left_or_righ, 0f) * vec * 3;

                    if (!Physics.Linecast(transform.TransformPoint(lineCast_yOffset), target + transform.position - lineCast_yOffset, out hit,
                            ~ignoreLayerMask, QueryTriggerInteraction.Ignore))
                    {
                        vec = target;
                        return vec + transform.position;
                    }
                    left_or_righ *= -1;
                }
            }

            return Vector3.zero;
        }



        // Return false if the position isn't valid on the NavMesh.
        protected override bool SetDestination(Vector3 destination)
        {
            if (!SamplePosition(destination))
            {
                return false;
            }
            return base.SetDestination(destination);
        }

        // Reset the public variables
        public override void OnReset()
        {
            base.OnReset();

            fleedDistance = 20;
            lookAheadDistance = 5;
            target = null;
        }
    }
}