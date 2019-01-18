using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;
using System;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Random = UnityEngine.Random;

public class ResetPosition : MonoBehaviour
{
    public GameObject goal;

    public GameObject[] spawnAreas;

    //[SerializeField] private MazeAgent[] agent;
    [SerializeField] private MazeAgent agent;
    public HumanBase enemy;

    private int[] items;

    void Awake()
    {
        var enumerable = Enumerable.Range(0, 9).OrderBy(x => Guid.NewGuid()).Take(9);
        items = enumerable.ToArray();
        //agent = GetComponentsInChildren<MazeAgent>();

        agent = GetComponentInChildren<MazeAgent>();
        enemy = GetComponentInChildren<HumanBase>();
        PlaceObject(agent.gameObject, items[0]);
        PlaceObject(enemy.gameObject, items[1]);
       
    }


    public void CreateGoal(int spawnAreaIndex)
    {
        CreateObject(goal, spawnAreaIndex);
    }

    private void CreateObject(GameObject desiredObject, int spawnAreaIndex)
    {
        var newObject = Instantiate(desiredObject, Vector3.zero,
            Quaternion.Euler(0f, 0f, 0f), transform);
        PlaceObject(newObject, spawnAreaIndex);
    }

    public void PlaceObject(GameObject objectToPlace, int spawnAreaIndex)
    {
        var spawnTransform = spawnAreas[spawnAreaIndex].transform;
        var xRange = spawnTransform.localScale.x / 2.1f;
        var zRange = spawnTransform.localScale.z / 2.1f;

        objectToPlace.transform.position = new Vector3(Random.Range(-xRange, xRange), 0, Random.Range(-zRange, zRange))
                                           + spawnTransform.position;
    }


    private void Update()
    {
        /*
        for (int i = 0; i < agent.Length; i++)
        {
            if (agent[i].Hp == 0)
            {
                var enumerable = Enumerable.Range(0, 9).OrderBy(x => Guid.NewGuid()).Take(9);
                items = enumerable.ToArray();
                for (int j = 0; j < agent.Length; j++)
                {
                    PlaceObject(agent[j].gameObject, items[j]);
                    agent[j].Done();
                }
                break;
            }
        }*/

        if (enemy.Hp == 0)
        {
//            var enumerable = Enumerable.Range(0, 9).OrderBy(x => Guid.NewGuid()).Take(9);
//            items = enumerable.ToArray();
//
//            PlaceObject(agent.gameObject, items[0]);
//            PlaceObject(enemy.gameObject, items[1]);
//            enemy.Hp = enemy.MaxHp;
            //agent.Done();
        }
    }

    public void addReward(MazeAgent damaged, MazeAgent attacker)
    {
        /*
        for (int i = 0; i < agent.Length; i++)
        {
            //if (agent[i] == damaged)
            //    agent[i].AddReward(-0.2f);
            if (agent[i] == attacker)
                agent[i].AddReward(0.1f);
        }*/
    }


    public void CleanGoal()
    {
        foreach (Transform child in transform)
            if (child.CompareTag("Enemy"))
            {
                Destroy(child.gameObject);
            }
    }
}