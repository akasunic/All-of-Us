using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class Backstories : MonoBehaviour

{
    private string text_2 = "Times have changed. People feel distant from each other. Developers built mixed use high rises, and new programs have come in bringing grants, funding, and new facilities. This was great, except the rents got higher and it felt like half the neighborhood was getting left behind. More and more of our old neighbors are moving out. More and more new faces are moving in, who aren’t as connected to the people already living here. ";
    private string text_3 = "Not everyone in Bloomwood is getting a fair shake these days. Instead of talking to your neighbor, folks called in noise complaints. It feels like no one knows their neighbors anymore. We just keep to ourselves. I want to change that. Bloomwood was never the place where you ignored your neighbors. So I came up with a plan. A good one. As the Bloomwood Community Liaison to the city, I was able to secure a permit for an old school style block party to celebrate the reopening of our Community Center....";
    private string text_4 = "... I got us a bouncy house, food, even a health fair! Now I just have to convince some folks to help me work it. I know who to ask. I know how to ask them.  I’ve always been good at connecting people and helping everyone out. Maybe if I can connect everyone in the neighborhood, Bloomwood can see that what really makes a neighborhood is not the buildings, or the grants, or the businesses that rush in. It’s the people.";
    private int current_text_counter = 1;

    public Text Textfield;
    public GameObject skipButton;

    public void loadTutorialScene() {

        SceneManager.LoadScene("Basic2DMap");
    }


    public void setNextText() {
        switch (current_text_counter) {
            case 1:
                Textfield.text = text_2;
                current_text_counter++;
                Destroy(skipButton.gameObject);
                break;
            case 2:
                Textfield.text = text_3;
                current_text_counter++;
                break;
            case 3:
                Textfield.text = text_4;
                current_text_counter++;
                break;
            default:
                SceneManager.LoadScene("Tutorial");
                current_text_counter = 1;
                break;
        }
            
    }
    
}
