using System;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using UnityEngine;
using System.Collections.Generic;

public static class SaveSerial : object {

    public static void SaveGame(Dictionary<string, SavedGame> dataToSave)
    {
        BinaryFormatter bf = new BinaryFormatter(); 

        FileStream file = LoadGameFile();
        
        if (file == null) {
            file = File.Create(Application.streamingAssetsPath 
                    + "/SavedData.dat", 1);
        }

        // FileStream file = File.Create(Application.streamingAssetsPath 
        //             + "/SavedData.dat"); 
        bf.Serialize(file, dataToSave);

        file.Close();

        GlobalGameInfo.gameData = dataToSave;

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
            Debug.Log("There is no save data!");
            return null;
        }
    }

    public static FileStream LoadGameFile()
    {
        if (File.Exists(Application.streamingAssetsPath 
                    + "/SavedData.dat"))
        {
            FileStream file = 
                    File.Open(Application.streamingAssetsPath
                    + "/SavedData.dat", FileMode.Open);
            return file;
        } else {
            return null;
        }
    }

    public static bool IsFileLocked(FileInfo file)
{
    try
    {
        using(FileStream stream = file.Open(FileMode.Open, FileAccess.Read, FileShare.None))
        {
            stream.Close();
        }
    }
    catch (IOException)
    {
        //the file is unavailable because it is:
        //still being written to
        //or being processed by another thread
        //or does not exist (has already been processed)
        return true;
    }

    //file is not locked
    return false;
}

}