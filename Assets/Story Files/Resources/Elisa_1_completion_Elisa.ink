VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Elisa?Smiling "Hey, {player_name}!"

* Hey! Whatcha up to?
  -> Chat1
* Hi! I found out some info on the diabetes stuff you were talking about.
  -> ReadyToSolve


==Chat1==

Elisa?Neutral "Oh, just getting some homework done for class tomorrow."

* Ooh what class? Anything exciting?
  -> Chat2
* Gotcha. By the way, I found some info for your mom, if you've got a minute.
  -> ReadyToSolve

==Chat2==

Elisa?Neutral "Right now I'm working on a report for my Financial Analysis class! It's my favorite class so far."

* Awesome! Hey, I found out more info for you on diabetes if you wanna talk about it.
  -> ReadyToSolve
* Well, I'm glad it's exciting to someone! Haha, anyway, I think I found some good info for you on diabetes.
  -> ReadyToSolve

==ReadyToSolve==

Elisa?Neutral "Oh, that's great! What'd you find out?"

* Here’s what I have...
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
Elisa?Neutral "I feel like the answer to everything is "diet and exercise." I was hoping for something more in-depth. You know?"
 
Elisa?Neutral "I was hoping for something more in-depth."
 
* Let me see what else I can suggest, Elisa.
  ->TempGoodbye

  
==Option2==
# correct

Elisa?Smiling "Monitoring, Medication, Exercise, Diet. I think I can lay this out for my folks before the appointment." 

Elisa?Smiling "Thank you, {player_name}. It sounds like a lot, but I feel like this gives me a starting point for all the topics to ask about."


* I'm glad this feels more manageable!
	-> SolvedGoodbye

  
==Option3==
# correct

Elisa?Smiling "The library is such a useful resource; my abuela loved the cookbook section."

Elisa?Smiling "I will look at the calendar to see if there are workshops coming up that might help my mom feel like she’s in this with other people."
  
* That sounds like a great idea, Elisa!
	-> SolvedGoodbye

==Option4==
Elisa?Neutral "What does that even mean? I feel overwhelmed by how much I don’t understand."
 
Elisa?Neutral "I was hoping for something more in-depth."
 
* Let me see what else I can suggest, Elisa.
  ->TempGoodbye


==SolvedGoodbye==

Elisa?Smiling "I appreciate the help! You saved me a lot of time."

* It sounds like you're ready for this! 
  -> END

==TempGoodbye==
Elisa?Neutral "Okay, come back soon!"

* No worries, Elisa. I will.
  -> PuzzleInterface

