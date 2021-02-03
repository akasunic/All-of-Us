using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

/**
 * LocalJsonDataController
 * saves data as a json file
 * if we have a file, append it
 * or not, make a file and write it
 * 
 * Call a SavaData function to save data
 * SaveData("TIEM STAMP(String)", "EVENT TYPE(String)", "EVENT CONTENT(String");
 * 
 * the location of a saved file, check this document
 * https://docs.unity3d.com/ScriptReference/Application-persistentDataPath.html
 * Windows OS: %userprofile%\AppData\Local\Packages\<productname>\LocalState
 * iOS: /var/mobile/Containers/Data/Application/<guid>/Documents
 * Android: /storage/emulated/0/Android/data/<packagename>/files
 * Mac OS: ~/Library/Application Support/company name/product name
 */
public static class LocalJsonDataController
{
    /**
     * public function
     * string timeStamp
     * string eventType
     * string eventContent
     */
    public static void SaveData(string timeStamp, string eventType, string eventContent)
    {
        JsonData jsonData = new JsonData(timeStamp, eventType, eventContent);
        string stringJsonData = ObjectToJson(jsonData);
        SaveJsonFile(stringJsonData);
    }

    private static string ObjectToJson(object obj)
    {
        return JsonUtility.ToJson(obj);
    }

    private static void SaveJsonFile(string data)
    {
        string path = Application.persistentDataPath + "/aou_local.json";
        FileStream fileStream = new FileStream(string.Format(path), FileMode.Append, FileAccess.Write);
        StreamWriter streamWriter = new StreamWriter(fileStream, System.Text.Encoding.UTF8);
        streamWriter.WriteLine(data);
        streamWriter.Flush();
        streamWriter.Close();
        fileStream.Close();
        Debug.Log("saved data");
    }

    [System.Serializable]
    public class JsonData
    {
        public string timeStamp;
        public string eventType;
        public string eventContent;

        public JsonData(string timeStamp, string eventType, string eventContent)
        {
            this.timeStamp = timeStamp;
            this.eventType = eventType;
            this.eventContent = eventContent;
        }
    }
}
