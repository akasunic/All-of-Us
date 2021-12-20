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
    // Day data
    public TextMeshProUGUI NewJournalEntriesText;
    public TextMeshProUGUI NewJournalEntriesValue;
    public TextMeshProUGUI BlockPartyPreparationsText;
    public TextMeshProUGUI BlockPartyPreparationsValue;
    public TextMeshProUGUI SucculentsPlantedText;
    public TextMeshProUGUI SucculentsPlantedValue;
    public TextMeshProUGUI CommunityEngagementText;
    public TextMeshProUGUI CommunityEngagementValue;

    // Localization Feature
    public Lang LangClass = new Lang(false);


    private void Start() {

        LangClass.setLanguage(GlobalGameInfo.language);

        WeekText.text = LangClass.getString("week") + " " + (GlobalGameInfo.GetCurrentWeek() + 1);
        DayText.text = GlobalGameInfo.GetCurrentDayAsString("long");
        CommunityManagerText.text = LangClass.getString("comm_manager");
        DaySummaryText.text = LangClass.getString("day_summary");
        GoToSleepText.text = LangClass.getString("go_to_sleep");

        NameText.SetText(GlobalGameInfo.name);

        if (blackOverlay != null)
        {
            blackOverlay.SetActive(true);
        }

        // Stats
        
        NewJournalEntriesText.text = LangClass.getString("new_journal_entries");
        NewJournalEntriesValue.text = GlobalGameInfo.journalItemsLearnedTodayNum.ToString();
        BlockPartyPreparationsText.text = LangClass.getString("block_party_preparations");
        BlockPartyPreparationsValue.text = ((GlobalGameInfo.GetCurrentDay() + 1) * 25).ToString() + "%";
        SucculentsPlantedText.text = LangClass.getString("succulents_planted");
        SucculentsPlantedValue.text = Random.Range(2, 10).ToString();
        CommunityEngagementText.text = LangClass.getString("community_engagement");
        CommunityEngagementValue.text = ((GlobalGameInfo.GetCurrentWeek()) * 20 + (GlobalGameInfo.GetCurrentDay() + 1) * 5).ToString() + "%";
    }
    
    public void goToSleep() {
        // Increase day gets updated in the saving class below

        // Reset number of journal items learned today
        GlobalGameInfo.journalItemsLearnedTodayNum = 0;

        // Saving the game progress
        SavingGame.SaveGameProgress();
        // Go to saving scene
        SceneManager.LoadScene("Saving");
    }

}
