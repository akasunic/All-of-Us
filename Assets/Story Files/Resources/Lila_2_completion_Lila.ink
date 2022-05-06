VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Lila?Smiling "Hey, {player_name}!"
* Hi there Lila! What’s up?
-> Chat1
* Hey, I asked for some advice and I learned some helpful stuff!
-> ReadyToSolve

==Chat1==
Lila?Smiling "Not much. I was just about to call Eddie. We’ve been trying to catch up more lately which has been really nice."
* That's great! are you ready to hear what I found for you?
-> ReadyToSolve
* That does sound nice!
-> Chat2 

==Chat2==
Lila?Smiling "I think I’m gonna ask him out to dinner with Trisha and I."
* That’s super sweet!  I think I found some solutions for you.
-> ReadyToSolve

==ReadyToSolve==
Lila?Smiling "Oh that’s great! What’d you find out?"
* Here’s what I have…
-> PuzzleInterface
* Wait, let me see if I can ask around a bit more.
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
Lila?Neutral "That might be a good starting point, but I dont' think it actually gets me where I need to be."

* Let me see what else I have in my notes. Hold on.
  ->TempGoodbye

==Option2==
# correct

Lila?Smiling "Oh! I really appreciate Rashad connecting me with existing networks."

Lila?Smiling "I feel like I lost some of my connections when my mom retired; I guess that's part of what I'm missing."
  
* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye

==Option3==
# correct

Lila?Smiling "The reminder to use the resources easily available to me is actually oddly helpful."

Lila?Smiling "I am feeling so overwhelmed that starting with a simple internet search to see what other people have already compiled never occurred to me. "

Lila?Smiling "Trisha and I joke that her answer is to go google and my answer is to ignore the problem until someone else needs me to solve it."
* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye
	
  
==Option4==

Lila?Neutral "I would feel really awkward just walking in and picking up printed materials. I don't feel like that helps much."
 
* Let me see what else I can find, Lila.
  ->TempGoodbye


==SolvedGoodbye==
Lila?Smiling "I feel like I would know what to do if someone else were asking my questions. Since this is my problem, it feels too big to tackle."

Lila?Smiling "I really appreciate you helping me work through it. " 

* I'm happy to help!
  -> END


==TempGoodbye==
Lila?Neutral "Take your time!"

* Thanks. Hold tight!
  -> PuzzleInterface
