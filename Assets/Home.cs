using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public class Home : MonoBehaviour

{
    private string text_2 = "Our Block Party is a connection between the old Bloomwood and the new Bloomwood. The smells of food and the whirring of the cotton candy machine all brought back memories. But could this bring the people?";
    private string text_3 = "Just as I began to worry, Mr. Calindas arrived to set up the Healthcare tent. He patted me on the back before he went to instruct volunteer nurses on how to work with the community. “Paz and Jessica are showing up soon! Don’t worry!”";
    private string text_4 = "I still worried, but it wasn’t long before Lila waved to me as she and Trisha carried art supplies, mobbed by several children who were as excited to see her outside of class as they were to see her in class. “Yes, I bought the facepaint and temporary tattoos! You just have to let me set up!”";
    private string text_5 = "Rashad parked the library van, and Octavia and Charles sprinted towards the cotton candy machine. “Ya’ll don’t eat too much of that,” he called out, knowing full well they would eat too much of it.";
    private string text_6 = "The trickle of people became a warm inviting crowd of neighbors. Mrs. Lee, all smiles, brought her grandson Eddie, who I haven’t seen in forever. “Do you remember my grandson, Eddie? I’m very proud of him.” Eddie looked just as proud of her.";
    private string text_7 = "Elisa and her family carried succulents, and a few of her friends from school had boxes filled with extras. “We have the perlite, and the rocks. Mini Bloomwood terrariums, these are gonna be so cute!”";
    private string text_8 = "We spent the whole day laughing, playing, and celebrating. Mr. Calindas was right. I didn’t need to worry. As music filled the neighborhood and the bounce house shook, I looked at my neighbors. We needed this. I needed this. We could be here, because we all helped each other. Bloomwood spirit has never been about the buildings, or the grants, or the businesses that rush in.";
    private int current_text_counter = 1;

    public GameObject goToSleepButton;
    public GameObject infoButton;
    public GameObject backButton;
    public GameObject yellowContainer;
    public GameObject whiteContainer;
    public Text yellowContainerText;
    public Text whiteContainerTitle;

    private void Start() {
        yellowContainer.SetActive(false);
        whiteContainer.SetActive(false);
        backButton.SetActive(false);

        yellowContainerText.enabled = false;
        whiteContainerTitle.enabled = false;
    }
    
    public void showInfo() {
        yellowContainer.SetActive(true);
        whiteContainer.SetActive(true);
        backButton.SetActive(true);
    }

    public void hideInfo() {
        yellowContainer.SetActive(false);
        whiteContainer.SetActive(false);
        backButton.SetActive(false);
    }

    public void goToSleep() {
        // Increase day by one

        // Go back to map

        // Hint bubble for next day
    }

}
