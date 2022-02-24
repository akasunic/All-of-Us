using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class InfoListLineManager : MonoBehaviour
{
    private GlobalGameInfo.InfoItem item;
    private bool isLast;
    private bool buttonToggledOn = true;
    // Research version toggles
    public Toggle learningToggle0;
    public Toggle learningToggle1;
    public Toggle learningToggle2;
    public Toggle capabilityToggle0;
    public Toggle capabilityToggle1;
    public Toggle capabilityToggle2;
    public void setInfo(GlobalGameInfo.InfoItem item, bool isLast)
    {
        this.item = item;
        this.isLast = isLast;
        // Update the detail page manager
        GetComponent<DetailPageManager>().setInfo(item);
        CharacterResources cr = new CharacterResources();

        this.transform.Find("Content/Text").GetComponent<Text>().text = item.description;
        // If its the last note, we don't want the divider
        if(isLast && GlobalGameInfo.researchVersion <= 1)
        {
            this.transform.Find("Divider").gameObject.SetActive(false);
        }
        // If we have already viewed it before, don't have the red circle next to the line
        // Will only be 1, the first time we click the notes/journal app
        if (item.timesViewed != 1 && GlobalGameInfo.researchVersion <= 1)
        {
            this.transform.Find("Content/Image").gameObject.SetActive(false);
        }

        // In research version only
        if (GlobalGameInfo.researchVersion > 1) {
            // Setting the NPCImage in the new research journal item
            this.transform.Find("Content/NPCImage").gameObject.GetComponent<Image>().sprite = cr.GetSmallIcon(item.characterEnum);

            // Loading the answers into the components
            switch (item.researchLearning) {
                case 0:
                    learningToggle0.GetComponent<Toggle>().isOn = true;
                    break;
                case 1:
                    learningToggle1.GetComponent<Toggle>().isOn = true;      
                    break;
                case 2:
                    learningToggle2.GetComponent<Toggle>().isOn = true;
                    break;
                default:
                    break;
            }
            switch (item.researchCapability) {
                case 0:
                    capabilityToggle0.GetComponent<Toggle>().isOn = true;
                    break;            
                case 1:
                    capabilityToggle1.GetComponent<Toggle>().isOn = true;            
                    break;            
                case 2:
                    capabilityToggle2.GetComponent<Toggle>().isOn = true;
                    break;            
                default:
                    break;   
            }  
        }  
    }

    void Update()
    {
        // Will only be 1, the first time we click the notes/journal app
        if (item != null && item.timesViewed != 1 && buttonToggledOn && GlobalGameInfo.researchVersion <= 1)
        {
            this.transform.Find("Content/Image").gameObject.SetActive(false);
            buttonToggledOn = false;
        } 
    }

}
