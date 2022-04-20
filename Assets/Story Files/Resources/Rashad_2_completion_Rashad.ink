
VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Rashad?Smiling "Hey hey, {player_name} it's nice to see you again. How's it going?"

* I'm fine as long as you don’t ask about the glitter.
  -> Chat1
* {not TempGoodbye} I’m doing alright! I found some resources for you.
  -> ReadyToSolve


==Chat1==
Rashad?Neutral "Okay, I won’t ask about the glitter. All that I ask is please don’t get it in the books. That stuff <i>travels</i>, but I’m sure you know that, clearly. Okay, I’ll stop talking now."

* Trust me, I know. In Lila’s defense, she did warn me.
  -> Chat2
* True! Also, I asked Lila and Mr. Calindas for advice, here’s what I have…
  -> ReadyToSolve


==Chat2==
Rashad?Neutral "Well, you'd help me sleep better if you made sure to wash your hands before picking out a book. Unless you're going to the YA section, of course, then have at it. Hah!"

* Fine, I'll wash my hands. In the meantime, I have that info you asked for.
  -> ReadyToSolve

==ReadyToSolve==
Rashad?Neutral "That's great to hear, {player_name}. I've really been going through it, but I knew I could count on you to come through with some great ideas."

* Excellent! Let's talk about it.
  -> PuzzleInterface
* On second thought, I think I might need some more time.
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




