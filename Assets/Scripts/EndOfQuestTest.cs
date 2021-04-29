using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class EndOfQuestTest : MonoBehaviour
{
    public EndOfQuest endOfQuest;
    private int i = 0;

    public void EndOfGameTest() {
        SceneManager.LoadScene("Ending");
    }

    public void Test()
    {
        switch (i)
        {
            case 0:
                endOfQuest.EndQuest("A Little Help from Your Friends");
                break;
            case 1:
                GlobalGameInfo.IncreaseDay();
                endOfQuest.EndQuest("LGBTQ+ Support");
                break;
            case 2:
                endOfQuest.EndQuest("What the Community Really Needs");
                break;
            case 3:
                GlobalGameInfo.IncreaseDay();
                endOfQuest.EndQuest("Help Mrs. Lee verify that Eddie’s medication is correct");
                break;
            case 4:
                endOfQuest.EndQuest("Find out more info on career fairs");
                break;
            case 5:
                GlobalGameInfo.IncreaseDay();
                endOfQuest.EndQuest("Under Pressure");
                break;
            case 6:
                endOfQuest.EndQuest("Making time for what's important");
                break;
            case 7:
                GlobalGameInfo.IncreaseDay();
                endOfQuest.EndQuest("Mother Calindas' New Home");
                break;
            case 8:
                endOfQuest.EndQuest("Empower Mrs. Lee to schedule a doctor’s appointment");
                break;
            case 9:
                endOfQuest.EndQuest("Find out how to get vaccination records");
                break;
            default:
                i = 0;
                return;
        }
        i++;
    }
}
