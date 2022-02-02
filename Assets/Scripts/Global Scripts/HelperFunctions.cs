using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class HelperFunctions
{ 
  public static Transform FindChildByRecursion(Transform aParent, string aName)
  {
      if (aParent == null) return null;
      var result = aParent.Find(aName);
      if (result != null)
          return result;
      foreach (Transform child in aParent)
      {
          result = FindChildByRecursion(child, aName);
          if (result != null)
              return result;
      }
      return null;
    }

    public static CharacterResources.CHARACTERS CharacterFromString(string character) {
        // spaghetti cuz of things like formatting with mr. calindas etc

        string lower = character.ToLower();
        if (lower.Contains("calindas")) {
            return CharacterResources.CHARACTERS.CALINDAS;
        } else if (lower.Contains("rashad")) {
            return CharacterResources.CHARACTERS.RASHAD;
        } else if (lower.Contains("elisa")) {
            return CharacterResources.CHARACTERS.ELISA;
        } else if (lower.Contains("lila")) {
            return CharacterResources.CHARACTERS.LILA;
        } else if (lower.Contains("lee")) {
            return CharacterResources.CHARACTERS.LEE;
        } else {
            Debug.LogError("Unknown character to parse to enum. Received " +
                character +
                ". Try one of: calindas, rashad, elisa, lila, lee");
            return CharacterResources.CHARACTERS.RASHAD;
        }
    }

    public static string StringFromCharacter(CharacterResources.CHARACTERS character) {
        Debug.Log("CHARACTER GAL: " + character);
        switch (character) {
            case CharacterResources.CHARACTERS.RASHAD:
                return "Rashad";
            case CharacterResources.CHARACTERS.LILA:
                return "Lila";
            case CharacterResources.CHARACTERS.CALINDAS:
                return "Mr. Calindas";
            case CharacterResources.CHARACTERS.ELISA:
                return "Elisa";
            case CharacterResources.CHARACTERS.LEE:
                return "Mrs. Lee";
            default:
                return "Rashad";
        }
    }

}