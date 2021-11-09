using System;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using UnityEngine;
using System.Collections.Generic;

public static class SaveSerial : object {

    public static void SaveGame(List<SavedGame> dataToSave)
    {
        BinaryFormatter bf = new BinaryFormatter(); 
        FileStream file = File.Create(Application.persistentDataPath 
                    + "/SavedData.dat"); 
        bf.Serialize(file, dataToSave);
        file.Close();
        Debug.Log("Game data saved!");
    }

    public static List<SavedGame> LoadGame()
    {
        if (File.Exists(Application.persistentDataPath 
                    + "/SavedData.dat"))
        {
            BinaryFormatter bf = new BinaryFormatter();
            FileStream file = 
                    File.Open(Application.persistentDataPath 
                    + "/SavedData.dat", FileMode.Open);
            List<SavedGame> data = (List<SavedGame>)bf.Deserialize(file);
            file.Close();
            Debug.Log("Game data loaded!");
            return data;
        }
        else
            Debug.LogError("There is no save data!");
            return null;
    }

}