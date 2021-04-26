using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SliderBarController : MonoBehaviour
{
    // public Slider for Unity editor
    public Slider engagementSlider;
    public bool animate = false;
    public float seconds = 0.6f;
    private int lastValue;
    private int startLerpValue;
    private int endLerpValue;
    private float progress;
    private bool animating = false;
    private float timer = 0;
    private float percent;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {   
        int engagement = GameManager.Instance.GetEngagement();

        if(!animate){
            engagementSlider.value = engagement;
            return;
        }
        
        if(engagement != lastValue && !animating){
            animating = true;
            startLerpValue = lastValue;
            endLerpValue = engagement;
            lastValue = engagement;
            timer = 0;
        }
        if(animating){
            if (timer <= seconds) {
                timer += Time.deltaTime;
                percent = (float) EasingFunctionHelpers.easeIn(timer / seconds);
                float lerpEngagement = startLerpValue + (endLerpValue - startLerpValue) * percent;
                engagementSlider.value = lerpEngagement;

                if(timer > seconds){
                    animating = false;
                }
            }
            
        } else {
            
        }
        
        
    }
}
