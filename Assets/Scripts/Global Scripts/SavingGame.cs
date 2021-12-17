using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;

public static class SavingGame : object {

    // Function to Save Game Progress for current user

    public static void SaveGameProgress() {
        // *******************************************
        // ******* SAVING PROGRESS IN THE GAME *******
        // *******************************************
        Dictionary<string, SavedGame> currentData = GlobalGameInfo.gameData;
        SavedGame current = GlobalGameInfo.savedGame;
        // Update and save day (progress is updated within incDay() call)
        Debug.Log("current day " + current.getDay());
        Debug.Log("globalgameinfo day " + GlobalGameInfo.GetCurrentDay());
        current.incDay();
        GlobalGameInfo.IncreaseDay();
        Debug.Log("current day after " + current.getDay());
        Debug.Log("globalgameinfo day after " + GlobalGameInfo.GetCurrentDay());
        
        // Save todolist
        current.setTodoItems(GlobalGameInfo.todoList);
        // Save my journal
        current.setInfoItems(GlobalGameInfo.infoList);
        // Save contacts
        current.setContactItems(GlobalGameInfo.contactsList);
        // Save quests
        // TODO

        // Save tutorial flags
        current.setTutorialFlag("StartWeek", GlobalGameInfo.startWeekFlag);
        current.setTutorialFlag("Dictionary", GlobalGameInfo.dictionaryFlag);
        current.setTutorialFlag("Map", GlobalGameInfo.mapFlag);
        current.setTutorialFlag("TodoList", GlobalGameInfo.todolistFlag);
        current.setTutorialFlag("MyJournal", GlobalGameInfo.myjournalFlag);

        // Pronouns are not used currently in the game

        // Update current data before saving
        currentData[GlobalGameInfo.name] = current;

        // Updating the global variables in case playing continues
        GlobalGameInfo.savedGame = current;
        GlobalGameInfo.gameData = currentData;

        SaveSerial.SaveGame(currentData);

    }

    public static void LoadGameProgress(SavedGame savedGame) {
        // Update global variables
        GlobalGameInfo.SetPlayerName(savedGame.getName());
        GlobalGameInfo.SetCurrentDay(savedGame.getDay());
        GlobalGameInfo.SetCurrentWeek(savedGame.getWeek());
        GlobalGameInfo.language = savedGame.getLanguage();
        
        // Loading phone info
        GlobalGameInfo.todoList = savedGame.getTodoItems();
        GlobalGameInfo.infoList = savedGame.getInfoItems();
        GlobalGameInfo.contactsList = savedGame.getContactItems();

        // Loading tutorial flags
        GlobalGameInfo.startWeekFlag = savedGame.getTutorialFlag("StartWeek");
        GlobalGameInfo.dictionaryFlag = savedGame.getTutorialFlag("Dictionary");
        GlobalGameInfo.mapFlag = savedGame.getTutorialFlag("Map");
        GlobalGameInfo.todolistFlag = savedGame.getTutorialFlag("TodoList");
        GlobalGameInfo.myjournalFlag = savedGame.getTutorialFlag("MyJournal");

        GlobalGameInfo.savedGame = savedGame;
        // TODO add pronouns later
    }

    public static void setNPCOfCurrentQuest(string NPC) {
        Dictionary<string, SavedGame> currentData = GlobalGameInfo.gameData;
        SavedGame current = GlobalGameInfo.savedGame;
        current.setNPCForWeek(NPC);
        GlobalGameInfo.savedGame = current;
        currentData[GlobalGameInfo.name] = current;
        SaveSerial.SaveGame(currentData);
    }

}