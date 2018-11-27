using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace BehaviorDesigner.Runtime.Tasks.Movement
{
    public class SearchAround : NavMeshMovement
    {
        private ControlAIGraph ai_Graph;
        private Vector3 ini_pos;
        float i = 0;
        public override void OnAwake()
        {
            base.OnAwake();
            ai_Graph = transform.parent.GetComponent<ControlAIGraph>();
            ini_pos = transform.position;
            i = 0;

        }
        public override void OnStart()
        {
            base.OnStart();

        }
        public override TaskStatus OnUpdate()
        {
  
            if (HasArrived())
            {

   
                return TaskStatus.Success;
            }

            return TaskStatus.Running;
        }

    }
}