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
    public Button viewProfileButton;
    public TextMeshProUGUI ButtonText;
    public bool showingProfile;

    // Start is called before the first frame update
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void onViewProfileButtonClick() {
        if (!showingProfile) {
            MrsLeeImage.SetActive(false);
            MrsLeeQuestion.SetActive(false);
            MrsLeeProfile.SetActive(true);
            ButtonText.text = "Back To Solving";
            showingProfile = !showingProfile;
        } else {
            MrsLeeImage.SetActive(true);
            MrsLeeQuestion.SetActive(true);
            MrsLeeProfile.SetActive(false);
            ButtonText.text = "View Mrs. Lee's Profile";
            showingProfile = !showingProfile;
        }
    }
}
