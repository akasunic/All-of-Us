using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;

[Serializable]
public class SavedGame : object {

    private string name;
    private int week;
    private int day;
    private string language;

    // Explanation on the progress variable:
    // 0 : Player has not started week of NPC
    // 1 : Player is currently playing NPCs week
    // 2: Player has finished week of NPC
    private Dictionary<CharacterResources.CHARACTERS, int> progress;
    private List<GlobalGameInfo.TodoItem> todoList;
    private List<GlobalGameInfo.InfoItem> infoList;
    private Dictionary<CharacterResources.CHARACTERS, GlobalGameInfo.CharacterItem> contactsList;

    private Dictionary<string, bool> tutorialFlags;

    public SavedGame(string playerName, string chosenLanguage) {
        name = playerName;
        language = chosenLanguage;
        week = 0;
        day = 0;
        progress = new Dictionary<CharacterResources.CHARACTERS, int>();
        todoList = new List<GlobalGameInfo.TodoItem>();
        infoList = new List<GlobalGameInfo.InfoItem>();
        contactsList = new Dictionary<CharacterResources.CHARACTERS, GlobalGameInfo.CharacterItem>();

        progress.Add(CharacterResources.CHARACTERS.RASHAD, 0);
        progress.Add(CharacterResources.CHARACTERS.LEE, 0);
        progress.Add(CharacterResources.CHARACTERS.LILA, 0);
        progress.Add(CharacterResources.CHARACTERS.ELISA, 0);
        progress.Add(CharacterResources.CHARACTERS.CALINDAS, 0);

        tutorialFlags = new Dictionary<string, bool>();

        tutorialFlags.Add("StartWeek", false);
        tutorialFlags.Add("Dictionary", false);
        tutorialFlags.Add("Map", false);
        tutorialFlags.Add("TodoList", false);
        tutorialFlags.Add("MyJournal", false);
    }

    public string getName() {
        return name;
    }

    public void setName(string newPlayerName) {
        name = newPlayerName;
    }

    public int getWeek() {
        return week;
    }

    public void incWeek() {
        week += 1;
    }

    public int getDay() {
        return day;
    }

    public void incDay() {
        day += 1;
        if (day > 3) {
            day = 0;
            this.incWeek();
            this.setCharacterDone(GlobalGameInfo.GetCurrentNPC());
        }
    }

    public bool isInMiddleOFQuest() {
        foreach(KeyValuePair<CharacterResources.CHARACTERS, int> pair in progress) {
            if (pair.Value == 1) return true;
        }
        return false;
    }

    public CharacterResources.CHARACTERS getNPCForWeek() {
        foreach(KeyValuePair<CharacterResources.CHARACTERS, int> pair in progress) {
            if (pair.Value == 1) return pair.Key;
        }
        return CharacterResources.CHARACTERS.NONE;
    }

    public void setNPCForWeek(CharacterResources.CHARACTERS NPC) {
        progress[NPC] = 1;
    }

    public string getLanguage() {
        return language;
    }

    public void setLanguage(string newLanguage) {
        language = newLanguage;
    }

    public Dictionary<CharacterResources.CHARACTERS, int> getProgress() {
        return progress;
    }

    public bool getCharacterProgress(CharacterResources.CHARACTERS character) {
        if (progress.ContainsKey(character)) {
            return progress[character] == 1;
        }
        return false;
    }

    public List<GlobalGameInfo.TodoItem> getTodoItems() {
        return todoList;
    }

    public void setTodoItems(List<GlobalGameInfo.TodoItem> items) {
        todoList = items;
    }

    public List<GlobalGameInfo.InfoItem> getInfoItems() {
        return infoList;
    }

    public void setInfoItems(List<GlobalGameInfo.InfoItem> items) {
        infoList = items;
    }

    public Dictionary<CharacterResources.CHARACTERS, GlobalGameInfo.CharacterItem> getContactItems() {
        return contactsList;
    }

    public void setContactItems(Dictionary<CharacterResources.CHARACTERS, GlobalGameInfo.CharacterItem> items) {
        contactsList = items;
    }

    public void setCharacterDone(CharacterResources.CHARACTERS character) {
        progress[character] = 2;
    }

    public void setTutorialFlag(string flag, bool value) {
        tutorialFlags[flag] = value;
    }

    public bool getTutorialFlag(string flag) {
        return tutorialFlags[flag];
    }

}
