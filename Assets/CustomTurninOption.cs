using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CustomTurninOption : MonoBehaviour
{
    public GameObject optionContainer;
    public Text optionContainerText;
    public Sprite lightBlueButton;
    public Sprite highlightedGreenOption;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (optionContainerText.text == "Here’s what I have…") {
            optionContainer.GetComponent<Image>().sprite = lightBlueButton;
            // optionContainerText.transform.position.x = 20;
        }
        
    }

    void OnMouseOver() {
        if (optionContainerText.text == "Here’s what I have…") {
            optionContainer.GetComponent<Image>().sprite = lightBlueButton;
        } else {
            optionContainer.GetComponent<Image>().sprite = highlightedGreenOption;
        }
    }
}
