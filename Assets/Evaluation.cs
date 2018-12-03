using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

public class Evaluation : MonoBehaviour
{
	[SerializeField] private MazeAcademy academy;
	private GameObject[] agents;
	[SerializeField] private MazeAgent[] agent;

	private void Start()
	{
		agents = GameObject.FindGameObjectsWithTag("agent");
		agent = new MazeAgent[agents.Length];
		for(int i=0;i<agents.Length;i++){
			agent[i] = agents[i].GetComponent<MazeAgent>();
		}
	}


	// Update is called once per frame
	void Update () {
		//Debug.Log(academy.GetStepCount());
		

		int sumGoal = 0;
		int sumEpisode = 0;
		
		for(int i=0;i<agents.Length;i++){
			sumGoal += agent[i].GoaledCount;
			sumEpisode += agent[i].EpisodeCount;
		}
		Debug.Log(sumGoal + " / "+sumEpisode);
	}
}
