using System.Collections;
using System;
using System.Collections.Generic;
using UnityEngine;
using Firebase;
using Firebase.Database;
using Firebase.Extensions;

public class CloudHandler
{

    protected bool isFirebaseInitialized = false;
    DependencyStatus dependencyStatus = DependencyStatus.UnavailableOther;
    DatabaseReference reference;

    // When the app starts, check to make sure that we have
    // the required dependencies to use Firebase, and if not,
    // add them if possible.
    public CloudHandler() {

      Debug.Log("starting cloud handler");

      FirebaseApp.CheckAndFixDependenciesAsync().ContinueWithOnMainThread(task => {
        dependencyStatus = task.Result;
        if (dependencyStatus == DependencyStatus.Available) {
          InitializeFirebase();
        } else {
          Debug.LogError(
            "Could not resolve all Firebase dependencies: " + dependencyStatus);
        }
      });
    }

    // Initialize the Firebase database
    protected virtual void InitializeFirebase() {
      FirebaseApp app = FirebaseApp.DefaultInstance;
      isFirebaseInitialized = true;
      reference = FirebaseDatabase.DefaultInstance.GetReference("Data");
    }

    //a function to write a new event to the database
    public void WriteNewEvent(string type, string initiator, DateTime timestamp) {

      if(!isFirebaseInitialized){
        Debug.Log("ERROR: Database wasn't initialized yet!");
        return;
      }

      Debug.Log("Writing to database: TYPE " + type + ", INITATOR: " + initiator + ", TIME: " + timestamp);

      string key = reference.Push().Key;
      LoggingEvent entry = new LoggingEvent(type, initiator, timestamp);
      Dictionary<string, System.Object> entryValues = entry.ToDictionary();

      Dictionary<string, System.Object> childUpdates = new Dictionary<string, System.Object>();
      childUpdates["/" + key] = entryValues;

      reference.UpdateChildrenAsync(childUpdates);
    }


    public void WriteNewEvent(LoggingEvent evt) {

      if(!isFirebaseInitialized){
        Debug.Log("ERROR: Database wasn't initialized yet!");
        return;
      }

      Debug.Log("Writing to database: TYPE " + evt.getType() + ", INITATOR: " + evt.getInitiator() + ", TIME: " + evt.getTimestamp());

      string key = reference.Push().Key;

      Dictionary<string, System.Object> entryValues = evt.ToDictionary();
      Dictionary<string, System.Object> childUpdates = new Dictionary<string, System.Object>();
      childUpdates["/" + key] = entryValues;

      reference.UpdateChildrenAsync(childUpdates);
    }
}
