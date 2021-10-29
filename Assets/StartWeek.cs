using UnityEngine.SceneManagement;
using System.Collections.Generic;
using System.Collections;
using UnityEngine.UI;
using UnityEngine;
using TMPro;

public class StartWeek : MonoBehaviour
{

    static public List<GameObject> savedGamesUI;
    public GameObject prefabSavedGameItem;
    public GameObject BackButton;
    public TextMeshProUGUI Title;
    public GameObject ScrollView;
    public string[][] savedGamesInfo = new string[6][];
    public Lang LangClass = new Lang(false);
    
    // Start is called before the first frame update
    void Start()
    {

        Title.text = LangClass.getString("saved_games");

        savedGamesUI = new List<GameObject>();

        // savedGamesInfo = new List<List<string>>();
        savedGamesInfo[0] = new string[4];
        savedGamesInfo[1] = new string[4];
        savedGamesInfo[2] = new string[4];
        savedGamesInfo[3] = new string[4];
        savedGamesInfo[4] = new string[4];
        savedGamesInfo[5] = new string[4];
        // savedGamesInfo[6] = new string[4];
        // savedGamesInfo[7] = new string[4];
        // savedGamesInfo[8] = new string[4];
        // savedGamesInfo[9] = new string[4];

        string[] list = new string[4];
        list[0] = "Sara";
        list[1] = "3";
        list[2] = "2";
        list[3] = "1";
        savedGamesInfo[0] = list;
        savedGamesInfo[1] = list;
        savedGamesInfo[2] = list;
        savedGamesInfo[3] = list;
        savedGamesInfo[4] = list;
        savedGamesInfo[5] = list;
        // savedGamesInfo[6] = list;
        // savedGamesInfo[7] = list;
        // savedGamesInfo[8] = list;
        // savedGamesInfo[9] = list;

        int y_location = 152;

        foreach(string[] savedGame in savedGamesInfo) {
            GameObject savedGameItem = Instantiate(prefabSavedGameItem, new Vector3(0, y_location, 0f), Quaternion.identity);
            
            UnityEngine.UI.Button btn = savedGameItem.GetComponent<Button>();
            btn.onClick.AddListener(clickOnSavedGame);

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

    public void clickOnSavedGame() {
        // Change view to selecting a profile
        Title.text = LangClass.getString("next_npc");
        ScrollView.SetActive(false);
    }

    public void GoToOpeningScreen() {
        // Go back to opening screen
        SceneManager.LoadScene("OpeningScene");
    }
}
