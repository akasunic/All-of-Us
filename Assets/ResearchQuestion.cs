using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class ResearchQuestion : MonoBehaviour
{

    public GameObject selectButton;
    public Toggle learningFirstOption;
    public Toggle learningSecondOption;
    public Toggle learningThirdOption;
    public Toggle capabilityFirstOption;
    public Toggle capabilitySecondOption;
    public Toggle capabilityThirdOption;
    public ToggleGroup learningToggleGroup;
    public ToggleGroup capabilityToggleGroup;
    public Text journalItemText;

    // Start is called before the first frame update
    void Start()
    {
        if (GlobalGameInfo.researchVersion == 3) {
            // Disabling the toggles so users cannot change the toggles
            learningFirstOption.enabled = false;
            learningSecondOption.enabled = false;
            learningThirdOption.enabled = false;
            capabilityFirstOption.enabled = false;
            capabilitySecondOption.enabled = false;
            capabilityThirdOption.enabled = false;

            // Hard coded part just for the research version:
            // Setting the options according to a pre-defined selection
            learningFirstOption.GetComponent<Toggle>().isOn = true;
            capabilityFirstOption.GetComponent<Toggle>().isOn = true;
        }

        if (SceneManager.GetActiveScene().name == "Quest Turnin Testing") {
            if (GlobalGameInfo.researchVersion == 3 || GlobalGameInfo.researchVersion == 2 && GlobalGameInfo.allResearchQuestionsAnswered) {
                selectButton.SetActive(true);
            }
        }

    }

    // Update is called once per frame
    void Update()
    {
        
    }

}
