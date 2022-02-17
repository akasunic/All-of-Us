using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//a test script to add things to the globalgameinfo
public class TestAddStuffController : MonoBehaviour
{
    public void AddRashadJournalDay1(){
        string des = "I'm looking for a part time worker in the YA section. Do you know anyone?";
        GlobalGameInfo.addNewItemToInfoList("Rashad", CharacterResources.CHARACTERS.RASHAD, 1, des, 0); 
    }
    
    public void AddRashadJournalDay2(){
        string des = "We're looking someone with experience working with children, someone hwo knows how to reshelve books, and has a knowledge of current YA lit. Oh, and they have to have good computer skills.";
        GlobalGameInfo.addNewItemToInfoList("Rashad", CharacterResources.CHARACTERS.RASHAD, 2, des, 0); 
    }

    public void AddRashadJournalDay3(){
        string des = "Looking for someone to teach children part-time.";
        GlobalGameInfo.addNewItemToInfoList("Rashad", CharacterResources.CHARACTERS.RASHAD, 3, des, 0); 
    }

    public void AddLilaJournalDay2(){
        string des = "This is Lato. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris justo vestibulum, feugiat nibh adipiscing.";
        GlobalGameInfo.addNewItemToInfoList("Lila", CharacterResources.CHARACTERS.LILA, 2, des, 0); 
    }

    public void AddRashadTodo(){
        GlobalGameInfo.addNewItemToTodoList("Rashad: Find part-time worker for library", CharacterResources.CHARACTERS.RASHAD);
        GlobalGameInfo.addNewTodoToExistingList("Rashad: Find part-time worker for library", "Talk to Rashad, learn about the quest.").CompleteTask();
        GlobalGameInfo.addNewTodoToExistingList("Rashad: Find part-time worker for library", "Talk to Lila.");
                GlobalGameInfo.addNewTodoToExistingList("Rashad: Find part-time worker for library", "Talk to Rashad, learn about the quest.").CompleteTask();
        GlobalGameInfo.addNewTodoToExistingList("Rashad: Find part-time worker for library", "Talk to Lila.");
    }

    public void AddLilaTodo(){
        GlobalGameInfo.addNewItemToTodoList("Lila: Get help for block party", CharacterResources.CHARACTERS.LILA);
        GlobalGameInfo.addNewTodoToExistingList("Lila: Get help for block party", "Talk to Lila, learn about the quest.").CompleteTask();
        GlobalGameInfo.addNewTodoToExistingList("Lila: Get help for block party", "Talk to Lila again.");
    }

    public void AddCalindasTodo(){
        GlobalGameInfo.addNewItemToTodoList("Calindas: Get help for block party", CharacterResources.CHARACTERS.CALINDAS);
        GlobalGameInfo.addNewTodoToExistingList("Calindas: Get help for block party", "Talk to Calindas, learn about the quest.").CompleteTask();
        GlobalGameInfo.addNewTodoToExistingList("Calindas: Get help for block party", "Talk to Calindas again.").CompleteTask();
    }
}
