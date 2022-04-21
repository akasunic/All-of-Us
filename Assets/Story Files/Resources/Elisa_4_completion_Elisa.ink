VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Elisa?Smiling "Hi, {player_name}!”

* Anything else exciting happen today, Elisa?  
  ->Chat1
* Hi! Do you have time to chat? I come with suggestions!
  -> ReadyToSolve

==Chat1==

Elisa?Smiling “Anything more interesting than my mother changing the rules on me? Not one single thing.” 

* What’s one more big change, right?
  -> Chat2
* Are you ready to hear my suggestions?
  -> ReadyToSolve

==Chat2==

Elisa?Smiling “I guess so! It’s like ripping a bandaid off – everything’s already in chaos, so let’s just get it all over at once.”  

* You’ve always said your parents were adaptable. They’re just proving it!
  -> ReadyToSolve
* I have suggestions for you. 
  -> ReadyToSolve

==ReadyToSolve==

Elisa?Smiling “Great. I’m ready to hear them.”

Elisa?Smiling “Also, {player_name}, thank you.” 

* Here’s what I have…
  -> PuzzleInterface
* Wait... let me ask around a little more.
  -> TempGoodbye


==PuzzleInterface==
# turnin

* They picked Option 1. 
  -> Option1
* They picked Option 2. 
  -> Option2
* They picked Option 3.
  -> Option3
* They picked Option 4. 
  -> Option4
  

==Option1==

Elisa?Neutral “Then why do they call it an annual? I guess that’s useful to know, but I don’t feel like I’m any more prepared. Did you learn anything else?”
 

Let me see what else I can find, Elisa.
  ->TempGoodbye

==Option2==
# correct
Elisa?Smiling “I knew there were a lot of options, but it sounds like there’s even more than just a choice between the pill or the shots. Thank you for this.”

Elisa?Smiling "I don’t have a lot of experience asking questions about sex, but I guess if I treat it like questions about medicine, it might be easier.”
  
* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye

==Option3==
# correct

Elisa?Smiling “That never would have occurred to any of us. My parents are careful around potential authority figures, obviously. But this makes a lot of sense.”

Elisa?Smiling "I wonder if the doctor might have a suggestion at my appointment. I can’t be the only patient with old-fashioned but trying hard parents.”
  
* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye

==Option4==
Elisa?Smiling “I think that’s an interesting suggestion, but I feel like I need more data..”
 
Let me see what else I can find, Elisa.
  ->TempGoodbye


==SolvedGoodbye==
Elisa?Smiling “I really appreciate your help. I want to show my mom that I appreciate her work by meeting her where she is.” 

My pleasure, Elisa!
  -> END

==TempGoodbye==
Elisa?Neutral "Okay, come back soon!"

* No worries, Elisa. I will.
  -> PuzzleInterface
