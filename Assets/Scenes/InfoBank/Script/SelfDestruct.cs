using UnityEngine;
using System.Collections;
 
public class SelfDestruct : MonoBehaviour {
 
    // Use this for initialization
    public void Destruct () {
        Destroy(gameObject);
    }
}