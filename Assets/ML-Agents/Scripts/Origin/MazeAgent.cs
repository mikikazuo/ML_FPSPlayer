using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;
using UnityStandardAssets.Utility;
using MLAgents;
using System;
using System.Linq;
using Random = UnityEngine.Random;
using System.Collections;
using System.IO;


namespace UnityStandardAssets.Characters.FirstPerson
{
    public class MazeAgent : Agent
    {
        public ResetPosition resetPosition;

        private RayPerception rayPer;
        public bool useVectorObs;

        //コントロール関係
        [SerializeField] private bool m_IsWalking;
        [SerializeField] private float m_WalkSpeed;
        [SerializeField] private float m_RunSpeed;
        [SerializeField] [Range(0f, 1f)] private float m_RunstepLenghten;
        [SerializeField] private float m_JumpSpeed;
        [SerializeField] private float m_StickToGroundForce;
        [SerializeField] private float m_GravityMultiplier;
        [SerializeField] private MouseLook m_MouseLook;
        [SerializeField] private bool m_UseFovKick;
        [SerializeField] private FOVKick m_FovKick = new FOVKick();
        [SerializeField] private bool m_UseHeadBob;
        [SerializeField] private CurveControlledBob m_HeadBob = new CurveControlledBob();
        [SerializeField] private LerpControlledBob m_JumpBob = new LerpControlledBob();
        [SerializeField] private float m_StepInterval;

        [SerializeField]
        private AudioClip[] m_FootstepSounds; // an array of footstep sounds that will be randomly selected from.

        [SerializeField] private AudioClip m_JumpSound; // the sound played when character leaves the ground.
        [SerializeField] private AudioClip m_LandSound; // the sound played when character touches back on ground.

        private Camera m_Camera;
        private bool m_Jump;
        private float m_YRotation;
        private Vector2 m_Input;
        private Vector3 m_MoveDir = Vector3.zero;
        private CharacterController m_CharacterController;
        private CollisionFlags m_CollisionFlags;
        private bool m_PreviouslyGrounded;
        private Vector3 m_OriginalCameraPosition;
        private float m_StepCycle;
        private float m_NextStep;
        private bool m_Jumping;
        private AudioSource m_AudioSource;

        private bool enter = false;

        private MazeAcademy academy;


        private GunActionML gunAction;

        [SerializeField] protected int maxHp = 100;
        protected int hp;

        public int Hp
        {
            get { return hp; }
            set { hp = value < 0 ? hp = 0 : value; }
        }

        public int MaxHp
        {
            get { return maxHp; }
        }

        public Evaluation evaluator;

        //初期化   
        public override void InitializeAgent()
        {
            base.InitializeAgent();
            rayPer = GetComponent<RayPerception>();

            m_CharacterController = GetComponent<CharacterController>();
            academy = GameObject.Find("MazeAcademy").GetComponent<MazeAcademy>();
        }

        //リストの中身を表示
        public string ShowListContentsInTheDebugLog<T>(List<T> list)
        {
            string log = "";

            foreach (var content in list.Select((val, idx) => new {val, idx}))
            {
                if (content.idx == list.Count - 1)
                    log += content.val.ToString();
                else
                    log += content.val.ToString() + ", ";
            }

            //Debug.Log(log);
            return log;
        }

        [SerializeField] private bool samplingAct = false;
        private int actNum = -1;

        private void Update()
        {
            //for(int i=0;i<csvActionDatas[1].Length;i++)
            //    Debug.Log(csvActionDatas[1][i]);

            if (samplingAct)
            {
                if (actNum != -1)
                {
                    Debug.Log("label  :"+label);
                    float[] act = {float.Parse(csvActionDatas[label,actNum])};

                    MoveAgent(act);
                    g_frame++;
                    updateActMum();
                }
            }
        }


        private void updateActMum()
        {
            if (g_frame % 4 == 0)
                actNum++;
            if (actNum >= csvActionDatas.GetLength(1))
                actNum = -1;
        }

        void Awake()
        {
            if (base.printExcel)
            {
                StreamWriter sw;
                FileInfo fi;
                fi = new FileInfo(Application.dataPath + "/sampling.csv");
                sw = fi.AppendText();

                string[] detectableObjects = {"wall", "agent", "ground", "no_hit", "distance"};
                float[] rayAngles0 = {20f, 90f, 160f, 45f, 135f, 70f, 110f};
                float[] rayAngles1 = {25f, 95f, 165f, 50f, 140f, 75f, 115f};
                float[] rayAngles2 = {15f, 85f, 155f, 40f, 130f, 65f, 105f};

                float[,] rayAngles =
                {
                    {20f, 90f, 160f, 45f, 135f, 70f, 110f},
                    {25f, 95f, 165f, 50f, 140f, 75f, 115f},
                    {15f, 85f, 155f, 40f, 130f, 65f, 105f}
                };

                List<string> stringList = new List<string>();
                for (int i = 0; i < 3; i++)
                for (int j = 0; j < rayAngles0.Length; j++)
                for (int k = 0; k < detectableObjects.Length; k++)
                    stringList.Add(rayAngles[i, j].ToString() + "/" + detectableObjects[k]);

                string[] s1 =
                {
                    ShowListContentsInTheDebugLog(stringList),
                    "vel_x",
                    "vel_y",
                    "vel_z",
                    "action"
                };


                string s2 = string.Join(",", s1);
                sw.WriteLine(s2);
                sw.Flush();
                sw.Close();
            }
        }

        private int g_frame = 0;
        private int label = 0;


        //状態を伝える
        public override void CollectObservations()
        {
            if (useVectorObs)
            {
                const float rayDistance = 40f;
                float[] rayAngles0 = {20f, 90f, 160f, 45f, 135f, 70f, 110f};
                float[] rayAngles1 = {25f, 95f, 165f, 50f, 140f, 75f, 115f};
                float[] rayAngles2 = {15f, 85f, 155f, 40f, 130f, 65f, 105f};

                string[] detectableObjects = {"wall", "agent", "ground"};


                List<float> rayList =
                    new List<float>(rayPer.Perceive(rayDistance, rayAngles0, detectableObjects, 1.6f, 0f));
                List<float> rayList1 =
                    new List<float>(rayPer.Perceive(rayDistance, rayAngles1, detectableObjects, 1.6f, -2f));
                List<float> rayList2 =
                    new List<float>(rayPer.Perceive(rayDistance, rayAngles2, detectableObjects, 1.6f, -5f));


                AddVectorObs(rayList);
                AddVectorObs(rayList1);
                AddVectorObs(rayList2);
                AddVectorObs(transform.InverseTransformDirection(m_CharacterController.velocity));

                if (samplingAct && actNum == -1)
                {
                    int savelabel = 0;

                    List<float> rayListSet = new List<float>();
                    rayListSet.AddRange(rayList);
                    rayListSet.AddRange(rayList1);
                    rayListSet.AddRange(rayList2);
                    rayListSet.Add(transform.InverseTransformDirection(m_CharacterController.velocity).x);
                    rayListSet.Add(transform.InverseTransformDirection(m_CharacterController.velocity).y);
                    rayListSet.Add(transform.InverseTransformDirection(m_CharacterController.velocity).z);


                    float? min = null;

                    for (int i = 0; i < csvDatas.Count - 1; i++)
                    {
                        float sum = 0;
                        for (int j = 0; j < csvDatas[1].Length; j++)
                        {
                            sum += Mathf.Pow(rayListSet[j] - float.Parse(csvDatas[i + 1][j]), 2);
                        }

                        if (min == null || min > sum)
                        {
                            min = sum;
                            savelabel = i;
                        }
                    }

                    label = savelabel;
                    actNum = 0;
                }

                if (base.printExcel)
                {
                    StreamWriter sw;
                    FileInfo fi;
                    fi = new FileInfo(Application.dataPath + "/sampling.csv");
                    sw = fi.AppendText();

                    string[] s1 =
                    {
                        ShowListContentsInTheDebugLog(rayList),
                        ShowListContentsInTheDebugLog(rayList1),
                        ShowListContentsInTheDebugLog(rayList2),
                        m_CharacterController.velocity.x.ToString(),
                        m_CharacterController.velocity.y.ToString(),
                        m_CharacterController.velocity.z.ToString(),
                    };


                    string s2 = string.Join(",", s1);
                    sw.Write(s2);
                    sw.Flush();
                    sw.Close();
                }
            }
        }

        private int count;

        public void MoveAgent(float[] act)
        {
            var dirToGo = Vector3.zero;
            var rotateDir = Vector3.zero;


            if (brain.brainParameters.vectorActionSpaceType == SpaceType.continuous)
            {
                dirToGo = transform.forward * Mathf.Clamp(act[0], -1f, 1f);
                rotateDir = transform.up * Mathf.Clamp(act[1], -1f, 1f);
            }
            else
            {
                var action = Mathf.FloorToInt(act[0]);


                switch (action)
                {
                    case 1:
                        dirToGo = transform.forward * 1f;
                        break;
                    case 2:
                        dirToGo = transform.forward * -1f;
                        break;
                    case 3:
                        rotateDir = transform.up * 1f;
                        break;
                    case 4:
                        rotateDir = transform.up * -1f;
                        break;
                    case 5:
                        if (count % 5 == 0)
                            gunAction.triggerGun();
                        count++;
                        break;
                }
            }

            transform.Rotate(rotateDir, Time.deltaTime * 200f);
            m_CharacterController.Move(dirToGo * Time.deltaTime * 4);
        }

        public override void AgentAction(float[] vectorAction, string textAction)
        {
            AddReward(-1f / agentParameters.maxStep);
            MoveAgent(vectorAction);
        }

        public override void AgentReset()
        {
            /*
            resetPosition.CleanGoal();
            resetPosition.PlaceObject(gameObject, items[0]);

                    
            for (int i = 0; i < (int) academy.resetParameters["GoalNum"]; i++)
                resetPosition.CreateGoal(items[i + 1]);
                    */
            var enumerable = Enumerable.Range(0, 9).OrderBy(x => Guid.NewGuid()).Take(9);
            var items = enumerable.ToArray();

            resetPosition.PlaceObject(gameObject, items[0]);
            resetPosition.PlaceObject(resetPosition.enemy.gameObject, items[1]);
            resetPosition.enemy.Hp = resetPosition.enemy.MaxHp;


            transform.rotation = Quaternion.Euler(new Vector3(0f, Random.Range(0, 360)));
            Hp = MaxHp;
            enter = false;
            if (evaluator)
                evaluator.sumEpisode++;
        }


        public override void AgentOnDone()
        {
        }

        //以下　プレイヤーコントロールに関して
        TextAsset csvFile; // CSVファイル
        List<string[]> csvDatas = new List<string[]>(); // CSVの中身を入れるリスト;

        //List<string[]> csvActionDatas = new List<string[]>(); // CSVの中身を入れるリスト;
        string[,] csvActionDatas = new string[200, 5];
        // Use this for initialization
        private void Start()
        {
            m_CharacterController = GetComponent<CharacterController>();
            m_Camera = Camera.main;
            m_OriginalCameraPosition = m_Camera.transform.localPosition;
            m_FovKick.Setup(m_Camera);
            m_HeadBob.Setup(m_Camera, m_StepInterval);
            m_StepCycle = 0f;
            m_NextStep = m_StepCycle / 2f;
            m_Jumping = false;
            m_AudioSource = GetComponent<AudioSource>();
            m_MouseLook.Init(transform, m_Camera.transform);
            gunAction = GetComponent<GunActionML>();

            if (samplingAct)
            {
                csvFile = Resources.Load("center") as TextAsset; // Resouces下のCSV読み込み
                StringReader reader = new StringReader(csvFile.text);

                // , で分割しつつ一行ずつ読み込み
                // リストに追加していく
                while (reader.Peek() != -1) // reader.Peaekが-1になるまで
                {
                    string line = reader.ReadLine(); // 一行ずつ読み込み
                    csvDatas.Add(line.Split(',')); // , 区切りでリストに追加
                }

                csvFile = Resources.Load("actionList") as TextAsset; // Resouces下のCSV読み込み
                StringReader reader2 = new StringReader(csvFile.text);

                int k = -1;
                // , で分割しつつ一行ずつ読み込み
                // リストに追加していく
                while (reader2.Peek() != -1) // reader.Peaekが-1になるまで
                {
                    string line = reader2.ReadLine(); // 一行ずつ読み込み
                    if (k != -1)
                    {
                        string[] fields = line.Split(',');
                        for(int i=1;i<fields.Length;i++)
                             csvActionDatas[int.Parse(fields[0]),i-1] = fields[i];
                    }

                    k++;
                }
                for(int i=0;i<csvActionDatas.GetLength(0);i++)
                    Debug.Log(csvActionDatas[i,0]+" "+csvActionDatas[i,1]+" "+csvActionDatas[i,2]+" "+csvActionDatas[i,3]+" "+csvActionDatas[i,4]);
            }


            evaluator = GameObject.Find("Evaluation")?.GetComponent<Evaluation>();
        }

        private void FixedUpdate()
        {
            float speed;
            GetInput(out speed);
            // always move along the camera forward as it is the direction that it being aimed at
            Vector3 desiredMove = transform.forward * m_Input.y + transform.right * m_Input.x;

            // get a normal for the surface that is being touched to move along it
            RaycastHit hitInfo;
            Physics.SphereCast(transform.position, m_CharacterController.radius, Vector3.down, out hitInfo,
                m_CharacterController.height / 2f, Physics.AllLayers, QueryTriggerInteraction.Ignore);
            desiredMove = Vector3.ProjectOnPlane(desiredMove, hitInfo.normal).normalized;

            m_MoveDir.x = desiredMove.x * speed;
            m_MoveDir.z = desiredMove.z * speed;


            if (m_CharacterController.isGrounded)
            {
                m_MoveDir.y = -m_StickToGroundForce;

                if (m_Jump)
                {
                    m_MoveDir.y = m_JumpSpeed;
                    //PlayJumpSound();
                    m_Jump = false;
                    m_Jumping = true;
                }
            }
            else
            {
                m_MoveDir += Physics.gravity * m_GravityMultiplier * Time.fixedDeltaTime;
            }
            //m_CollisionFlags = m_CharacterController.Move(m_MoveDir * Time.fixedDeltaTime);

            ProgressStepCycle(speed);
            //UpdateCameraPosition(speed);

            //m_MouseLook.UpdateCursorLock();
        }


        private void UpdateCameraPosition(float speed)
        {
            Vector3 newCameraPosition;
            if (!m_UseHeadBob)
            {
                return;
            }

            if (m_CharacterController.velocity.magnitude > 0 && m_CharacterController.isGrounded)
            {
                m_Camera.transform.localPosition =
                    m_HeadBob.DoHeadBob(m_CharacterController.velocity.magnitude +
                                        (speed * (m_IsWalking ? 1f : m_RunstepLenghten)));
                newCameraPosition = m_Camera.transform.localPosition;
                newCameraPosition.y = m_Camera.transform.localPosition.y - m_JumpBob.Offset();
            }
            else
            {
                newCameraPosition = m_Camera.transform.localPosition;
                newCameraPosition.y = m_OriginalCameraPosition.y - m_JumpBob.Offset();
            }

            m_Camera.transform.localPosition = newCameraPosition;
        }

        private void ProgressStepCycle(float speed)
        {
            if (m_CharacterController.velocity.sqrMagnitude > 0 && (m_Input.x != 0 || m_Input.y != 0))
            {
                m_StepCycle += (m_CharacterController.velocity.magnitude +
                                (speed * (m_IsWalking ? 1f : m_RunstepLenghten))) *
                               Time.fixedDeltaTime;
            }

            if (!(m_StepCycle > m_NextStep))
            {
                return;
            }

            m_NextStep = m_StepCycle + m_StepInterval;

            //PlayFootStepAudio();
        }

        private void PlayFootStepAudio()
        {
            if (!m_CharacterController.isGrounded)
            {
                return;
            }

            // pick & play a random footstep sound from the array,
            // excluding sound at index 0
            int n = Random.Range(1, m_FootstepSounds.Length);
            m_AudioSource.clip = m_FootstepSounds[n];
            m_AudioSource.PlayOneShot(m_AudioSource.clip);
            // move picked sound to index 0 so it's not picked next time
            m_FootstepSounds[n] = m_FootstepSounds[0];
            m_FootstepSounds[0] = m_AudioSource.clip;
        }


        private void GetInput(out float speed)
        {
            // Read input
            float horizontal = CrossPlatformInputManager.GetAxis("Horizontal");
            float vertical = CrossPlatformInputManager.GetAxis("Vertical");

            bool waswalking = m_IsWalking;

#if !MOBILE_INPUT
            // On standalone builds, walk/run speed is modified by a key press.
            // keep track of whether or not the character is walking or running
            m_IsWalking = !Input.GetKey(KeyCode.LeftShift);
#endif
            // set the desired speed to be walking or running
            speed = m_IsWalking ? m_WalkSpeed : m_RunSpeed;
            m_Input = new Vector2(horizontal, vertical);

            // normalize input if it exceeds 1 in combined length:
            if (m_Input.sqrMagnitude > 1)
            {
                m_Input.Normalize();
            }

            // handle speed change to give an fov kick
            // only if the player is going to a run, is running and the fovkick is to be used
            if (m_IsWalking != waswalking && m_UseFovKick && m_CharacterController.velocity.sqrMagnitude > 0)
            {
                StopAllCoroutines();
                StartCoroutine(!m_IsWalking ? m_FovKick.FOVKickUp() : m_FovKick.FOVKickDown());
            }
        }

        private void RotateView()
        {
            m_MouseLook.LookRotation(transform, m_Camera.transform);
        }

//        void OnTriggerEnter(Collider other) {
//
//            if (other.CompareTag("agent"))
//            {
//                HumanBase human = other.GetComponent<HumanBase>();
//                if (human)
//                {
//                    human.Hp = 0;
//            
//                }
//            }
//        }
        /*
        void OnControllerColliderHit(ControllerColliderHit hit)
        {
            if (!enter && hit.gameObject.CompareTag("Enemy"))
            {
                enter = true;
                SetReward(2f);
                Done();
                goaledCount++;
            }
        }
        */
    }
}