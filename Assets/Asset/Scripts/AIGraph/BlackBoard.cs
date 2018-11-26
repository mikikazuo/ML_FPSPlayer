using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BlackBoard
{
	//敵の情報
	public LastEnemyInfo enemy_Info;
	
	public struct LastEnemyInfo
	{
        //敵の情報更新からの経過時間
        public float progress_Time;
        //注意を向ける方向
        public Vector3 attention_Pos;
    }
	//隠れる位置
	public Vector3 hidePoint;
	//攻撃位置
	public Vector3 attackPoint;

}
