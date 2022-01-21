using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//Stores static game info for the infobank
public static class GlobalGameInfo
{

    // Tutorial Flags
    public static bool startWeekFlag = false;
    public static bool dictionaryFlag = false;
    public static bool mapFlag = false;
    public static bool todolistFlag = false;
    public static bool myjournalFlag = false;

    public static string selectedAppForTutorial = "";

    // PLAYER INFORMATION
    public static bool goToSelectProfileFlag = false;
    public static bool gotalkFlag = false;
    public static bool weekEndedFlag = false;
    public static bool gameEndedFlag = false;
    public static int journalItemsLearnedTodayNum = 0;
    
    public static SavedGame savedGame;

    // CURRENT DAY (0 to 4)
    // 0 is Monday and 4 is Friday
    private static int currentDay = 0;
    // CURRENT WEEK (0 to 4)
    private static int currentWeek = 0;

    // CURRENT NPC FOR THE WEEK
    private static CharacterResources.CHARACTERS currentNPC;

    // CURRENT TASK FOR THE DAY (as string)
    private static string currentTask = "";
    // player's name
    public static string name = "";
    // player's pronouns
    public static string pronouns = "";
    public static int pronounsInt = 0;
    // Game's language
    public static Dictionary<string, int> langDict = new Dictionary<string, int>(){{"English", 0}, {"Spanish", 1}};

    public static string language = "English";
    public static int languageInt = 0;

    // engagement level
    private static readonly int MAX_ENGAGEMENT = 20;
    private static int engagement = 0;

    // Data of all saved slots
    public static Dictionary<string, SavedGame> gameData;
        
    // Localization Feature
    public static Lang LangClass = new Lang();

    //an enum for notifications
    public enum NOTIFICATION {
        INFO,
        TODO,
        PHONE,
        NONE
    };

    private static bool newDay = false;

    //callbacks for when info items and quests get added so the 
    //phone and app get red notification bubbles
    public delegate void UpdateNotifications(NOTIFICATION noficationType);
    public static UpdateNotifications updateNotifications;

    public static void toggleNewDay() {
        newDay = !newDay;
    }

    public static bool getNewDayVariable() {
        return newDay;
    }

    public static void setNotificationDelegate(UpdateNotifications n) {
        if (updateNotifications != null) {
            updateNotifications += n;
        } else {
            updateNotifications = n;
        }

    }

    public static void clearNotificationDelegate() {
        updateNotifications = null;
    }

    public static void decreaseUntaggedInfoObjects() {
        untaggedInfoObjects--;
        if (updateNotifications != null) {
            updateNotifications(NOTIFICATION.INFO);
        }
    }

    public static void decreaseUntaggedTodoObjects() {
        untaggedTodoObjects--;
        if (updateNotifications != null) {
            updateNotifications(NOTIFICATION.TODO);
        }
    }

    public static void notificationCallback(NOTIFICATION n) {
        if (updateNotifications != null) {
            updateNotifications(n);
        }
    }

    public static int getNotificationNumber(NOTIFICATION n) {
        switch (n) {
            case NOTIFICATION.INFO:
                return untaggedInfoObjects;
            case NOTIFICATION.TODO:
                return untaggedTodoObjects;
            default:
                return untaggedInfoObjects + untaggedTodoObjects;
        }
    }

    //CLASSES FOR PHONE ITEMS - TODOs, INFORMATION, CONTACTs
    [System.Serializable]
    public class TodoItem
    {
        public string title;
        public List<ChecklistItem> checklist;
        public CharacterResources.CHARACTERS character;

        public int dayAssigned;
        public int completedItems;
        public bool showNotification;

        public bool complete;

        public TodoItem(string title) {
            this.title = title;
            this.dayAssigned = 0;
            this.checklist = new List<ChecklistItem>();
            this.completedItems = 0;
            this.showNotification = true;
            this.complete = false;
        }

        public TodoItem(string title, CharacterResources.CHARACTERS character, int dayAssigned) {
            this.dayAssigned = dayAssigned;
            this.title = title;
            this.checklist = new List<ChecklistItem>();
            this.character = character;
            this.completedItems = 0;
            this.showNotification = true;
        }

        public string GetDayAssignedAsString()
        {
            switch (dayAssigned)
            {
                case 0:
                    return LangClass.getString("monday");
                case 1:
                    return LangClass.getString("tuesday");
                case 2:
                    return LangClass.getString("wednesday");
                case 3:
                    return LangClass.getString("thursday");
                case 4:
                    return LangClass.getString("friday");
                default:
                    return LangClass.getString("monday");
            }
        }

        public ChecklistItem AddToChecklist(string c) {
            ChecklistItem ci = new ChecklistItem(c, this);
            this.checklist.Add(ci);
            return ci;
        }

        public void CompleteTask(){
            this.complete = true;
        }
    }

    public static void FinishTask(string taskName){
        foreach(TodoItem task in todoList){
            if(task.title == taskName){
                task.CompleteTask();
                break;
            }
        }
    }

    [System.Serializable]
    public class ChecklistItem
    {
        public string title;
        public bool completed;
        public string id;

        public TodoItem parent;
        public ChecklistItem(string title, TodoItem parent) {
            this.title = title;
            this.id = title.GetHashCode().ToString();
            this.parent = parent;
        }

        public void CompleteTask() {
            this.completed = true;
            this.parent.completedItems++;
        }
    }
    
    [System.Serializable]
    public class InfoItem
    {
        public int day;
        public string description;
        public string character;
        public CharacterResources.CHARACTERS characterEnum;
        public string tagIdentifier;
        public bool showNotification;
        public readonly Quest quest;
        public int timesViewed;

        // public InfoItem(string character, CharacterResources.CHARACTERS characterEnum, int day, string description) {
        //     this.timesViewed = 0;
        //     this.character = character;
        //     this.characterEnum = characterEnum;
        //     this.day = day;
        //     this.description = description;
        //     string unhashedKey = character + day + description;
        //     this.tagIdentifier = unhashedKey.GetHashCode().ToString();
        //     this.showNotification = true;
        // }

        public InfoItem(string character, CharacterResources.CHARACTERS characterEnum,
            int day, string description, Quest quest) {
            this.timesViewed = 0;
            this.character = character;
            this.characterEnum = characterEnum;
            this.day = day;
            this.description = description;
            string unhashedKey = character + day + description;
            this.tagIdentifier = unhashedKey.GetHashCode().ToString();
            this.showNotification = true;
            this.quest = quest;
        }
    }

    [System.Serializable]
    public class CharacterItem
    {
        public string title;
        public string shortname;
        public string description;
        public string job;
        public string location;
        public string pronouns;
        public int age;
        public float health;
        public float time;
        public float tech;
        public float resources;
        public CharacterResources.CHARACTERS identifier;

        public CharacterItem(
            string title,
            string shortname,
            string description,
            string job,
            string location,
            string pronouns,
            int age,
            float health,
            float time,
            float tech,
            float resources) {

            this.title = title;
            this.shortname = shortname;
            this.description = description;
            this.job = job;
            this.location = location;
            this.pronouns = pronouns;
            this.age = age;
            this.health = health;
            this.time = time;
            this.tech = tech;
            this.resources = resources;
        }

        public void SetCharacterEnum(CharacterResources.CHARACTERS c) {
            this.identifier = c;
        }

        public void UpdateStat(string target)
        {
            switch (target)
            {
                case "health":
                    health = GetNewValue(health);
                    break;
                case "time":
                    time = GetNewValue(time);
                    break;
                case "tech":
                    tech = GetNewValue(tech);
                    break;
                case "resources":
                    resources = GetNewValue(resources);
                    break;
                default:
                    throw new System.Exception("Wrong Argument");
            }
        }

        //needed to fix compile error
        public void UpdateStat(string target, int val)
        {
            switch (target)
            {
                case "health":
                    health = GetNewValue(health);
                    break;
                case "time":
                    time = GetNewValue(time);
                    break;
                case "tech":
                    tech = GetNewValue(tech);
                    break;
                case "resources":
                    resources = GetNewValue(resources);
                    break;
                default:
                    throw new System.Exception("Wrong Argument");
            }
        }

        private static float GetNewValue(float original)
        {
            // 5 levels total
            // Starts from 0 to 1. Increase by 0.2
            float num = 0.2f;

            float ans = original + num;
            if (ans > 1.0f)
            {
                ans = 1.0f;
            }
            if (ans < 0.0f)
            {
                ans = 0.0f;
            }
            return ans;
        }
    }

    public static List<TodoItem> todoList = new List<TodoItem>();
    public static List<InfoItem> infoList = new List<InfoItem>();
    public static Dictionary<CharacterResources.CHARACTERS, CharacterItem> contactsList = new Dictionary<CharacterResources.CHARACTERS, CharacterItem>();
    public static int untaggedTodoObjects = 0;
    public static int untaggedInfoObjects = 0;

    public static void addNewItemToTodoList(
        string title, CharacterResources.CHARACTERS c)
    {
        Debug.Log("the notifiation callback should have happend");
        GlobalGameInfo.todoList.Add(new TodoItem(title, c, GetCurrentDay()));
        untaggedTodoObjects++;
        notificationCallback(NOTIFICATION.TODO);

        // Data collection
        DataCollection.LogEvent("Quest added! Quest title: " + title + ", Character: " + c, "QUEST ADDED");
    }

    public static ChecklistItem addNewTodoToExistingList(string title, string checklistitem)
    {
        TodoItem t = GlobalGameInfo.todoList.Find(item => item.title == title);
        return t.AddToChecklist(checklistitem);
    }

    public static void addNewItemToInfoList(
        string character,
        CharacterResources.CHARACTERS characterEnum,
        int day,
        string description,
        Quest quest = null)
    {
        // It seems like that for wrong answers, quest will be null. For correct quest answers, quest will be nonnull.

        GlobalGameInfo.infoList.Add(new InfoItem(character, characterEnum, day, description, quest));

        untaggedInfoObjects++;
        notificationCallback(NOTIFICATION.INFO);

        journalItemsLearnedTodayNum++;
        // Data collection
        DataCollection.LogEvent("Journal info added! Info: " + description + ", Character: " + character, "JOURNAL INFO");
    }

    public static void initializeContactsList()
    {
        // If its not initialized yet, then add all the characters
        if (GlobalGameInfo.contactsList.Count != 5)
        {
            CharacterItem lila = CharacterResources.Lila();
            CharacterItem rashad = CharacterResources.Rashad();
            CharacterItem elisa = CharacterResources.Elisa();
            CharacterItem calindas = CharacterResources.Calindas();
            CharacterItem lee = CharacterResources.Lee();
            GlobalGameInfo.contactsList.Add(lila.identifier, lila);
            GlobalGameInfo.contactsList.Add(rashad.identifier, rashad);
            GlobalGameInfo.contactsList.Add(elisa.identifier, elisa);
            GlobalGameInfo.contactsList.Add(calindas.identifier, calindas);
            GlobalGameInfo.contactsList.Add(lee.identifier, lee);
        }
    }

    public static void addNewItemToContactsList(CharacterItem c) {
        if(!GlobalGameInfo.contactsList.ContainsKey(c.identifier))
        {
            GlobalGameInfo.contactsList.Add(c.identifier, c);
        }
    }
        

    public static int GetCurrentDay()
    {
        return currentDay;
    }

    public static string GetCurrentDayString()
    {
        switch (currentDay) 
        {
            case 0:
                return "Monday";
            case 1:
                return "Tuesday";
            case 2:
                return "Wednesday";
            case 3:
                return "Thursday";
            case 4:
                return "Friday";
            default:
                return "NONE";
        }

    }
    public static void SetCurrentDay(int day) {
        currentDay = day;
    }

    // Type can be "short" for MON, TUE, etc. or "long" for "Monday", "Tuesday", etc.
    public static string GetCurrentDayAsString(string dayType)
    {
        

        string day = "";
        switch (currentDay) {
            case 0:
                if (dayType == "short") {
                    day = LangClass.getString("monday_short");
                } else {
                    day = LangClass.getString("monday");
                }
                break;
            case 1:
                if (dayType == "short") {
                    day = LangClass.getString("tuesday_short");
                } else {
                    day = LangClass.getString("tuesday");
                }
                break;
            case 2:
                if (dayType == "short") {
                    day = LangClass.getString("wednesday_short");
                } else {
                    day = LangClass.getString("wednesday");
                }
                break;
            case 3:
                if (dayType == "short") {
                    day = LangClass.getString("thursday_short");
                } else {
                    day = LangClass.getString("thursday");
                }
                break;
            case 4:
                if (dayType == "short") {
                    day = LangClass.getString("friday_short");
                } else {
                    day = LangClass.getString("friday");
                }
                break;
            default:
                break;
        }
        return day;
    }

    public static int GetCurrentWeek()
    {
        return currentWeek;
    }

    public static void SetCurrentWeek(int week) {
        currentWeek = week;
    }

    public static string GetPlayerName()
    {
        return name;
    }

    public static void SetPlayerName(string playerName) {
        name = playerName;
    }

    public static CharacterResources.CHARACTERS GetCurrentNPC()
    {
        return currentNPC;
    }

    public static void SetCurrentNPC(CharacterResources.CHARACTERS NPC) {
        currentNPC = NPC;
    }

    public static string GetCurrentTask()
    {
        return currentTask;
    }

    public static void SetCurrentTask(string task) {
        currentTask = task;
    }

    public static int GetRemainDays()
    {
        return 4 - currentDay;
    }

    public static void IncreaseDay()
    {
        currentDay++;
    
        // If week has ended
        if (currentDay > 3)
        {
            currentDay = 0;
            currentWeek++;
            weekEndedFlag = true;
        }
    }

    // call this function using GlobalGameInfo.GetEngagement()
    public static int GetEngagement()
    {
        return engagement;
    }

    // call this function using GameManager.Instance.IncreaseEngagement()
    public static void IncreaseEngagement()
    {
        if (engagement < MAX_ENGAGEMENT)
        {
            engagement++;
        }
        Debug.Log("New Engagement = " + engagement);
    }

    public static void SeeAllTodoItems(){
        foreach(TodoItem item in todoList){
            if(item.showNotification){
                decreaseUntaggedTodoObjects();
            }
            item.showNotification = false;
        }
    }
}
