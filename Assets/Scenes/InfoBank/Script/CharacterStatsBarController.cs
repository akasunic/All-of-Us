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

    private const double lowBound = 0.33;
    private const double medBound = 0.66;

    // Update is called once per frame
    public void setProgress(float p)
    {
        slider.value = p;
        if(p < lowBound){
          fill.color = lowColor;
        } else if (p < medBound){
          fill.color = medColor;
        } else {
          fill.color = highColor;
        }
    }
}
