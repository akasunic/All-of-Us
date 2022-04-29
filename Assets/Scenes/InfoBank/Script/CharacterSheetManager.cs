using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System;

//attached to the contact thumbnails
//populates the text in those
//but also controls the opening and text of the 
//contact detail pages
public class CharacterSheetManager : MonoBehaviour
{

    public Image CharacterCard;
    public Sprite ElisaCard;
    public Sprite LilaCard;
    public Sprite MrCalindasCard;
    public Sprite MrsLeeCard;
    public Sprite RashadCard;

    public void setDetails(string character){

      switch (character) {
        case "Rashad":
          CharacterCard.sprite = RashadCard;
          break;
        case "Lila":
          CharacterCard.sprite = LilaCard;
          break;
        case "Elisa":
          CharacterCard.sprite = ElisaCard;
          break;
        case "Mrcalindas":
          CharacterCard.sprite = MrCalindasCard;
          break;
        case "Mrslee":
          CharacterCard.sprite = MrsLeeCard;
          break;
      }
    }
}
