using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
public class ResearchVersionTurnin : MonoBehaviour
{

    public GameObject MrsLeeProfile;
    public GameObject MrsLeeImage;
    public GameObject MrsLeeQuestion;
    public GameObject MrsLeeInstructions;
    public GameObject UIContainer;
    public Button viewProfileButton;
    public Button continueButton;
    public TextMeshProUGUI ButtonText;
    public bool showingProfile;

    // Start is called before the first frame update
    void Start()
    {
        continueButton.gameObject.SetActive(false);
        if (GlobalGameInfo.researchVersion == 2) {
            MrsLeeInstructions.SetActive(true);
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (GlobalGameInfo.allResearchQuestionsAnswered) {
            continueButton.gameObject.SetActive(true);
        }
    }

    public void onViewProfileButtonClick() {
        if (!showingProfile) {
            MrsLeeImage.SetActive(false);
            MrsLeeQuestion.SetActive(false);
            MrsLeeProfile.SetActive(true);
            ButtonText.text = "Back To Solving";
            showingProfile = !showingProfile;

            UIContainer.SetActive(false);
            continueButton.gameObject.SetActive(false);
        } else {
            MrsLeeImage.SetActive(true);
            MrsLeeQuestion.SetActive(true);
            MrsLeeProfile.SetActive(false);
            ButtonText.text = "View Mrs. Lee's Profile";
            showingProfile = !showingProfile;
            
            UIContainer.SetActive(true);
            continueButton.gameObject.SetActive(true);
        }
    }
}
