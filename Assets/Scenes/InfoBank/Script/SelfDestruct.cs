using UnityEngine;
using System.Collections;
 
//use this to self destruct 
public class SelfDestruct : MonoBehaviour {
 
    // Use this for initialization
    public void Destruct () {
        Destroy(gameObject);
    }
}