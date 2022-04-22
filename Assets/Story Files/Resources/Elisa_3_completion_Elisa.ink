VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Elisa?Smiling "Hey, {player_name}! How’re you?"

* Hey, Elisa! How’s your day going?-> Chat1
* Hi! Is now a good time to go over the information I have about ADHD?
  -> ReadyToSolve

==Chat1==

Elisa?Neutral "Ugh. I feel like I’m being pulled in 10 different directions, and getting nothing done."

* Oh? That doesn’t sound like you!
  -> Chat2
* Would it help to take a breat and talk about the ADHD info I found?
  -> ReadyToSolve

==Chat2==

Elisa?Neutral "Some days are better than others. Today, I’m really struggling to concentrate."  

* Honestly, I think that makes the ADHD information I found for you more important.
  -> ReadyToSolve
* Do you have time to talk about what I found out for you? 
  -> ReadyToSolve

==ReadyToSolve==

Elisa?Neutral "A distraction – even a serious one – sounds great. What have you got?"

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
# correct

Elisa?Smiling "I don’t think it would have occurred to me except that it came up for my sibling. Now that I’m looking for it, though, I do feel like some things take a lot of extra work."

Elisa?Smiling "My family has always prioritized school work, so I’ve always put a lot of energy there. But with all the health things going on, and upheaval around transferring, I think I should look into this more." 
  
* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye


==Option2==
Elisa?Neutral "I’m afraid that I’ll be told that everyone daydreams. Or worse, that if I just get my head out of the clouds, I’ll be fine. What else did you learn?"

* Let me see what else I can find, Elisa.
  ->TempGoodbye

  
 ==Option3==
Elisa?Neutral "Oh. That’s interesting, but I don’t think it helps me now. Did you learn anything else?"
 
* Let me see what else I can find, Elisa.
  ->TempGoodbye

==Option4==
# correct

Elisa?Smiling "It’s a relief that there are many things that might help. It sounds like I have a lot of questions to ask, but that feels like a start."

* I’m happy to help, Elisa!  
	-> SolvedGoodbye


==SolvedGoodbye==
Elisa?Smiling "I can’t thank you enough for the support; I feel like this is something worth following up on." 

* My pleasure, Elisa!
  -> END

==TempGoodbye==
Elisa?Neutral "Okay, come back soon!"

* No worries, Elisa. I will.
  -> PuzzleInterface
