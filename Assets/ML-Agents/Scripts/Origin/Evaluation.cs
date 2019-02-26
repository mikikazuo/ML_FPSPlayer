using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;
public class Evaluation : MonoBehaviour
{

	private GameObject[] agents;
	[SerializeField] private MazeAgent[] agent;
	public int sumGoal = 0;
	public  int sumEpisode = -1; //最初に一回呼ばれるためー１
	private int pastEpisode=0;
	private void Start()
	{
		agents = GameObject.FindGameObjectsWithTag("Player");
		agent = new MazeAgent[agents.Length];
		for(int i=0;i<agents.Length;i++){
			agent[i] = agents[i].GetComponent<MazeAgent>();
		}
	}
	// Update is called once per frame
	void Update () {
		//Debug.Log(academy.GetStepCount());

		if (sumEpisode > pastEpisode )
		{
			pastEpisode++;
			Debug.Log(sumGoal + " / " + sumEpisode + " | " + (float) sumGoal / sumEpisode *100+ "%");
		}
	}
}