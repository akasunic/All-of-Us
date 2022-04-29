using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;

public class EndOfQuest : MonoBehaviour
{
    [SerializeField]
    public GameObject TalkBubble;
    public TextMeshProUGUI TalkBubbleText;
    public GameObject TalkBubble2;
    public TextMeshProUGUI TalkBubble2Text;
    public Image Background;
    public Image TabBar;
    public Image NPC;
    public Sprite[] NPCImages;

    public Sprite[] TabBarImages;

    // Background Images
    public Sprite libraryBackground;
    public Sprite communityCenterBackground;
    public Sprite healthCenterBackground;

    // Stickers
    public Image sticker1;
    public Image sticker2;
    public Sprite[] NPCStickersLee1;
    public Sprite[] NPCStickersLee2;
    public Sprite[] NPCStickersCalindas1;
    public Sprite[] NPCStickersCalindas2;
    public Sprite[] NPCStickersLila1;
    public Sprite[] NPCStickersLila2;
    public Sprite[] NPCStickersElisa1;
    public Sprite[] NPCStickersElisa2;
    public Sprite[] NPCStickersRashad1;
    public Sprite[] NPCStickersRashad2;
    // Polaroids
    public Image polaroid1;
    public Image polaroid2;
    public Image pin;
    public Image tapes;
    public Sprite[] NPCPolaroidsLee1;
    public Sprite[] NPCPolaroidsLee2;
    public Sprite[] NPCPolaroidsCalindas1;
    public Sprite[] NPCPolaroidsCalindas2;
    public Sprite[] NPCPolaroidsLila1;
    public Sprite[] NPCPolaroidsLila2;
    public Sprite[] NPCPolaroidsElisa1;
    public Sprite[] NPCPolaroidsElisa2;
    public Sprite[] NPCPolaroidsRashad1;
    public Sprite[] NPCPolaroidsRashad2;
    // Other elements
    public TextMeshProUGUI DaySummary;
    public TextMeshProUGUI Mon;
    public TextMeshProUGUI Tue;
    public TextMeshProUGUI Wed;
    public TextMeshProUGUI Thu;
    public TextMeshProUGUI Party;
    public TextMeshProUGUI ButtonText;
    public TextMeshProUGUI Sticker1Text;
    public TextMeshProUGUI Sticker2Text;
    public TextMeshProUGUI Week;
    public TextMeshProUGUI DayNumber;
    public TextMeshProUGUI DaysLeftText;


    // Start is called before the first frame update
    void Start()
    {

        GameObject.FindGameObjectWithTag("Music").GetComponent<MusicClass>().PlayMusic();

        // set texts
        DaySummary.text = GameStrings.getString("day_summary");
        Mon.text = GameStrings.getString("monday_short");
        Tue.text = GameStrings.getString("tuesday_short");
        Wed.text = GameStrings.getString("wednesday_short");
        Thu.text = GameStrings.getString("thursday_short");
        Party.text = GameStrings.getString("party");
        ButtonText.text = GameStrings.getString("continue");

        TabBar.sprite = TabBarImages[GlobalGameInfo.GetCurrentDay()];
        
        TalkBubble.SetActive(true);
        TalkBubbleText.enabled = true;

        // sticker1.enabled = true;
        // sticker2.enabled = true;
        polaroid1.enabled = false;
        polaroid2.enabled = false;
        pin.enabled = false;
        tapes.enabled = false;

        Week.text = GameStrings.getString("week_all_caps");
        DayNumber.text = GlobalGameInfo.GetRemainDays().ToString();
        DaysLeftText.text = GameStrings.getString("days_left");

        TalkBubbleText.text = GameStrings.getString("talk_bubble_1");
        TalkBubble2Text.text = GameStrings.getString("talk_bubble_2");

        if (GlobalGameInfo.GetRemainDays() <= 1)
        {
            DaysLeftText.text = GameStrings.getString("day_left");
        }

        switch (GlobalGameInfo.GetCurrentNPC()) {
            case CharacterResources.CHARACTERS.RASHAD:
                
                NPC.sprite = NPCImages[0];

                sticker1.sprite = NPCStickersRashad1[GlobalGameInfo.GetCurrentDay()];
                sticker2.sprite = NPCStickersRashad2[GlobalGameInfo.GetCurrentDay()];
                polaroid1.sprite = NPCPolaroidsRashad1[GlobalGameInfo.GetCurrentDay()];
                polaroid2.sprite = NPCPolaroidsRashad2[GlobalGameInfo.GetCurrentDay()];

                Background.sprite = libraryBackground;

                switch (GlobalGameInfo.GetCurrentDay()) {
                    case 0:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_rashad_1_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_rashad_1_sticker2");
                        break;                                            
                    case 1:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_rashad_2_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_rashad_2_sticker2");
                        break;                                            
                    case 2:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_rashad_3_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_rashad_3_sticker2");
                        break;                                            
                    case 3:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_rashad_4_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_rashad_4_sticker2");
                        break;                                            
                }
                break;
            case CharacterResources.CHARACTERS.LILA:

                NPC.sprite = NPCImages[1];

                sticker1.sprite = NPCStickersLila1[GlobalGameInfo.GetCurrentDay()];
                sticker2.sprite = NPCStickersLila2[GlobalGameInfo.GetCurrentDay()];
                polaroid1.sprite = NPCPolaroidsLila1[GlobalGameInfo.GetCurrentDay()];
                polaroid2.sprite = NPCPolaroidsLila2[GlobalGameInfo.GetCurrentDay()];

                Background.sprite = communityCenterBackground;
                
                switch (GlobalGameInfo.GetCurrentDay()) {
                    case 0:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_lila_1_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_lila_1_sticker2");
                        break;                                            
                    case 1:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_lila_2_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_lila_2_sticker2");
                        break;                                            
                    case 2:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_lila_3_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_lila_3_sticker2");
                        break;                                            
                    case 3:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_lila_4_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_lila_4_sticker2");
                        break;                                            
                }
                break;
            case CharacterResources.CHARACTERS.CALINDAS:

                NPC.sprite = NPCImages[2];

                sticker1.sprite = NPCStickersCalindas1[GlobalGameInfo.GetCurrentDay()];
                sticker2.sprite = NPCStickersCalindas2[GlobalGameInfo.GetCurrentDay()];
                polaroid1.sprite = NPCPolaroidsCalindas1[GlobalGameInfo.GetCurrentDay()];
                polaroid2.sprite = NPCPolaroidsCalindas2[GlobalGameInfo.GetCurrentDay()];

                Background.sprite = healthCenterBackground;

                switch (GlobalGameInfo.GetCurrentDay()) {
                    case 0:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_calindas_1_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_calindas_1_sticker2");
                        break;                                            
                    case 1:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_calindas_2_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_calindas_2_sticker2");
                        break;                                            
                    case 2:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_calindas_3_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_calindas_3_sticker2");
                        break;                                            
                    case 3:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_calindas_4_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_calindas_4_sticker2");
                        break;                                            
                }
                break;
            case CharacterResources.CHARACTERS.LEE:

                NPC.sprite = NPCImages[3];
                
                sticker1.sprite = NPCStickersLee1[GlobalGameInfo.GetCurrentDay()];
                sticker2.sprite = NPCStickersLee2[GlobalGameInfo.GetCurrentDay()];
                polaroid1.sprite = NPCPolaroidsLee1[GlobalGameInfo.GetCurrentDay()];
                polaroid2.sprite = NPCPolaroidsLee2[GlobalGameInfo.GetCurrentDay()];

                Background.sprite = communityCenterBackground;

                switch (GlobalGameInfo.GetCurrentDay()) {
                    case 0:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_lee_1_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_lee_1_sticker2");
                        break;
                    case 1:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_lee_2_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_lee_2_sticker2");
                        break;
                    case 2:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_lee_3_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_lee_3_sticker2");
                        break;
                    case 3:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_lee_4_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_lee_4_sticker2");                                            
                        break;
                }
                break;
            case CharacterResources.CHARACTERS.ELISA:
            
                NPC.sprite = NPCImages[4];

                sticker1.sprite = NPCStickersElisa1[GlobalGameInfo.GetCurrentDay()];
                sticker2.sprite = NPCStickersElisa2[GlobalGameInfo.GetCurrentDay()];
                polaroid1.sprite = NPCPolaroidsElisa1[GlobalGameInfo.GetCurrentDay()];
                polaroid2.sprite = NPCPolaroidsElisa2[GlobalGameInfo.GetCurrentDay()];

                Background.sprite = libraryBackground;

                switch (GlobalGameInfo.GetCurrentDay()) {
                    case 0:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_elisa_1_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_elisa_1_sticker2");
                        break;
                    case 1:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_elisa_2_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_elisa_2_sticker2");
                        break;
                    case 2:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_elisa_3_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_elisa_3_sticker2");
                        break;
                    case 3:
                        Sticker1Text.text = GameStrings.getString("end_of_quest_elisa_4_sticker1");
                        Sticker2Text.text = GameStrings.getString("end_of_quest_elisa_4_sticker2");                                            
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

    public void ButtonClick()
    {
        if (ButtonText.text != GameStrings.getString("finish_day")) {
            // Replace talk bubbles
            TalkBubble.SetActive(false);
            TalkBubbleText.enabled = false;
            TalkBubble2.SetActive(true);
            TalkBubble2Text.enabled = true;

            // Disable stickers
            sticker1.enabled = false;
            sticker2.enabled = false;
            Sticker1Text.enabled = false;
            Sticker2Text.enabled = false;

            // Enable polaroids
            polaroid1.enabled = true;
            polaroid2.enabled = true;
            pin.enabled = true;
            tapes.enabled = true;

            // switch (GlobalGameInfo.GetCurrentNPC()) {
            //     case CharacterResources.CHARACTERS.RASHAD:
            //         polaroid1.sprite = NPCPolaroidsRashad1[GlobalGameInfo.GetCurrentDay()];
            //         polaroid2.sprite = NPCPolaroidsRashad2[GlobalGameInfo.GetCurrentDay()];
            //         break;
            //     case CharacterResources.CHARACTERS.LILA:
            //         polaroid1.sprite = NPCPolaroidsLila1[GlobalGameInfo.GetCurrentDay()];
            //         polaroid2.sprite = NPCPolaroidsLila2[GlobalGameInfo.GetCurrentDay()];
            //         break;
            //     case CharacterResources.CHARACTERS.CALINDAS:
            //         polaroid1.sprite = NPCPolaroidsCalindas1[GlobalGameInfo.GetCurrentDay()];
            //         polaroid2.sprite = NPCPolaroidsCalindas2[GlobalGameInfo.GetCurrentDay()];
            //         break;
            //     case CharacterResources.CHARACTERS.LEE:
            //         polaroid1.sprite = NPCPolaroidsLee1[GlobalGameInfo.GetCurrentDay()];
            //         polaroid2.sprite = NPCPolaroidsLee2[GlobalGameInfo.GetCurrentDay()];
            //         break;
            //     case CharacterResources.CHARACTERS.ELISA:
            //         polaroid1.sprite = NPCPolaroidsElisa1[GlobalGameInfo.GetCurrentDay()];
            //         polaroid2.sprite = NPCPolaroidsElisa2[GlobalGameInfo.GetCurrentDay()];
            //         break;
            //     default:
            //         throw new System.Exception("Cannot find Character. Check EndOfQuest.cs");
            // }

            ButtonText.text = GameStrings.getString("finish_day");
        } else {
            // Increase day gets updated in the saving class below

            // Reset number of journal items learned today
            GlobalGameInfo.journalItemsLearnedTodayNum = 0;

            // Saving the game progress
            SavingGame.SaveGameProgress();

            // Go to saving scene
            SceneManager.LoadScene("Saving");
        }
    }

}
