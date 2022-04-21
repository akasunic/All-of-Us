using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;

public class EndOfQuest : MonoBehaviour
{
    [SerializeField]
    public GameObject Background;
    public GameObject TalkBubble;
    public GameObject[] NPCImages;
    // Stickers
    public GameObject[] NPCStickersLee1;
    public GameObject[] NPCStickersLee2;
    public GameObject[] NPCStickersCalindas1;
    public GameObject[] NPCStickersCalindas2;
    public GameObject[] NPCStickersLila1;
    public GameObject[] NPCStickersLila2;
    public GameObject[] NPCStickersElisa1;
    public GameObject[] NPCStickersElisa2;
    public GameObject[] NPCStickersRashad1;
    public GameObject[] NPCStickersRashad2;
    // Polaroids
    public GameObject[] NPCPolaroids1;
    public GameObject[] NPCPolaroids2;
    // Other elements
    public TextMeshProUGUI DaySummary;
    public TextMeshProUGUI Mon;
    public TextMeshProUGUI Tue;
    public TextMeshProUGUI Wed;
    public TextMeshProUGUI Thu;
    public TextMeshProUGUI Party;
    public TextMeshProUGUI ButtonText;
    public TextMeshProUGUI Sticker1;
    public TextMeshProUGUI Sticker2;
    public TextMeshProUGUI TalkBubbleText;
    public TextMeshProUGUI Week;
    public TextMeshProUGUI DayNumber;
    public TextMeshProUGUI DayText;


    // Start is called before the first frame update
    void Start()
    {

        // set texts
        DaySummary.text = GameStrings.getString("day_summary");
        Mon.text = GameStrings.getString("monday_short");
        Tue.text = GameStrings.getString("tuesday_short");
        Wed.text = GameStrings.getString("wednesday_short");
        Thu.text = GameStrings.getString("thursday_short");
        Party.text = GameStrings.getString("party");
        ButtonText.text = GameStrings.getString("continue");

        Week.text = GameStrings.getString("week_all_caps");
        DayNumber.text = GlobalGameInfo.GetRemainDays().ToString();
        DayText.text = GameStrings.getString("days_left");

        if (GlobalGameInfo.GetRemainDays() <= 1)
        {
            DayText.text = GameStrings.getString("day_left");
        }

        // set character and picture
        // for (int i = 0; i < pictures.Length; i++)
        // {
        //     NPCImages[i].SetActive(false);
        // }


        switch (GlobalGameInfo.GetCurrentNPC()) {
            case CharacterResources.CHARACTERS.RASHAD:
                NPCImages[0].SetActive(true);
                TalkBubbleText.text = GameStrings.getString("");
                NPCStickersRashad1[GlobalGameInfo.GetCurrentDay()].SetActive(true);
                NPCStickersRashad2[GlobalGameInfo.GetCurrentDay()].SetActive(true);
                switch (GlobalGameInfo.GetCurrentDay()) {
                    case 0:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;                                            
                    case 1:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;                                            
                    case 2:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;                                            
                    case 3:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;                                            
                }
                break;
            case CharacterResources.CHARACTERS.LILA:
                NPCImages[1].SetActive(true);
                TalkBubbleText.text = GameStrings.getString("");
                NPCStickersLila1[GlobalGameInfo.GetCurrentDay()].SetActive(true);
                NPCStickersLila2[GlobalGameInfo.GetCurrentDay()].SetActive(true);
                switch (GlobalGameInfo.GetCurrentDay()) {
                    case 0:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;                                            
                    case 1:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;                                            
                    case 2:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;                                            
                    case 3:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;                                            
                }
                break;
            case CharacterResources.CHARACTERS.CALINDAS:
                NPCImages[2].SetActive(true);
                TalkBubbleText.text = GameStrings.getString("");
                NPCStickersCalindas1[GlobalGameInfo.GetCurrentDay()].SetActive(true);
                NPCStickersCalindas2[GlobalGameInfo.GetCurrentDay()].SetActive(true);
                switch (GlobalGameInfo.GetCurrentDay()) {
                    case 0:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;                                            
                    case 1:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;                                            
                    case 2:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;                                            
                    case 3:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;                                            
                }
                break;
            case CharacterResources.CHARACTERS.LEE:
                NPCImages[3].SetActive(true);
                TalkBubbleText.text = GameStrings.getString("");
                NPCStickersLee1[GlobalGameInfo.GetCurrentDay()].SetActive(true);
                NPCStickersLee2[GlobalGameInfo.GetCurrentDay()].SetActive(true);
                switch (GlobalGameInfo.GetCurrentDay()) {
                    case 0:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;
                    case 1:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;
                    case 2:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;
                    case 3:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");                                            
                        break;
                }
                break;
            case CharacterResources.CHARACTERS.ELISA:
                NPCImages[4].SetActive(true);
                TalkBubbleText.text = GameStrings.getString("");
                NPCStickersElisa1[GlobalGameInfo.GetCurrentDay()].SetActive(true);
                NPCStickersElisa2[GlobalGameInfo.GetCurrentDay()].SetActive(true);
                switch (GlobalGameInfo.GetCurrentDay()) {
                    case 0:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;
                    case 1:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;
                    case 2:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");
                        break;
                    case 3:
                        Sticker1.text = GameStrings.getString("");
                        Sticker2.text = GameStrings.getString("");                                            
                        break;
                }
                break;
            default:
                throw new System.Exception("Cannot find Character. Check EndOfQuest.cs");
        }

        var questTitle = GlobalGameInfo.GetCurrentTask();
        GlobalGameInfo.FinishTask(questTitle);
        // Data collection
        DataCollection.LogEvent("Quest Completed! Title: " + questTitle + ", Character: " + GlobalGameInfo.GetCurrentNPC(), "QUEST COMPLETION");
    }

    // Update is called once per frame
    void Update()
    {
        
    }


    public void goToSavingGame() {
        // Increase day gets updated in the saving class below

        // Reset number of journal items learned today
        GlobalGameInfo.journalItemsLearnedTodayNum = 0;

        // Saving the game progress
        SavingGame.SaveGameProgress();

        // Go to saving scene
        SceneManager.LoadScene("Saving");
    }

}
