using UnityEngine.SceneManagement;
using System.Collections.Generic;
using System.Collections;
using System.Threading;
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
    public GameObject SelectProfile;
    public GameObject StartWeekContainer;
    public TextMeshProUGUI SelectProfileText;
    public TextMeshProUGUI SelectedNPC;
    public Dictionary<string, int> exampleProgress; // Later take from actual object
    
    // NPC images
    public GameObject Rashad0;
    public GameObject Rashad1;
    public TextMeshProUGUI RashadCompleted;
    public GameObject Lila0;
    public GameObject Lila1;
    public TextMeshProUGUI LilaCompleted;
    public GameObject Elisa0;
    public GameObject Elisa1;
    public TextMeshProUGUI ElisaCompleted;
    public GameObject MrCalindas0;
    public GameObject MrCalindas1;
    public TextMeshProUGUI MrCalindasCompleted;
    public GameObject MrsLee0;
    public GameObject MrsLee1;
    public TextMeshProUGUI MrsLeeCompleted;

    public Lang LangClass = new Lang(false);
    
    // Start is called before the first frame update
    void Start()
    {

        Title.text = LangClass.getString("saved_games");

        savedGamesUI = new List<GameObject>();

        exampleProgress = new Dictionary<string, int>();
        exampleProgress.Add("Rashad", 0);
        exampleProgress.Add("MrsLee", 0);
        exampleProgress.Add("Lila", 1);
        exampleProgress.Add("Elisa", 0);
        exampleProgress.Add("MrCalindas", 0);

        // savedGamesInfo = new List<List<string>>();
        savedGamesInfo[0] = new string[4];
        savedGamesInfo[1] = new string[4];
        savedGamesInfo[2] = new string[4];
        savedGamesInfo[3] = new string[4];
        savedGamesInfo[4] = new string[4];
        savedGamesInfo[5] = new string[4];

        string[] list = new string[4];
        list[0] = "James";
        list[1] = "3";
        list[2] = "4";
        list[3] = "2";
        savedGamesInfo[0] = list;
        savedGamesInfo[1] = list;
        savedGamesInfo[2] = list;
        savedGamesInfo[3] = list;
        savedGamesInfo[4] = list;
        savedGamesInfo[5] = list;

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
                weekAndDay.text = "Week " + savedGame[1] + ", Day " + savedGame[2];
                
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

        SelectProfile.SetActive(true);
        SelectProfileText.enabled = true;

        RashadCompleted.enabled = (exampleProgress["Rashad"] == 1);
        Rashad0.SetActive(exampleProgress["Rashad"] == 0);
        Rashad1.SetActive(exampleProgress["Rashad"] == 1);

        MrsLeeCompleted.enabled = (exampleProgress["MrsLee"] == 1);
        MrsLee0.SetActive(exampleProgress["MrsLee"] == 0);
        MrsLee1.SetActive(exampleProgress["MrsLee"] == 1);

        MrCalindasCompleted.enabled = (exampleProgress["MrCalindas"] == 1);
        MrCalindas0.SetActive(exampleProgress["MrCalindas"] == 0);
        MrCalindas1.SetActive(exampleProgress["MrCalindas"] == 1);

        LilaCompleted.enabled = (exampleProgress["Lila"] == 1);
        Lila0.SetActive(exampleProgress["Lila"] == 0);
        Lila1.SetActive(exampleProgress["Lila"] == 1);

        ElisaCompleted.enabled = (exampleProgress["Elisa"] == 1);
        Elisa0.SetActive(exampleProgress["Elisa"] == 0);
        Elisa1.SetActive(exampleProgress["Elisa"] == 1);

    }

    public void selectNPC(string NPC) {

        // Show NPC's character card
        StartWeekContainer.SetActive(true);
        SelectedNPC.text = NPC + "?";
        GlobalGameInfo.SetCurrentNPC(NPC);

        // Update the current NPC in the global script
        switch (NPC) {
            case "Rashad":
                break;
            case "Lila":
                break;
            case "Elisa":
                break;
            case "Mr. Calindas":
                break;
            case "Mrs. Lee":
                break;
            default:
                break;
        }
        
        // Rashad0.gameObject.transform.localScale += new Vector3(0.2f, 0.2f, 0);
    }

    public void GoToOpeningScreen() {
        // Go back to opening screen
        SceneManager.LoadScene("OpeningScene");
    }

    public void GoToMapScene() {
        // Go back to opening screen
        SceneManager.LoadScene("Basic2DMap");
    }
}
