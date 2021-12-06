using System;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using UnityEngine;
using System.Collections.Generic;

public static class SaveSerial : object {

    public static void SaveGame(Dictionary<string, SavedGame> dataToSave)
    {
        Debug.Log("AAA");
        BinaryFormatter bf = new BinaryFormatter(); 
        Debug.Log("BBB");
        
        FileStream file = File.Create(Application.streamingAssetsPath 
                    + "/SavedData.dat"); 
        Debug.Log("CCC");
        bf.Serialize(file, dataToSave);
        Debug.Log("DDD");
        file.Close();
        Debug.Log("EEE");
        Debug.Log("Game data saved!");
    }

    public static Dictionary<string, SavedGame> LoadGame()
    {
        if (File.Exists(Application.streamingAssetsPath 
                    + "/SavedData.dat"))
        {
            BinaryFormatter bf = new BinaryFormatter();
            FileStream file = 
                    File.Open(Application.streamingAssetsPath
                    + "/SavedData.dat", FileMode.Open);
            Dictionary<string, SavedGame> data = (Dictionary<string, SavedGame>)bf.Deserialize(file);
            file.Close();
            Debug.Log("Game data loaded!");
            return data;
        } else {
            Debug.LogError("There is no save data!");
            return null;
        }
    }

}