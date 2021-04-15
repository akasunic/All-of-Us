using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HintBubbleController : MonoBehaviour
{
    public GameObject hintBubble;
    public Text hintTitle;
    public Text hintContent;

    public void ActivateHintBubble(string title, string content)
    {
        hintBubble.SetActive(true);
        hintTitle.text = title;
        hintContent.text = content;
    }

    public void CloseHintBubble()
    {
        hintBubble.SetActive(false);
    }
}
