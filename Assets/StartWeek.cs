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

    // Character Cards
    public GameObject ElisaCard;
    public GameObject RashadCard;
    public GameObject LilaCard;
    public GameObject MrCalindasCard;
    public GameObject MrsLeeCard;

    public TextMeshProUGUI CharacterCardName;
    public TextMeshProUGUI CharacterCardAgePronouns;
    public TextMeshProUGUI CharacterCardTitle;
    public TextMeshProUGUI CharacterCardDescription;

    public GameObject blackOverlay;

    public Lang LangClass = new Lang(false);
    SavedGame currentGame;
    
    // Start is called before the first frame update
    void Start()
    {

        // If arrived from PCSetup, go to select profile
        if (GlobalGameInfo.pcsetupCalled) {
            GlobalGameInfo.pcsetupCalled = false;
            this.clickOnSavedGame(GlobalGameInfo.savedGame);
        }

        // Dictionary<string, SavedGame> dataToStore = new Dictionary<string, SavedGame>();
        // SavedGame exampleSG = new SavedGame("AAA");
        // SavedGame exampleSG2 = new SavedGame("BBB");
        // SavedGame exampleSG3 = new SavedGame("CCC");

        // exampleSG.setCharacterDone("Rashad");
        // exampleSG.incDay();
        // exampleSG.incWeek();

        // dataToStore.Add("AAA", exampleSG);
        // dataToStore.Add("BBB", exampleSG2);
        // dataToStore.Add("CCC", exampleSG3);
        
        // SaveSerial.SaveGame(dataToStore);


        Dictionary<string, SavedGame> data = SaveSerial.LoadGame();

        Title.text = LangClass.getString("saved_games");

        int y_location = 152;
        int gameNum = 1;

        foreach(KeyValuePair<string, SavedGame> pair in data) {
            GameObject savedGameItem = Instantiate(prefabSavedGameItem, new Vector3(-330f, y_location, 0f), Quaternion.identity);

            UnityEngine.UI.Button btn = savedGameItem.GetComponent<Button>();

            if (savedGameItem != null) {

                btn.onClick.AddListener(delegate{clickOnSavedGame(pair.Value);});
                
                savedGameItem.transform.SetParent (GameObject.FindGameObjectWithTag("Content").transform, false);
                
                TextMeshProUGUI playerText = savedGameItem.transform.Find("Player").GetComponent<TextMeshProUGUI>();
                playerText.text = "Player: " + pair.Value.getName();

                TextMeshProUGUI weekAndDay = savedGameItem.transform.Find("Week and Day").GetComponent<TextMeshProUGUI>();
                weekAndDay.text = "Week " + pair.Value.getWeek() + ", Day " + pair.Value.getDay();
                
                TextMeshProUGUI numberText = savedGameItem.transform.Find("Number Text").GetComponent<TextMeshProUGUI>();
                numberText.text = gameNum.ToString();

                TextMeshProUGUI completedText = savedGameItem.transform.Find("Completed Text").GetComponent<TextMeshProUGUI>();
                completedText.text = (pair.Value.getWeek() - 1) + "/5 " + LangClass.getString("completed");

                this.loadCompletedBarImage(savedGameItem, pair.Value.getWeek());
            }

            y_location -= 135;
            gameNum++;
        }
    }

    public void loadCompletedBarImage(GameObject savedGameItem, int week) {
        Image completedBar = savedGameItem.transform.Find("Completed Bar").GetComponent<Image>();

        switch (week) {
            case 1:
                completedBar.sprite = Resources.Load<Sprite>("Sprites/Completed0");
                break;
            case 2:
                completedBar.sprite = Resources.Load<Sprite>("Sprites/Completed1");
                break;
            case 3:
                completedBar.sprite = Resources.Load<Sprite>("Sprites/Completed2");
                break;
            case 4:
                completedBar.sprite = Resources.Load<Sprite>("Sprites/Completed3");
                break;
            case 5:
                completedBar.sprite = Resources.Load<Sprite>("Sprites/Completed4");
                break;
            case 6:
                completedBar.sprite = Resources.Load<Sprite>("Sprites/Completed5");
                break;
        }
    }

    // Update is called once per frame
    void Update()
    {
    }

    public void clickOnSavedGame(SavedGame savedGame) {

        // Change view to selecting a profile
        Title.text = LangClass.getString("next_npc");
        currentGame = savedGame;
        
        // Update global variables
        GlobalGameInfo.SetPlayerName(savedGame.getName());
        GlobalGameInfo.SetCurrentDay(savedGame.getDay());
        GlobalGameInfo.SetCurrentWeek(savedGame.getWeek());
        GlobalGameInfo.SetCurrentProgress(savedGame.getProgress());
        GlobalGameInfo.language = savedGame.getLanguage();
        // GlobalGameInfo.languageInt = GlobalGameInfo.langDict[GlobalGameInfo.language];
        // TODO add pronouns later

        // Updating local variables
        ScrollView.SetActive(false);
        blackOverlay.SetActive(true);
        SelectProfile.SetActive(true);
        SelectProfileText.enabled = true;

        RashadCompleted.enabled = (savedGame.getProgress()["Rashad"] == 1);
        Rashad0.SetActive(savedGame.getProgress()["Rashad"] == 0);
        Rashad1.SetActive(savedGame.getProgress()["Rashad"] == 1);

        MrsLeeCompleted.enabled = (savedGame.getProgress()["MrsLee"] == 1);
        MrsLee0.SetActive(savedGame.getProgress()["MrsLee"] == 0);
        MrsLee1.SetActive(savedGame.getProgress()["MrsLee"] == 1);

        MrCalindasCompleted.enabled = (savedGame.getProgress()["MrCalindas"] == 1);
        MrCalindas0.SetActive(savedGame.getProgress()["MrCalindas"] == 0);
        MrCalindas1.SetActive(savedGame.getProgress()["MrCalindas"] == 1);

        LilaCompleted.enabled = (savedGame.getProgress()["Lila"] == 1);
        Lila0.SetActive(savedGame.getProgress()["Lila"] == 0);
        Lila1.SetActive(savedGame.getProgress()["Lila"] == 1);

        ElisaCompleted.enabled = (savedGame.getProgress()["Elisa"] == 1);
        Elisa0.SetActive(savedGame.getProgress()["Elisa"] == 0);
        Elisa1.SetActive(savedGame.getProgress()["Elisa"] == 1);

        LangClass.setLanguage(GlobalGameInfo.language);

    }

    public void resetCharacterCards() {
        RashadCard.SetActive(false);
        LilaCard.SetActive(false);
        ElisaCard.SetActive(false);
        MrCalindasCard.SetActive(false);
        MrsLeeCard.SetActive(false);
    }
    public void selectNPC(string NPC) {

        // Show NPC's character card
        StartWeekContainer.SetActive(true);
        SelectedNPC.text = NPC + "?";
        GlobalGameInfo.SetCurrentNPC(NPC);
        GlobalGameInfo.gotalkFlag = true;
        this.resetCharacterCards();

        // Update the current NPC in the global script
        switch (NPC) {
            case "Rashad":
                RashadCard.SetActive(true);
                CharacterCardName.text = LangClass.getString("rashad_name");
                CharacterCardAgePronouns.text = LangClass.getString("rashad_age_pronouns");
                CharacterCardTitle.text = LangClass.getString("rashad_title");
                CharacterCardDescription.text = LangClass.getString("rashad_description");
                break;
            case "Lila":
                LilaCard.SetActive(true);
                CharacterCardName.text = LangClass.getString("lila_name");
                CharacterCardAgePronouns.text = LangClass.getString("lila_age_pronouns");
                CharacterCardTitle.text = LangClass.getString("lila_title");
                CharacterCardDescription.text = LangClass.getString("lila_description");
                break;
            case "Elisa":
                ElisaCard.SetActive(true);
                CharacterCardName.text = LangClass.getString("elisa_name");
                CharacterCardAgePronouns.text = LangClass.getString("elisa_age_pronouns");
                CharacterCardTitle.text = LangClass.getString("elisa_title");
                CharacterCardDescription.text = LangClass.getString("elisa_description");
                break;
            case "Mr. Calindas":
                MrCalindasCard.SetActive(true);
                CharacterCardName.text = LangClass.getString("mrcalindas_name");
                CharacterCardAgePronouns.text = LangClass.getString("mrcalindas_age_pronouns");
                CharacterCardTitle.text = LangClass.getString("mrcalindas_title");
                CharacterCardDescription.text = LangClass.getString("mrcalindas_description");
                break;
            case "Mrs. Lee":
                MrsLeeCard.SetActive(true);
                CharacterCardName.text = LangClass.getString("mrslee_name");
                CharacterCardAgePronouns.text = LangClass.getString("mrslee_age_pronouns");
                CharacterCardTitle.text = LangClass.getString("mrslee_title");
                CharacterCardDescription.text = LangClass.getString("mrslee_description");
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

    public void GoToPCSetupScene() {
        // Go back to opening screen
        SceneManager.LoadScene("PCSetUp");
    }
}
