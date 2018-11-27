using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace BehaviorDesigner.Runtime.Tasks.Movement
{
    public class RandamStart : Conditional
    {
        public float mintime = 5.0f;
        public float maxtime = 10.0f;

        public float minrange = 2.0f;
        public float maxrange = 5.0f;

        private float count;
        private float rand_time;
        private float range_time;

        public override void OnAwake()
        {
            count = 0;
            rand_time = Random.Range(mintime, maxtime);
            range_time = Random.Range(minrange, maxrange);
        }

        public override void OnStart()
        {
            base.OnStart();

        }
        // Returns success if an object was found otherwise failure
        public override TaskStatus OnUpdate()
        {
            count += Time.deltaTime;
            if (count > rand_time)
            {
                if(count > rand_time + range_time)
                {
                    count = 0;
                    rand_time = Random.Range(mintime, maxtime);
                    range_time = Random.Range(minrange, maxrange);
                    return TaskStatus.Failure;
                }
                return TaskStatus.Success;

            }
            return TaskStatus.Failure;
        }
    }
}
