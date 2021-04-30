using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using TMPro;

public class TutorialManager : MonoBehaviour
{
    [SerializeField]
    public GameObject dialogue;
    public TextMeshProUGUI nameText;
    public TextMeshProUGUI contentText;
    public AudioSource audioSource;
    public GameObject[] stages;
    public TextMeshProUGUI[] npcNameText;
    public GameObject[] lilaImages;

    private int stage;
    private Vector3 dialoguePosition;

    // Start is called before the first frame update
    void Start()
    {
        stage = 0;
        dialoguePosition = dialogue.transform.position;

        if (GlobalGameInfo.name != null)
        {
            nameText.text = GlobalGameInfo.name;
        }
        contentText.text = "I do know. I've been here trying to get more programs started, and doing admin work. Plus the library has basically become a hub for social services. It's not just books these days";
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OpenNextStage()
    {
        stages[stage].SetActive(false);
        stage++;

        if (stage < stages.Length)
        {
            stages[stage].SetActive(true);
        }
        else
        {
            EndTutorial();
        }

        CustomActions();

        audioSource.Play();
    }

    public void EndTutorial()
    {
        SceneManager.LoadScene("Basic2DMap");
    }

    public void ActivateLila()
    {
        for (int i = 0; i < npcNameText.Length; i++)
        {
            npcNameText[i].text = "Lila";
        }
        for (int i = 0; i < lilaImages.Length; i++)
        {
            lilaImages[i].SetActive(true);
        }
    }

    public void CustomActions()
    {
        switch (stage)
        {
            case 1:
                dialogue.transform.position = dialoguePosition + new Vector3(0, 300, 0);
                break;
            case 2:
                dialogue.transform.position = dialoguePosition;
                contentText.text = "Click on a building to see who’s at this location!";
                break;
            case 3:
                dialogue.SetActive(false);
                break;
            case 6:
                OpenNextStage();
                break;
            case 7:
                contentText.text = "I use my phone to keep track of all the things I need to remember as a Community Liaison, and a good neighbor.";
                dialogue.SetActive(true);
                break;
            case 8:
                dialogue.SetActive(false);
                break;
            case 10:
                contentText.text = "When I have something I need to do, it’s written in my To Do App. I like to keep track of any new information I have that can help other people in the neighborhood out.";
                dialogue.SetActive(true);
                break;
            case 11:
                dialogue.SetActive(false);
                break;
            case 12:
                contentText.text = "I like to keep track of any new information I have that can help other people in the neighborhood out. I keep this in my Notes app.";
                dialogue.SetActive(true);
                break;
            case 13:
                dialogue.SetActive(false);
                break;
            case 14:
                contentText.text = "I like to help make connections in the community, so I make sure to keep my Contacts app updated to keep up with the lives and needs of my friends.";
                dialogue.SetActive(true);
                break;
            case 15:
                dialogue.SetActive(false);
                break;
            default:
                break;
        }
    }
}
