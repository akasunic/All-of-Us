using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SliderBarController : MonoBehaviour
{
    // public Slider for Unity editor
    public Slider engagementSlider;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        int engagement = GameManager.Instance.GetEngagement();
        engagementSlider.value = engagement;
        
    }
}
