using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class StartWeek : MonoBehaviour
{

    static public List<GameObject> savedGamesUI;
    public GameObject prefabSavedGameItem;
    public string[][] savedGamesInfo = new string[3][];
    // Start is called before the first frame update
    void Start()
    {
        savedGamesUI = new List<GameObject>();

        // savedGamesInfo = new List<List<string>>();
        savedGamesInfo[0] = new string[3];
        savedGamesInfo[1] = new string[3];
        savedGamesInfo[2] = new string[3];

        string[] list = new string[3];
        list[0] = "Sara";
        list[1] = "3";
        list[2] = "2";
        savedGamesInfo[0] = list;

        list = new string[3];
        list[0] = "Temmie";
        list[1] = "2";
        list[2] = "4";
        savedGamesInfo[0] = list;
        
        list = new string[3];
        list[0] = "Bob";
        list[1] = "4";
        list[2] = "2";
        savedGamesInfo[0] = list;

        int y_location = 152;

        foreach(string[] savedGame in savedGamesInfo) {
            GameObject savedGameItem = Instantiate(prefabSavedGameItem, new Vector3(0, y_location, 0f), Quaternion.identity);
            if (savedGameItem != null) {
                savedGameItem.transform.SetParent (GameObject.FindGameObjectWithTag("Canvas").transform, false);
                for (int i = 0; i < savedGameItem.transform.childCount; ++i) {
                    Transform currentItem = savedGameItem.transform.GetChild(i);
                    //Search by tag
                    if (currentItem.CompareTag("NumberText"))
                    {
                        // currentItem.text = "1";
                        continue;
                    }
                    if (currentItem.CompareTag("PlayerText"))
                    {
                        // currentItem.text = savedGame[0];
                        continue;
                    }
                    if (currentItem.CompareTag("WeekText"))
                    {
                        // currentItem.text = "Week " + savedGame[1] + ", Day " + savedGame[2];
                        continue;
                    }
        
                }
            }
            y_location -= 135;
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
