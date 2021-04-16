using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//Stores static game info for the infobank
public class GlobalGameInfo
{

    //an enum for notifications
    public enum NOTIFICATION {
        INFO,
        TODO,
        PHONE
    };

    //callbacks for when info items and quests get added so the 
    //phone and app get red notification bubbles
    public delegate void UpdateNotifications(NOTIFICATION noficationType);
    public static UpdateNotifications updateNotifications;

    public static void setNotificationDelegate(UpdateNotifications n){
        if(updateNotifications != null){
            updateNotifications += n;
        } else {
            updateNotifications = n;
        }
        
    }
    
    public static void clearNotificationDelegate(){
        updateNotifications = null;
    }

    public static void decreaseUntaggedInfoObjects(){
        untaggedInfoObjects--;
        if(updateNotifications != null){
            updateNotifications(NOTIFICATION.INFO);
        }
    }

    public static void notificationCallback(NOTIFICATION n){
        if(updateNotifications != null){
            updateNotifications(n);
        }
    }

    public static int getNotificationNumber(NOTIFICATION n){
        switch(n){
            case NOTIFICATION.INFO:
                return untaggedInfoObjects;
            case NOTIFICATION.TODO:
                return untaggedTodoObjects;
            default:
                return untaggedInfoObjects + untaggedTodoObjects;
        }
    }

    //CLASSES FOR PHONE ITEMS - TODOs, INFORMATION, CONTACTs
    public class TodoItem 
    {
        public string title;
        public List<ChecklistItem> checklist;
        public CharacterResources.CHARACTERS character;

        public int completedItems;

        public TodoItem(string title){
            this.title = title;
            this.checklist = new List<ChecklistItem>();
            this.completedItems = 0;
        }

        public TodoItem(string title, CharacterResources.CHARACTERS character){
            this.title = title;
            this.checklist = new List<ChecklistItem>();
            this.character = character;
            this.completedItems = 0;
        }
        
        public ChecklistItem AddToChecklist(string c){
            ChecklistItem ci = new ChecklistItem(c, this);
            this.checklist.Add(ci);
            return ci;
        }
    }

    public class ChecklistItem 
    {
        public string title;
        public bool completed;
        public string id;

        public TodoItem parent;
        public ChecklistItem(string title, TodoItem parent){
            this.title = title;
            this.id = title.GetHashCode().ToString();
            this.parent = parent;
        }

        public void CompleteTask(){
            this.completed = true;
            this.parent.completedItems++;
        }
    }

    public class InfoItem 
    {
        public int day;
        public string description;
        public string character;
        public CharacterResources.CHARACTERS characterEnum;
        public string tagIdentifier;

        public InfoItem(string character, CharacterResources.CHARACTERS characterEnum, int day, string description){
            this.character = character;
            this.characterEnum = characterEnum;
            this.day = day;
            this.description = description;
            string unhashedKey = character + day + description;
            this.tagIdentifier = unhashedKey.GetHashCode().ToString();
        }
    }

    public class CharacterItem
    {
        public string title;
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
            string description,
            string job,
            string location,
            string pronouns, 
            int age,
            float health,
            float time,
            float tech,
            float resources){

            this.title = title;
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

        public void SetCharacterEnum(CharacterResources.CHARACTERS c){
            this.identifier = c;
        }

        public void UpdateStat(string target, float num)
        {
            switch (target)
            {
                case "health":
                    health = GetNewValue(health, num);
                    break;
                case "time":
                    time = GetNewValue(time, num);
                    break;
                case "tech":
                    tech = GetNewValue(tech, num);
                    break;
                case "resources":
                    resources = GetNewValue(resources, num);
                    break;
                default:
                    throw new System.Exception("Wrong Argument");
            }
        }

        private static float GetNewValue(float original, float num)
        {
            float ans = original + num;
            if (ans > 1)
            {
                ans = 1;
            }
            if (ans < 0)
            {
                ans = 0;
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
        GlobalGameInfo.todoList.Add(new TodoItem(title, c));
        untaggedTodoObjects++;
        notificationCallback(NOTIFICATION.TODO);
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
        string description)
    {
        GlobalGameInfo.infoList.Add(new InfoItem(character, characterEnum, day, description));
        untaggedInfoObjects++;
        notificationCallback(NOTIFICATION.INFO);
    }
    
    public static void addNewItemToContactsList(CharacterItem c){
        GlobalGameInfo.contactsList.Add(c.identifier, c);
    }

}
