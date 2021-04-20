using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class HintBubbleManager
{
    private static GameObject hintBubbleObject = GameObject.FindGameObjectWithTag("HintBubble");
    private static HintBubbleController hintBubbleController = hintBubbleObject.GetComponent<HintBubbleController>();

    public static void ActivateHintBubble(string title, string content)
    {
        hintBubbleController.ActivateHintBubble(title, content);
    }

    public static void CloseHintBubble()
    {
        hintBubbleController.CloseHintBubble();
    }
}
