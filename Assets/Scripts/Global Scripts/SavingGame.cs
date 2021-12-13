using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;

public static class SavingGame : object {

    // Function to Save Game Progress for current user

    public static void SaveGameProgress() {
        Debug.Log("SAVE GAME PROGRESS");
        // *******************************************
        // ******* SAVING PROGRESS IN THE GAME *******
        // *******************************************
        Dictionary<string, SavedGame> currentData = SaveSerial.LoadGame();
        SavedGame current = GlobalGameInfo.savedGame;

        // Update and save day
        // GlobalGameInfo.SetCurrentDay(GlobalGameInfo.GetCurrentDay());
        current.incDay();
        // Update and save progress
        if (GlobalGameInfo.GetCurrentDay() == 4) {
            current.setCharacterDone(GlobalGameInfo.GetCurrentNPC());
        }
        // Save todolist
        current.setTodoItems(GlobalGameInfo.todoList);
        // Save my journal
        // current.setInfoItems(GlobalGameInfo.infoList);
        // Save contacts
        current.setContactItems(GlobalGameInfo.contactsList);
        Debug.Log("contacts are saving!");
        // Save quests
        // TODO

        // Save tutorial flags
        current.setTutorialFlag("StartWeek", GlobalGameInfo.startWeekFlag);
        current.setTutorialFlag("Dictionary", GlobalGameInfo.dictionaryFlag);
        current.setTutorialFlag("Map", GlobalGameInfo.mapFlag);
        current.setTutorialFlag("TodoList", GlobalGameInfo.todolistFlag);
        current.setTutorialFlag("MyJournal", GlobalGameInfo.myjournalFlag);

        currentData[GlobalGameInfo.name] = current;
        // Pronouns are not used currently in the game
        SaveSerial.SaveGame(currentData);

    }

    public static void setNPCOfCurrentQuest(string NPC) {
        Dictionary<string, SavedGame> currentData = SaveSerial.LoadGame();
        SavedGame current = GlobalGameInfo.savedGame;
        current.setNPCOfCurrentQuest(NPC);
        currentData[GlobalGameInfo.name] = current;
        SaveSerial.SaveGame(currentData);
    }

}