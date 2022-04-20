VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro == 

Rashad?Smiling "Hey, {player_name}! I was hoping I'd run into you! Any leads on people who might want to work with yours truly?"

* I've got a couple of suggestions, if you have time to hear them?
-> Chat1

==Chat1==
Rashad?Neutral "I can't remember the last time I had a lunch break. As we expand programming, my free time shrinks just as fast! For this? I'll make time!"

* I saw Elisa and Mrs. Lee, who may be able to help. Here's what I have. 
-> ReadyToSolve


==ReadyToSolve==
Rashad?Neutral "Wow, that amazing news. Elisa’s knowledge of YA lit would be invaluable and Mrs. Lee is pretty well-connected so she’s been a huge help on many different occasions. I’m listening?"

* Here you go... 
-> PuzzleInterface
* Actually, let me check my notes again.  
-> TempGoodbye

==PuzzleInterface==
# turnin

* They picked Solution 1. 
  -> Solution1
* They picked Solution 2. 
  -> Solution2
* They picked Solution 3.
  -> Solution3
* They picked Solution 4. 
  -> Solution4
  
  ==Solution1==
Rashad?Smiling “Yes, good idea Text”

Rashad?Neutral “expansion” 

Player Response
-> Followup1 
Alternate Player Response
-> Followup1

==Followup1==
Rashad?Neutral “Reiterate learning”

Rashad?Smiling “expand on reiteration” 


* I'm here to support you!
    -> END
  
  
  ==Solution2==
Rashad?Neutral “Decline Answer”

Rashad?Neutral “Explain Decline”

I'll come back to help!
  ->TempGoodbye
  
  ==Solution3==
  
Rashad?Neutral "Decline answer"  

I'll come back to help!
  ->TempGoodbye

  
  
  ==Solution4==
Rashad?Smiling “Accept answer”

Player Response
-> Followup2 
Alternate Player Response
-> Followup2

==Followup2==
Rashad?Neutral “Reinforce learning”

Rashad?Smiling “continue learning”


* It sounds like you're ready for this! 
  -> SolvedGoodbye

//do all of the other possible info types fall here?


==SolvedGoodbye==

  -> END

==TempGoodbye==
Rashad?Neutral "Okay, come back soon!"

* No worries, Rashad. I will.
  -> END
