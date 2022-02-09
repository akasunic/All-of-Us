using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;
 public class PlaySound : MonoBehaviour, IPointerClickHandler
 {
     private AudioSource _audioSource;
     private void Awake()
     {
         _audioSource = GetComponent<AudioSource>();
     }
 
    public void OnPointerClick(PointerEventData eventData) {
         _audioSource.Play();
         
     }

 }