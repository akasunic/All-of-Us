using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CharacterStatsBarController : MonoBehaviour
{
    // public Slider for Unity editor
    public Slider slider;
    public Image fill;

    private Color32 lowColor = new Color32(240, 126, 127, 255);
    private Color32 medColor = new Color32(237, 165, 115, 255);
    private Color32 highColor = new Color32(62, 193, 138, 255);

    // Update is called once per frame
    public void setProgress(float p)
    {
        slider.value = p;
        if(p < 0.33){
          fill.color = lowColor;
        } else if (p < 0.66){
          fill.color = medColor;
        } else {
          fill.color = highColor;
        }
    }
}
