using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ResetPosition : MonoBehaviour
{
    public GameObject goal;
    public GameObject[] spawnAreas;


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

        objectToPlace.transform.position =  spawnTransform.position;
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