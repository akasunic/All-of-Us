using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ResearchQuestion : MonoBehaviour
{

    public GameObject selectButton;
    public GameObject learningFirstOption;
    public GameObject capabilityFirstOption;


    // Start is called before the first frame update
    void Start()
    {
        if (true) { // TODO change to turnin scene
            selectButton.SetActive(true);
        }

        if (GlobalGameInfo.researchInt == 3) {
            learningFirstOption.GetComponent<Toggle>().isOn = true;
            capabilityFirstOption.GetComponent<Toggle>().isOn = true;
        }

    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
