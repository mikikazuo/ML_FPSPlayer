using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class MoveTest : MonoBehaviour
{
    public Transform goal;
    public float rayStep = 5;
    float step = 0;

    float distance = 100; // 飛ばす&表示するRayの長さ
    float duration = 10; // 表示期間（秒）
    private NavMeshAgent nav;

    void Start()
    {
     
    }

    void Update()
    {
        /*
        var direction = transform.forward;
        var ray = new Ray(transform.position, direction);
        Debug.DrawRay (ray.origin, direction*1000, Color.red, duration, false);
        for (int i = 0; i < 100; i++)
        {

            RaycastHit hit;
            //Debug.DrawRay (ray.origin, ray.direction * distance, Color.red, duration, false);

            Physics.Raycast(ray, out hit, 1000);
            Debug.Log(hit.transform);
            step += rayStep;
            direction = Quaternion.Euler(0, transform.eulerAngles.y + step, 0) * Vector3.forward;
        }
        */
    }
    private void OnCollisionEnter(Collision collision)
    {

    }
}