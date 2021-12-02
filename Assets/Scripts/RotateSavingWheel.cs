using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class RotateSavingWheel : MonoBehaviour
{
    private float secondsPassed;
    // Start is called before the first frame update

    private bool weekEndedFlag = false;
    void Start()
    {
        secondsPassed = 0.0f;
        Dictionary<string, SavedGame> currentData = SaveSerial.LoadGame();
        SavedGame current = GlobalGameInfo.savedGame;

        // Update and save day
        GlobalGameInfo.SetCurrentDay(GlobalGameInfo.GetCurrentDay() + 1);
            current.incDay();
        // Update and save progress
        if (GlobalGameInfo.GetCurrentDay() == 4) {
            current.setCharacterDone(GlobalGameInfo.GetCurrentNPC());
            weekEndedFlag = true;
        }
        currentData[GlobalGameInfo.name] = current;
        // Pronouns are not used currently in the game
        SaveSerial.SaveGame(currentData);

        StartCoroutine(RotateWheel());
        
        if (weekEndedFlag) {
            GlobalGameInfo.weekEndedFlag = true;
            SceneManager.LoadScene("StartWeek");
        } else {
            SceneManager.LoadScene("Basic2DMap");
        }
    }
    IEnumerator RotateWheel()
    {

        while (true)
        {
            this.transform.Rotate(0.0f, 0.0f, -5f, Space.Self);
            yield return new WaitForSeconds(0.1f);
            if (secondsPassed > 5.0f)
            {
                yield break;
            }
            else
            {
                secondsPassed += 0.1f;
            }
        }
    }
}
