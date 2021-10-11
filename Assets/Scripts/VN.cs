using TMPro;
using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;
using System.IO;
using System.Collections.Generic;

public class VN : MonoBehaviour
{
    public TextMeshProUGUI buildingName;
    
    // Localization Feature
    public Lang LangClass = new Lang(false);

    // Start is called before the first frame update
    void Start()
    {
        LangClass.setLanguage(GlobalGameInfo.language);
        
        buildingName.text = LangClass.getString("name_field");

        LangClass.setLanguage(GlobalGameInfo.language);

        switch (SceneManager.GetActiveScene().name) {
            case ("CommunityVN"):
                buildingName.text = LangClass.getString("community_center");
                break;
            case ("HealthVN"):
                buildingName.text = LangClass.getString("health_clinic");
                break;
            case ("LibraryVN"):
                buildingName.text = LangClass.getString("library");                   
                break;
        }

    }

    // Update is called once per frame
    void Update()
    {

    }

}
