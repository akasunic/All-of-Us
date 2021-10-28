using UnityEngine.SceneManagement;
using System.Collections.Generic;
using System.Collections;
using UnityEngine;
using TMPro;

public class StartWeek : MonoBehaviour
{

    static public List<GameObject> savedGamesUI;
    public GameObject prefabSavedGameItem;
    public GameObject BackButton;
    public string[][] savedGamesInfo = new string[6][];
    // Start is called before the first frame update
    void Start()
    {
        savedGamesUI = new List<GameObject>();

        // savedGamesInfo = new List<List<string>>();
        savedGamesInfo[0] = new string[4];
        savedGamesInfo[1] = new string[4];
        savedGamesInfo[2] = new string[4];
        savedGamesInfo[3] = new string[4];
        savedGamesInfo[4] = new string[4];
        savedGamesInfo[5] = new string[4];

        string[] list = new string[4];
        list[0] = "Sara";
        list[1] = "3";
        list[2] = "2";
        list[3] = "1";
        savedGamesInfo[0] = list;

        list = new string[4];
        list[0] = "Temmie";
        list[1] = "2";
        list[2] = "4";
        list[3] = "2";
        savedGamesInfo[1] = list;
        
        list = new string[4];
        list[0] = "Bob";
        list[1] = "4";
        list[2] = "2";
        list[3] = "3";
        savedGamesInfo[2] = list;

        list = new string[4];
        list[0] = "Sara";
        list[1] = "3";
        list[2] = "2";
        list[3] = "4";
        savedGamesInfo[3] = list;

        list = new string[4];
        list[0] = "Temmie";
        list[1] = "2";
        list[2] = "4";
        list[3] = "5";
        savedGamesInfo[4] = list;
        
        list = new string[4];
        list[0] = "Bob";
        list[1] = "4";
        list[2] = "2";
        list[3] = "6";
        savedGamesInfo[5] = list;

        int y_location = 152;

        foreach(string[] savedGame in savedGamesInfo) {
            GameObject savedGameItem = Instantiate(prefabSavedGameItem, new Vector3(0, y_location, 0f), Quaternion.identity);
            if (savedGameItem != null) {
                savedGameItem.transform.SetParent (GameObject.FindGameObjectWithTag("Content").transform, false);
                
                TextMeshProUGUI playerText = savedGameItem.transform.Find("Player").GetComponent<TextMeshProUGUI>();
                playerText.text = savedGame[0];

                TextMeshProUGUI weekAndDay = savedGameItem.transform.Find("Week and Day").GetComponent<TextMeshProUGUI>();
                weekAndDay.text = "Week " + savedGame[1] + ", Day " + savedGame[2];;
                
                TextMeshProUGUI numberText = savedGameItem.transform.Find("Number Text").GetComponent<TextMeshProUGUI>();
                numberText.text = savedGame[3];
            }
            y_location -= 135;
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void GoToOpeningScreen() {
        // Go back to opening screen
        SceneManager.LoadScene("OpeningScene");
    }
}
