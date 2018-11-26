using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace BehaviorDesigner.Runtime.Tasks.Movement
{
    public class NearSearch : NavMeshMovement
    {
        private ControlAIGraph ai_Graph;

        public override void OnAwake()
        {
            base.OnAwake();
            ai_Graph = transform.parent.GetComponent<ControlAIGraph>();

        }
        public override void OnStart()
        {
            base.OnStart();
            SetDestination(ai_Graph.BOARD.enemy_Info.attention_Pos);

        }
        public override TaskStatus OnUpdate()
        {

            if (HasArrived())
            {
                ai_Graph.GetComponent<Animator>().SetTrigger("Search");
                return TaskStatus.Success;
            }

            return TaskStatus.Running;
        }

    }
}