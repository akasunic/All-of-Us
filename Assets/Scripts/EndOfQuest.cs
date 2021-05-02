using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;

public class EndOfQuest : MonoBehaviour
{
    private static Dictionary<string, Quest> questMap = new Dictionary<string, Quest>();

    [SerializeField]
    public GameObject endOfQuest;
    public TextMeshProUGUI remainDays;
    public TextMeshProUGUI daysText;
    public TextMeshProUGUI title;
    public TextMeshProUGUI description;
    public GameObject[] pictures;
    public GameObject[] upcomingDays;
    public GameObject[] currentDays;
    public GameObject[] pastDays;

    // Start is called before the first frame update
    void Start()
    {
        if (questMap == null || questMap.Count == 0) {
            questMap = new Dictionary<string, Quest>();
            BuildQuestMap();
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void EndQuest(string questTitle)
    {
        Quest quest;
        if (!questMap.TryGetValue(questTitle, out quest))
        {
            throw new System.Exception("Cannot find the Quest Title \"" +
                questTitle + "\"");
        }

        // set texts
        title.text = questTitle;
        description.text = quest.description;
        remainDays.text = GlobalGameInfo.GetRemainDays().ToString();
        if (GlobalGameInfo.GetRemainDays() <= 1)
        {
            daysText.text = "DAY";
        }

        // set character and picture
        for (int i = 0; i < pictures.Length; i++)
        {
            pictures[i].SetActive(false);
        }
        switch (quest.character) {
            case "Rashad":
                pictures[0].SetActive(true);
                break;
            case "Lila":
                pictures[1].SetActive(true);
                break;
            case "Calindas":
                pictures[2].SetActive(true);
                break;
            case "Lee":
                pictures[3].SetActive(true);
                break;
            case "Elisa":
                pictures[4].SetActive(true);
                break;
            default:
                throw new System.Exception("Cannot find Character. Check EndOfQuest.cs");
        }

        // set bottom days
        int today = GlobalGameInfo.GetCurrentDay();

        for (int i = 0; i <= today; i++)
        {
            upcomingDays[i].SetActive(false);
        }
        for (int i = today + 1; i < upcomingDays.Length; i++)
        {
            upcomingDays[i].SetActive(true);
        }
        for (int i = 0; i < currentDays.Length; i++)
        {
            if (i == today)
            {
                currentDays[i].SetActive(true);
            }
            else
            {
                currentDays[i].SetActive(false);
            }
        }

        // activate the screen
        endOfQuest.SetActive(true);
        
        Debug.Log(questTitle);
        GlobalGameInfo.FinishTask(questTitle);
        // Data collection
        DataCollection.LogEvent("Quest Completed! Title: " + questTitle + ", Character: " + quest.character, "QUEST COMPLETION");
    }

    public void CloseEndOfQuest()
    {
        endOfQuest.SetActive(false);
        // increaes the engagement
        GlobalGameInfo.IncreaseEngagement();
        if (GlobalGameInfo.GetCurrentDay() == 3 &&
            InkFileManager.CanAdvanceDay()) {
            SceneManager.LoadScene("Ending");
        }
    }

    public class Quest
    {
        public string description;
        public string character;

        public Quest(string newDescription, string newCharacter)
        {
            description = newDescription;
            character = newCharacter;
        }
    }

    private void BuildQuestMap()
    {
        questMap.Add("A Little Help from Your Friends", new Quest("You found a library assistant in the YA section! Check in with Rashad and see how he’s doing.", "Rashad"));
        questMap.Add("Under Pressure", new Quest("You helped Rashad learn about race based stress! Check in later and see how he’s doing.", "Rashad"));
        questMap.Add("Running on Empty", new Quest("You helped Rashad figure out the next steps for getting therapy. Check in later to see how he’s feeling.", "Rashad"));
        questMap.Add("A New Horizon", new Quest("You helped Rashad figure out the benefits of intergenerational outreach. Great work this week!", "Rashad"));

        questMap.Add("LGBTQ+ Support", new Quest("You helped Lila with logistics for her first community event! Check in and see if she needs anything.", "Lila"));
        questMap.Add("Making time for what's important", new Quest("You helped Lila learn about her family health history options! See how she’s doing.", "Lila"));
        questMap.Add("Is this normal?", new Quest("You helped Lila get information and support for her feminine health care needs. Check in and see how she feels!", "Lila"));
        questMap.Add("Where are my people?", new Quest("You helped Lila make new connections in the neighborhood! Great work this week!", "Lila"));

        questMap.Add("What the Community Really Needs", new Quest("Mr. Calindas feels like he’s prepared for the Health Fair! Check in later to see if he needs anything else.", "Calindas"));
        questMap.Add("Mother Calindas' New Home", new Quest("Mr. Calindas feels like his Mother will love the neighborhood! Check in and see how he’s doing!", "Calindas"));
        questMap.Add("Tech Support for Mom", new Quest("You helped Mr. Calindas find some program options for Mother Calindas. Check in to see if he needs anything else!", "Calindas"));
        questMap.Add("Fun Day for Brooklyn", new Quest("Mr. Calindas’ family feels like the Block Party is going to be accessible for his granddaughter! Great work this week!", "Calindas"));

        questMap.Add("Help Mrs. Lee verify that Eddie’s medication is correct", new Quest("You helped Mrs. Lee figure out the correct prescription for her grandson, Eddie. Check in with her, and see how she’s doing.", "Lee"));
        questMap.Add("Empower Mrs. Lee to schedule a doctor’s appointment", new Quest("You encouraged Mrs. Lee to seek treatment for her headaches! Check in on her and see if she needs anything else.", "Lee"));
        questMap.Add("Help Mrs. Lee prepare for her doctor's appointment", new Quest("Mrs. Lee is prepared for her doctor’s appointment! You should check in with her to see how she’s doing.", "Lee"));
        questMap.Add("Encourage Mrs. Lee to continue her health journey", new Quest("Mrs. Lee is feeling in charge of her health! Great work this week!", "Lee"));

        questMap.Add("Find out more info on career fairs", new Quest("You helped Elisa get ready for her career fair and learn networking tips. Check in with her and see how she is.", "Elisa"));
        questMap.Add("Find out how to get vaccination records", new Quest("You helped Elisa with her immunization questions! Stop by and ask if she needs anything.", "Elisa"));
        questMap.Add("Find a mentor for Elisa", new Quest("You helped Elisa get support as a first generation college student. Check in and see how she’s feeling.", "Elisa"));
        questMap.Add("Find out more info on diabetes", new Quest("You helped Elisa and her Mom with diabetes information. Great work this week!", "Elisa"));
    }
}
