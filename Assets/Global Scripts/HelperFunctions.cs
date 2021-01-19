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

}