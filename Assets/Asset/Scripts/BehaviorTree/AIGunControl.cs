using UnityEngine;
using BehaviorDesigner.Runtime;
using BehaviorDesigner.Runtime.Tasks;

namespace BehaviorDesigner.Runtime.Tasks.Movement
{
    public class AIGunControl : Action
    {
        private GunAction gun;
        private ControlAIGraph ai_Graph;
        [SerializeField]
        private GameObject target;

        public override void OnAwake()
        {
            ai_Graph = transform.parent.GetComponent<ControlAIGraph>();
            gun = ai_Graph.BODY.GetComponentInChildren<GunAction>();
        }

        public override TaskStatus OnUpdate()
        {
            ai_Graph.BODY.transform.LookAt(target.transform.TransformPoint(0,-0.5f,0));
                
            gun.triggerGun(true);
            return TaskStatus.Success;
        }
        public override void OnEnd()
        {
            gun.triggerGun(false);
        }
    }
}