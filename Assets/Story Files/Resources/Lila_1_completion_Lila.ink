VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Lila?Smiling "{player_name}, Good afternoon! How’s it going?"

* It’s going well! How was your day?
-> Chat1
* It’s going well! I found information that may be useful for your event!
-> ReadyToSolve

==Chat1==
Lila?Smiling "Not too bad. Trisha stopped by with lunch for me which was really sweet. It brightened up my day and I’ll never say no to a home cooked meal."
* That’s so thoughtful! Hey, I got some information that may be useful.
-> ReadyToSolve
* I know that must’ve been lovely. How’s Trisha been?
-> Chat2 

==Chat2==
Lila?Smiling "She’s great! She and I just celebrated our anniversary and she just got a new promotion at work. It’s been really exciting."
* Congratulations! Oh also, I found helpful ideas for your mentorship group.
-> ReadyToSolve

==ReadyToSolve==
Lila?Smiling "Oh that’s great! What’d you find out?"
* Here’s what I have so far...
-> PuzzleInterface
* Wait. I'm not quite ready.
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
Lila?Neutral "That feels very ambitious right now. I'm just trying to get the first event off the ground."

* Excellent point; let me look at my notes again.
  ->TempGoodbye

==Option2==
# correct

Lila?Smiling "I really appreciate how Bloomwood comes together."

Lila?Smiling "Not just on the big things, but for little things too. Rashad's such a gem; I can't wait to return the favor."
  
* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye

==Option3==

Lila?Neutral "That helps, but I don't think that solves my bigger worries."
 
* Let me see what else I can find, Lila.
  ->TempGoodbye
  
==Option4==
# correct

Lila?Smiling "Oh, that's such a help. I hope Elisa's professor is available to speak."

Lila?Smiling "Actually, I hope they will join us and either become a mentor or help support the project more actively. What an amazing resource to have available to us as we grow."

* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye


==SolvedGoodbye==
Lila?Smiling "I really appreciate your help. I feel like this might just come together!" 

* My pleasure, Lila!
  -> END

==TempGoodbye==
Lila?Neutral "Okay! I'll be here when you're ready."

* OK, Lila. Hold tight!
  -> PuzzleInterface
