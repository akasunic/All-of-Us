using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//this class helps load the sprites associated with different characters
//it also has an enum for the characters
public class CharacterResources
{

  public enum CHARACTERS{
    RASHAD,
    LILA,
    CALINDAS,
    ELISA
  }

  public static Sprite rashadNeutral;
  public static Sprite rashadTalking;
  public static Sprite rashadSmall;
  
  public static Sprite lilaNeutral;
  public static Sprite lilaTalking;
  public static Sprite lilaSmall;

  public static Sprite calindasNeutral;
  public static Sprite calindasTalking;
  public static Sprite calindasSmall;

  public static Sprite elisaNeutral;
  public static Sprite elisaTalking;
  public static Sprite elisaSmall;

  public CharacterResources(){
    rashadNeutral = Resources.Load<Sprite>("rashad_neutral");
    rashadTalking = Resources.Load<Sprite>("rashad_talking");
    rashadSmall = Resources.Load<Sprite>("rashad_small");
    
    lilaNeutral = Resources.Load<Sprite>("lila_neutral");
    lilaTalking = Resources.Load<Sprite>("lila_talking");
    lilaSmall = Resources.Load<Sprite>("lila_small");

    calindasNeutral = Resources.Load<Sprite>("calindas_neutral");
    calindasTalking = Resources.Load<Sprite>("calindas_talking");
    calindasSmall = Resources.Load<Sprite>("calindas_small");
    
    elisaNeutral = Resources.Load<Sprite>("elisa_neutral");
    elisaTalking = Resources.Load<Sprite>("elisa_talking");
    elisaSmall = Resources.Load<Sprite>("elisa_small");
  }

  public Sprite GetSmallIcon(CHARACTERS c){
    switch (c){
      case CHARACTERS.RASHAD:
        return rashadSmall;
      case CHARACTERS.LILA:
        return lilaSmall;
      case CHARACTERS.CALINDAS:
        return calindasSmall;
      case CHARACTERS.ELISA:
        return elisaSmall;
      default:
        return rashadSmall;
    }
  }

  public Sprite GetNeutralHeadshot(CHARACTERS c){
    switch (c){
      case CHARACTERS.RASHAD:
        return rashadNeutral;
      case CHARACTERS.LILA:
        return lilaNeutral;
      case CHARACTERS.CALINDAS:
        return calindasNeutral;
      case CHARACTERS.ELISA:
        return elisaNeutral;
      default:
        return rashadNeutral;
    }
  }

  public static GlobalGameInfo.CharacterItem Rashad(){
    GlobalGameInfo.CharacterItem rashad = new GlobalGameInfo.CharacterItem(
      "Rashad Williams",
      "Rashad Williams was born and raised in Bloomwood, and moved back after"
      + " getting his Master’s Degree in Library Science. He is married with 2 " 
      + "children (wife Cheryl, children Octavia and Charles) and started out as"
      + " the popular Young Adult Librarian for Bloomwood Library. Since being "
      + "promoted to Head Librarian last year, he hasn’t been able to hold his "
      + "popular story hour in the children's wing. He enjoys comic books, science"
      + " fiction, and is an avid runner.",
      "Head Librarian",
      "Bloomwood Library",
      "He/Him/His",
      42,
      0.6f,
      0.9f,
      0.2f,
      0.95f
    );
    rashad.SetCharacterEnum(CHARACTERS.RASHAD);
    return rashad;
  }

  public static GlobalGameInfo.CharacterItem Lila(){
    GlobalGameInfo.CharacterItem lila = new GlobalGameInfo.CharacterItem(
      "Lila",
      "Lila was born in a nearby city and moved to "
      + "Bloomwood at the age of 10 when her single mother "
      + "switched her job to be at the local community center. "
      + "She fell in love with the community center as a teenager "
      + "and after getting her teaching degree at the local state school, "
      + "she was able to return and get a teaching job at the community "
      + "center to work with all ages, but her heart lies with educating"
      + " the next generation of Bloomwood. She has been dating her partner"
      + " Trisha for about 2 years. Now that she has been working at the center"
      + " for about 3 years and the former director retired, she is starting to"
      + " think about other goals she has for the community- like generating a strong"
      + " community service club and bringing in experts from nearby cities to teach classes. "
      + "Outside of her job, she also enjoys chasing her dog Charlie at the park, movie nights,"
      + " and visiting her nieces in their nearby hometown.",
      "The Helpful Headstart Teacher",
      "Community Center",
      "She/Her/Hers",
      28,
      0.34f,
      0.5f,
      0.33f,
      0.95f
    );
    lila.SetCharacterEnum(CHARACTERS.LILA);
    return lila;
  }

  public static GlobalGameInfo.CharacterItem Calindas(){
    GlobalGameInfo.CharacterItem calindas = new GlobalGameInfo.CharacterItem(
      "Mr. Calindas",
      "placeholder bio",
      "Nurse",
      "Hospital",
      "He/Him/His",
      42,
      0.6f,
      0.9f,
      0.2f,
      0.95f
    );
    calindas.SetCharacterEnum(CHARACTERS.CALINDAS);
    return calindas;
  }
  public static GlobalGameInfo.CharacterItem Elisa(){
    GlobalGameInfo.CharacterItem elisa = new GlobalGameInfo.CharacterItem(
      "Elisa",
      "placeholder bio",
      "Student",
      "Bloomwood Uni",
      "She/Her/Hers",
      20,
      0.6f,
      0.9f,
      0.2f,
      0.95f
    );
    elisa.SetCharacterEnum(CHARACTERS.ELISA);
    return elisa;
  }
  
   
}
