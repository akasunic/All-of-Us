using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using System.Reflection;
using System.Threading;

public class Turnin : MonoBehaviour
{

    public Sprite continueClickable;
    public Sprite continueUnclickable;

    public Sprite libraryBackground;
    public Sprite communityCenterBackground;
    public Sprite healthCenterBackground;

    public Sprite rashadGiver;
    public Sprite rashadAnswer;

    public Sprite elisaGiver;
    public Sprite elisaAnswer;

    public Sprite msleeGiver;
    public Sprite msleeAnswer;

    public Sprite calindasGiver;
    public Sprite calindasAnswer;

    public Sprite lilaGiver;
    public Sprite lilaAnswer;

    public Image giverPerson;
    public Text giverName;
    public Text questTitle;

    public Text option1;
    public Text option2;
    public Text option3;
    public Text option4;
    private Text[] options;

    public Image option1Character;
    public Image option2Character;
    public Image option3Character;
    public Image option4Character;
    private Image[] optionCharacters;

    private Color optionUnselected = Color.white;
    private Color optionSelected = new Color(226.0f / 255.0f, 255.0f / 255.0f, 221.0f / 255.0f, 1.0f); // E2FFDD

    private Color arrowUnclickable = new Color(200.0f / 255.0f, 200.0f / 255.0f, 200.0f / 255.0f, 1.0f); // E2FFDD 
    private Color arrowClickable = new Color(140.0f / 255.0f, 21.0f / 255.0f, 59.0f / 255.0f, 1.0f); // E2FFDD
 

    // Start is called before the first frame update
    void Start()
    {
        options = new Text[4] { option1, option2, option3, option4 };
        optionCharacters = new Image[4] { option1Character, option2Character, option3Character, option4Character };

    }

    // Configures who shows up for the block party screen
    public void fillGiverDetails(Quest q)
    {
        CharacterResources.CHARACTERS c = q.questGiver;
        switch (c)
        {
            case CharacterResources.CHARACTERS.CALINDAS:
                giverPerson.sprite = calindasGiver;
                break;
            case CharacterResources.CHARACTERS.RASHAD:
                giverPerson.sprite = rashadGiver;
                break;
            case CharacterResources.CHARACTERS.LEE:
                giverPerson.sprite = msleeGiver;
                break;
            case CharacterResources.CHARACTERS.LILA:
                giverPerson.sprite = lilaGiver;
                break;
            case CharacterResources.CHARACTERS.ELISA:
                giverPerson.sprite = elisaGiver;
                break;
        }
        giverName.text = CharacterResources.GetName(c);
        questTitle.text = q.description;
    }

    // Configures who shows up for the block party screen
    public void fillOptionDetails()
    {
        CharacterResources.CHARACTERS c = q.questGiver;
        switch (c)
        {
            case CharacterResources.CHARACTERS.CALINDAS:
                giverPerson.sprite = calindasGiver;
                break;
            case CharacterResources.CHARACTERS.RASHAD:
                giverPerson.sprite = rashadGiver;
                break;
            case CharacterResources.CHARACTERS.LEE:
                giverPerson.sprite = msleeGiver;
                break;
            case CharacterResources.CHARACTERS.LILA:
                giverPerson.sprite = lilaGiver;
                break;
            case CharacterResources.CHARACTERS.ELISA:
                giverPerson.sprite = elisaGiver;
                break;
        }
        giverName.text = CharacterResources.GetName(c);
        questTitle.text = q.description;
    }

    public void onClickContinueButton()
    {
        // Making sure to go directly to "Select profile" view without having to click on the saved game again
        SceneManager.LoadScene("StartWeek");
    }
}
