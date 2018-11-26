using UnityEngine;
using System.Collections;
using UnityEngine.UI; // ←※これを忘れずに入れる

public class HpBarCtrl : MonoBehaviour
{
    [SerializeField]
    private Slider _slider;
    [SerializeField]
    private HumanBase owner;
    [SerializeField]
    private Text textObj;
    [SerializeField]
    private string text;
    void Update()
    {
        // HPゲージに値を設定
        _slider.value = (float)owner.Hp/owner.MaxHp;
        if (_slider.value == 0&&textObj.text == "")
            textObj.text = text;
    }
}


