
VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro == 

Rashad?Smiling "Hey, {player_name}! How you been? Excited to hear what you've been up to."

* {not TempGoodbye} Just doing what I can to keep the community happy!
-> Chat1
* {TempGoodbye} I met up with Elisa and Mrs. Lee. I have some ideas for your new initiative.
-> ReadyToSolve

==Chat1==
Rashad?Neutral "I don't know what we'd do without you. Before you got here, I feel like a lot of your duties fell on my shoulders."

* I'm not surprised, you do so much for the community.
-> Chat2
* It must've been tough. Also, I do have that information you asked for!
-> ReadyToSolve

==Chat2==
Rashad?Neutral "You have information for the initiative? Spill the tea.”


* Elisa and Mrs. Lee shared a lot of helpful tips. Here's what I learned.
-> ReadyToSolve
* I learned a lot from Mrs. Lee and Elisa. They are gold mines of information!
-> ReadyToSolve

==ReadyToSolve==
Rashad?Neutral "I'm not surprised. Elisa is really smart and thoughtful, and Mrs. Lee has a close relationship with both Eddie and Lila. She's helped me out many times. I’m listening?"

* Here it is... 
-> PuzzleInterface
* Hold on. I want to make sure what they said is captured correctly.
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



