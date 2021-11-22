using TMPro;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class MapScript : MonoBehaviour
{

    public bool calendarIconPressed = false;
    public TextMeshProUGUI WeekText;
    public TextMeshProUGUI ShortDayText;
    public TextMeshProUGUI WeekTextPopup;
    public TextMeshProUGUI ShortDayTextPopup;
    public TextMeshProUGUI CalendarWeekTextPopup;
    public TextMeshProUGUI CalendarShortDayTextPopup;
    public TextMeshProUGUI MeetNPCText;
    public TextMeshProUGUI GoodMorningText;
    public TextMeshProUGUI CurrentTaskTitle;
    public TextMeshProUGUI CurrentTask;
    public TextMeshProUGUI CurrentNPC;
    public TextMeshProUGUI BackButtonText;
    public TextMeshProUGUI ExitButtonText;
    public TextMeshProUGUI NumDaysLeft;
    public TextMeshProUGUI DaysLeftText;
    public TextMeshProUGUI ToBlockParty;
    public TextMeshProUGUI PleaseNote;
    public TextMeshProUGUI ProgressWontSave;
    public GameObject PhoneIcon;
    public GameObject CalendarIcon;
    public GameObject CalendarMessage;
    public GameObject BackButton;
    public GameObject ExitGame;
    public GameObject NPCAndTask;
    public GameObject GoTalkButton;
    public GameObject CalendarPopup;
    public Image RashadImage;
    public Image MrsLeeImage;
    public Image MrCalindasImage;
    public Image LilaImage;
    public Image ElisaImage;
    public GameObject blackOverlay;

    // Localization Feature
    public Lang LangClass = new Lang(false);

    // Start is called before the first frame update
    private void Start() {

        if (GlobalGameInfo.gotalkFlag == true) {
            CalendarIcon.SetActive(false);
            PhoneIcon.SetActive(false);
            this.OpenGoTalkDialog();
        }

        MeetNPCText.text = LangClass.getString("meet") + " " + (GlobalGameInfo.GetCurrentNPC());
        GoodMorningText.text = LangClass.getString("good_morning_message");
        
        WeekText.text = LangClass.getString("week") + " " + (GlobalGameInfo.GetCurrentWeek());
        WeekTextPopup.text = LangClass.getString("week") + " " + (GlobalGameInfo.GetCurrentWeek());
        CalendarWeekTextPopup.text = LangClass.getString("week") + " " + (GlobalGameInfo.GetCurrentWeek());

        switch (GlobalGameInfo.GetCurrentDay() - 1) {
            case 0:
                ShortDayText.text = LangClass.getString("monday_short");
                ShortDayTextPopup.text = LangClass.getString("monday_short");
                CalendarShortDayTextPopup.text = LangClass.getString("monday_short");
                break;
            case 1:
                ShortDayText.text = LangClass.getString("tuesday_short");
                ShortDayTextPopup.text = LangClass.getString("tuesday_short");
                CalendarShortDayTextPopup.text = LangClass.getString("tuesday_short");
                break;
            case 2:
                ShortDayText.text = LangClass.getString("wednesday_short");
                ShortDayTextPopup.text = LangClass.getString("wednesday_short");
                CalendarShortDayTextPopup.text = LangClass.getString("wednesday_short");
                break;
            case 3:
                ShortDayText.text = LangClass.getString("thursday_short");
                ShortDayTextPopup.text = LangClass.getString("thursday_short");
                CalendarShortDayTextPopup.text = LangClass.getString("thursday_short");
                break;
            case 4:
                ShortDayText.text = LangClass.getString("friday_short");
                ShortDayTextPopup.text = LangClass.getString("friday_short");
                CalendarShortDayTextPopup.text = LangClass.getString("friday_short");
                break;
            default:
            break;
        }
        CurrentTaskTitle.text = LangClass.getString("current_task");
        CurrentTask.text = GlobalGameInfo.GetCurrentTask();
        CurrentNPC.text = GlobalGameInfo.GetCurrentNPC();

        BackButtonText.text = LangClass.getString("back");
        ExitButtonText.text = LangClass.getString("exit_game");
        NumDaysLeft.text = (4 - GlobalGameInfo.GetCurrentDay()).ToString();
        DaysLeftText.text = LangClass.getString("days_left");
        ToBlockParty.text = LangClass.getString("to_block_party") + " " + GlobalGameInfo.GetCurrentNPC();
        
        PleaseNote.text = LangClass.getString("please_note");
        ProgressWontSave.text = LangClass.getString("progress_wont_save");

        // Update NPC Image
        RashadImage.enabled = false;
        MrsLeeImage.enabled = false;
        MrCalindasImage.enabled = false;
        LilaImage.enabled = false;
        ElisaImage.enabled = false;

        switch (CurrentNPC.text) {
            case "Rashad":
                RashadImage.enabled = true;
                break;
            case "Mrs. Lee":
                MrsLeeImage.enabled = true;
                break;
            case "Mr. Calindas":
                MrCalindasImage.enabled = true;
                break;
            case "Lila":
                LilaImage.enabled = true;
                break;
            case "Elisa":
                ElisaImage.enabled = true;
                break;
            default:
                break;
        }

    }

    public void toggleCalendarIcon()
    {
        // Update calendar pressed flag
        calendarIconPressed = !calendarIconPressed;

        // Remove phone icon
        PhoneIcon.SetActive(!calendarIconPressed);

        // Remove calendar icon
        CalendarIcon.SetActive(!calendarIconPressed);

        // Move object of NPC and task
        if (calendarIconPressed) {
            NPCAndTask.transform.position = new Vector3(1324, 768, 0f);
            if (blackOverlay != null)
            {
                blackOverlay.SetActive(true);
            }
        } else {
            NPCAndTask.transform.position = new Vector3(1024, 768, 0f);
            if (blackOverlay != null)
            {
                blackOverlay.SetActive(false);
            }
        }

        // Show back button
        BackButton.SetActive(calendarIconPressed);
        
        // Show calendar message
        CalendarMessage.SetActive(calendarIconPressed);


    }

    public void GoTalk() {
        InkFileManager ifm = new InkFileManager();
        ifm.TryLoadVNScene(GlobalGameInfo.GetCurrentNPC());
    }

    public void GoToOpeningScreen() {
        // Go back to opening screen
        SceneManager.LoadScene("OpeningScene");
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    private void Awake() {
        if (GlobalGameInfo.getNewDayVariable()) {
            HintBubbleManager.ActivateHintBubble("Good Morning!", "It's a new day in Bloomwood!");
            GlobalGameInfo.toggleNewDay();
        }
        
    }

    public void OpenGoTalkDialog() {
        CalendarPopup.SetActive(true);
        blackOverlay.SetActive(true);
        GlobalGameInfo.gotalkFlag = false;
    }
}
