using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;
using System.Reflection;
using System.Threading;
public class Home : MonoBehaviour {

    public GameObject backButton;
    public GameObject yellowContainer;
    public GameObject whiteContainer;
    public GameObject separatingLines;
    public GameObject statTitles;
    public Text yellowContainerText;
    public Text TitleText;
    public Text commEngageVal;
    public Text questsCompletedVal;
    public Text journalEntriesVal;
    public Text customTagsVal;
    public Text daysUntilquestsCompletedVal;

    private void Start() {

        TitleText.enabled = false;
        yellowContainerText.enabled = false;

        commEngageVal.enabled = false;
        questsCompletedVal.enabled = false;
        journalEntriesVal.enabled = false;
        customTagsVal.enabled = false;
        daysUntilquestsCompletedVal.enabled = false;
        
        commEngageVal.text = GlobalGameInfo.GetEngagement().ToString() + "%";
        questsCompletedVal.text = (GlobalGameInfo.GetEngagement() / 5).ToString() + "/20";
        journalEntriesVal.text = GlobalGameInfo.infoList.Count.ToString();
        customTagsVal.text = TagManager.customTags.Count.ToString();
        daysUntilquestsCompletedVal.text = GlobalGameInfo.GetRemainDays().ToString();

        yellowContainer.SetActive(false);
        whiteContainer.SetActive(false);
        backButton.SetActive(false);
        separatingLines.SetActive(false);
        statTitles.SetActive(false);

    }
    
    public void showInfo() {
        TitleText.enabled = true;
        yellowContainerText.enabled = true;

        commEngageVal.enabled = true;
        questsCompletedVal.enabled = true;
        journalEntriesVal.enabled = true;
        customTagsVal.enabled = true;
        daysUntilquestsCompletedVal.enabled = true;

        yellowContainer.SetActive(true);
        whiteContainer.SetActive(true);
        backButton.SetActive(true);
        separatingLines.SetActive(true);
        statTitles.SetActive(true);

    }

    public void hideInfo() {
        this.Start();
    }

    public void goToSleep() {
        // Increase day by one
        GlobalGameInfo.IncreaseDay();

        // Go back to map
        SceneManager.LoadScene("Basic2DMap");

        // Hint bubble for next day
        GlobalGameInfo.toggleNewDay();
    }

}
