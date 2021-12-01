using TMPro;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;
using System.Reflection;
using System.Threading;
public class Home : MonoBehaviour {

    public GameObject goToSleepButton;
    public TextMeshProUGUI WeekText;
    public TextMeshProUGUI DayText;
    public TextMeshProUGUI CommunityManagerText;
    public TextMeshProUGUI NameText;
    public TextMeshProUGUI DaySummaryText;
    public TextMeshProUGUI GoToSleepText;
    public GameObject blackOverlay;

    // Localization Feature
    public Lang LangClass = new Lang(false);


    private void Start() {

        LangClass.setLanguage(GlobalGameInfo.language);

        WeekText.text = LangClass.getString("week") + " " + (GlobalGameInfo.GetCurrentWeek() + 1);
        DayText.text = LangClass.getString("wednesday");
        CommunityManagerText.text = LangClass.getString("comm_manager");
        DaySummaryText.text = LangClass.getString("day_summary");
        GoToSleepText.text = LangClass.getString("go_to_sleep");

        NameText.SetText(GlobalGameInfo.name);

        if (blackOverlay != null)
        {
            blackOverlay.SetActive(true);
        }

        // Stats
        
        // commEngageVal.GetComponent<UnityEngine.UI.Text>().text = (GlobalGameInfo.GetEngagement() * 5).ToString() + "%";
        // questsCompletedVal.GetComponent<UnityEngine.UI.Text>().text = GlobalGameInfo.GetEngagement().ToString() + "/20";
        // journalEntriesVal.GetComponent<UnityEngine.UI.Text>().text = TagManager.customTags.Count.ToString();
        // customTagsVal.GetComponent<UnityEngine.UI.Text>().text  = GlobalGameInfo.infoList.Count.ToString();
        // daysUntilBlockPartyVal.GetComponent<UnityEngine.UI.Text>().text = GlobalGameInfo.GetRemainDays().ToString();

    }
    
    public void goToSleep() {
        // Only if PC has finished the 5 quests for the day
        if (InkFileManager.CanAdvanceDay()) {
            // reset daily quest progess for the next day
            InkFileManager.ResetDailyBools();

            // Increase day by one
            GlobalGameInfo.IncreaseDay();

            // Go to saving scene
            SceneManager.LoadScene("Saving");
        }
    }

}
