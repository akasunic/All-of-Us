using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class Backstories : MonoBehaviour

{
    private int current_text_counter = 1;

    // Localization Feature
    public Lang LangClass = new Lang(false);

    public Text Textfield;
    public GameObject skipButton;

    public void loadTutorialScene() {

        SceneManager.LoadScene("Basic2DMap");
    }

    void Start()
    {
        Textfield.text = LangClass.getString("backstories_1");
    }


    public void setNextText() {
        switch (current_text_counter) {
            case 1:
                Textfield.text = LangClass.getString("backstories_2");
                current_text_counter++;
                break;
            case 2:
                Textfield.text = LangClass.getString("backstories_3");
                current_text_counter++;
                break;
            case 3:
                Textfield.text = LangClass.getString("backstories_4");
                current_text_counter++;
                break;
            default:
                SceneManager.LoadScene("Tutorial");
                current_text_counter = 1;
                break;
        }
            
    }
    
}
