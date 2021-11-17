using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using Fungus;

/// <summary>
/// Handles the receiving functions for the Flowchart Ink message handlers.
/// </summary>
[RequireComponent(typeof(Flowchart))]
public class InkMessageHandler : MonoBehaviour
{
    private Flowchart _fc;

    private void Start() {
        _fc = GetComponent<Flowchart>();
    }

    /// <summary>
    /// Adds a new notifcation to the notifications list
    /// </summary>
    public void AddNotification(string notifValue) {

        string[] notifInfo = notifValue.Split('_');

        try {
            if (notifInfo.Length == 3) {
                GlobalGameInfo.addNewItemToInfoList(notifInfo[0],
                    HelperFunctions.CharacterFromString(notifInfo[0]),
                    GlobalGameInfo.GetCurrentDay() + 1, notifInfo[2]);
            } else if (notifInfo.Length == 4) {
                Quest q = new Quest();
                q.questGiver = HelperFunctions.CharacterFromString(notifInfo[0]);
                q.description = notifInfo[2];

                q.questId = ReadQuestTitle(notifInfo[3] + ".txt");

                GlobalGameInfo.addNewItemToInfoList(notifInfo[0],
                    HelperFunctions.CharacterFromString(notifInfo[0]),
                    GlobalGameInfo.GetCurrentDay() + 1, notifInfo[2], q);
                // QuestManager.AddQuest(notifInfo[3]);
            } else {
                throw new System.Exception();
            }
        } catch {
            string errormsg = "Error parsing new notification string.\n " +
                "Expected string of the form character_day_description " +
                "or character_day_description_questInfoTxtFile\n" +
                "Instead received:";
            foreach (string s in notifInfo) {
                errormsg += "\n" + s;
            }
            Debug.LogError(errormsg);
        }
    }

    /// <summary>
    /// Advances the quest in the InkFileManager
    /// </summary>
    public void AdvanceQuest() {
        if (!InkFileManager.instance.TryAdvanceQuest()) {
            Debug.LogWarning("Tried to advance quest but failed. Should this " +
                "have been a turnin?");
        }
    }

    /// <summary>
    /// Opens the file at Resources/Quest Files/fileName and reads
    /// the first line to get the quest title.
    /// </summary>
    /// <param name="fileName"></param>
    /// <returns></returns>
    private string ReadQuestTitle(string fileName) {
        fileName = fileName.Remove(fileName.Length - 4);
        TextAsset questFile = Resources.Load<TextAsset>("Quest Files/" + fileName);

        string txt = questFile.text;
        StringReader reader = new StringReader(txt);
        string s = reader.ReadLine();
        reader.Close();
        return s;
    }

    /// <summary>
    /// Adds a a new contact to the contacts list
    /// </summary>
    public void AddContact() {

        string contactString = _fc.GetStringVariable("new_contact");
        contactString = contactString.ToLower();

        switch (HelperFunctions.CharacterFromString(contactString)) {
            case CharacterResources.CHARACTERS.RASHAD:
                GlobalGameInfo.addNewItemToContactsList(CharacterResources.Rashad());
                break;
            case CharacterResources.CHARACTERS.LILA:
                GlobalGameInfo.addNewItemToContactsList(CharacterResources.Lila());
                break;
            case CharacterResources.CHARACTERS.CALINDAS:
                GlobalGameInfo.addNewItemToContactsList(CharacterResources.Calindas());
                break;
            case CharacterResources.CHARACTERS.ELISA:
                GlobalGameInfo.addNewItemToContactsList(CharacterResources.Elisa());
                break;
            case CharacterResources.CHARACTERS.LEE:
                GlobalGameInfo.addNewItemToContactsList(CharacterResources.Lee());
                break;
        }
    }

    /// <summary>
    /// Adds a quest to the quest list. Currently should just be the name of the quest
    /// that we'll look up later.
    /// </summary>
    //public void AddQuest() {
    //    string questName = _fc.GetStringVariable("new_quest");
    //    string[] questInfo = questName.Split('_');
    //    try {
    //        QuestManager.AddQuest(questInfo[0], questInfo[1], questInfo[2]);
    //    } catch {
    //        string errormsg = "Error parsing new quest string.\n " +
    //            "Expected string of the form questId_questGiver\n " +
    //            "Instead received:";
    //        foreach (string s in questInfo) {
    //            errormsg += "\n" + s;
    //        }
    //        Debug.LogError(errormsg);
    //    }
    //}

    /// <summary>
    /// New version of Add Quests reads quest info from a file.
    /// Switched to file reading as the amount of relevant quest info increased.
    /// </summary>
    public void AddQuest() {
        string fileName = _fc.GetStringVariable("new_quest");
        fileName = fileName.Remove(fileName.Length - 4);
        Quest q = new Quest();
        TextAsset questFile = Resources.Load<TextAsset>("Quest Files/" + fileName);

        string txt = questFile.text;
        StringReader reader = new StringReader(txt);
        string line;

        // Quest Title
        line = reader.ReadLine();
        q.questId = line;
        q.description = line; // RE-EVALUATE WHAT TO PUT HERE

        // Quest Giver
        line = reader.ReadLine();
        q.questGiver = HelperFunctions.CharacterFromString(line);

        // Health exp, should be a 0 or 1
        line = reader.ReadLine();
        q.incHealth = ParseBitString(line, "health");

        // Time exp
        line = reader.ReadLine();
        q.incTime = ParseBitString(line, "time");

        // Tech exp
        line = reader.ReadLine();
        q.incTech = ParseBitString(line, "tech");

        // Resources exp
        line = reader.ReadLine();
        q.incResources = ParseBitString(line, "resources");

        // Subtasks, not necessarily a fixed amt
        List<string> subtasks = new List<string>();
        line = reader.ReadLine();
        while (line != null && line.Trim() != "") {
            subtasks.Add(line);
            line = reader.ReadLine();
        }
        GlobalGameInfo.addNewItemToTodoList(q.questId, q.questGiver);
        foreach (string subtask in subtasks) {
            GlobalGameInfo.addNewTodoToExistingList(q.questId,
                subtask);
        }
        reader.Close();

        QuestManager.AddQuest(q);
    }

    private bool ParseBitString(string s, string expTypeMsg = "") {
        switch (s) {
            case "0":
                return false;
            case "+1":
                return true;
            default:
                Debug.LogError("Error when parsing " + expTypeMsg +
                    " exp bit string. Expected 0 or +1, but instead received " +
                    s);
                return false;
        }
    }
}
