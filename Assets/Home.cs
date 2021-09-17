using TMPro;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;
using System.Reflection;
using System.Threading;
public class Home : MonoBehaviour {

    public GameObject infoButton;
    public GameObject goToSleepButton;
    public GameObject backButton;
    public GameObject yellowContainer;
    public GameObject whiteContainer;
    public GameObject separatingLines;
    public GameObject statTitles;
    public GameObject yellowContainerText;
    public GameObject TitleText;
    public GameObject commEngageVal;
    public GameObject questsCompletedVal;
    public GameObject journalEntriesVal;
    public GameObject customTagsVal;
    public GameObject daysUntilBlockPartyVal;

    // Localization Feature
    public Lang LangClass = new Lang(false);

    public TextMeshProUGUI SectionName;
    public TextMeshProUGUI BackToMapText;
    public TextMeshProUGUI BackToHomeText;
    public TextMeshProUGUI InfoText;
    public TextMeshProUGUI GoToSleepText;
    private void Start() {

        BackToMapText.text = LangClass.getString("back");
        BackToHomeText.text = LangClass.getString("back");
        
        SectionName.text = LangClass.getString("home");
        InfoText.text = LangClass.getString("info");
        GoToSleepText.text = LangClass.getString("go_to_sleep");
        
        commEngageVal.GetComponent<UnityEngine.UI.Text>().text = (GlobalGameInfo.GetEngagement() * 5).ToString() + "%";
        questsCompletedVal.GetComponent<UnityEngine.UI.Text>().text = GlobalGameInfo.GetEngagement().ToString() + "/20";
        journalEntriesVal.GetComponent<UnityEngine.UI.Text>().text = TagManager.customTags.Count.ToString();
        customTagsVal.GetComponent<UnityEngine.UI.Text>().text  = GlobalGameInfo.infoList.Count.ToString();
        daysUntilBlockPartyVal.GetComponent<UnityEngine.UI.Text>().text = GlobalGameInfo.GetRemainDays().ToString();

    }
    
    public void showInfo() {

        TitleText.SetActive(true);
        yellowContainerText.SetActive(true);

        commEngageVal.SetActive(true);
        questsCompletedVal.SetActive(true);
        journalEntriesVal.SetActive(true);
        customTagsVal.SetActive(true);
        daysUntilBlockPartyVal.SetActive(true);

        yellowContainer.SetActive(true);
        whiteContainer.SetActive(true);
        backButton.SetActive(true);
        separatingLines.SetActive(true);
        statTitles.SetActive(true);

        infoButton.SetActive(false);
        goToSleepButton.SetActive(false);
    }

    public void hideInfo() {

        TitleText.SetActive(false);
        yellowContainerText.SetActive(false);

        commEngageVal.SetActive(false);
        questsCompletedVal.SetActive(false);
        journalEntriesVal.SetActive(false);
        customTagsVal.SetActive(false);
        daysUntilBlockPartyVal.SetActive(false);

        yellowContainer.SetActive(false);
        whiteContainer.SetActive(false);
        backButton.SetActive(false);
        separatingLines.SetActive(false);
        statTitles.SetActive(false);
        
        infoButton.SetActive(true);
        goToSleepButton.SetActive(true);
    }

    public void goToSleep() {
        // Only if PC has finished the 5 quests for the day
        if (InkFileManager.CanAdvanceDay()) {
            // reset daily quest progess for the next day
            InkFileManager.ResetDailyBools();

            // Increase day by one
            GlobalGameInfo.IncreaseDay();

            // Go back to map
            SceneManager.LoadScene("Basic2DMap");

            // Toggle new day (triggers hint bubble to say "Good Morning")
            GlobalGameInfo.toggleNewDay();
        }
    }

}
