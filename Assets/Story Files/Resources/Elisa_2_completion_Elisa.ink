VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Elisa?Smiling "Hey, {player_name}!"

* Hey! Whatcha up to? -> Chat1
* Hi! So, I asked around about health info for your mom, is now a good time?
  -> ReadyToSolve

==Chat1==

Elisa?Neutral "Paperwork. My life is a never-ending stream of paperwork. Nobody warned me that transferring my Associates was going to involve such a test of will."

* More forms? Yikes! What now?
  -> Chat2
* If you have a minute, I have answers about replacing your vaccine records!
  -> ReadyToSolve

==Chat2==

Elisa?Neutral "I’ve moved on from the roommate form to my emergency contact form. At least this one’s short.”  

* That sounds … thrilling. If you’re ready to talk about immunizations, I’m ready.
  -> ReadyToSolve
* Well, I'm glad you’re getting it all done. Do you have time to talk vaccines?
  -> ReadyToSolve

==ReadyToSolve==

Elisa?Neutral "Oh, that's great! What'd you find out?"

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
Elisa?Neutral “I’ve checked all of those locations, and it didn’t show up. Is there anything else you can suggest?”
 
 
Let me see what else I can find, Elisa.
  ->TempGoodbye


  
==Option2==
# correct
Elisa?Smiling “I don’t know why I didn’t think of calling Bloomwood Community College; of course I had to submit these same records to them.”

Elisa?Smiling "Maybe I lost them when we did my admissions paperwork the first time!" 
  
* Oh, I hope it’s as simple as stopping by the student records office! 
	-> SolvedGoodbye

  
 ==Option3==
Elisa?Neutral “I haven’t applied for any jobs recently, so I know I didn’t leave my vaccination records with a possible employer. What else did you learn?”
 
 
Let me see what else I can find, Elisa.
  ->TempGoodbye

==Option4==
# correct
Elisa?Smiling “Oh! So, bloodwork or a few extra shots, and this could be resolved? That’s a load off my mind, {player_name}.” 

Elisa?Smiling “I just need to check the school website for the complete list of required vaccines. Thank you so much!”
 
* I’m happy to help, Elisa!  
	-> SolvedGoodbye


==SolvedGoodbye==
Elisa?Smiling “Thanks, {player_name}. All this paperwork has me off my game. I appreciate the help!”

My pleasure, Elisa!
  -> END

==TempGoodbye==
Elisa?Neutral "Okay, come back soon!"

* No worries, Elisa. I will.
 ->PuzzleInterface
