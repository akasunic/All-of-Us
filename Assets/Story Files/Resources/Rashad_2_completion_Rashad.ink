 
VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""
 
-> intro
 
== intro ==
Rashad?Smiling "Hey hey, {player_name}. It's nice to see you again. How's it going?"
 
* I'm fine as long as you don’t ask about the glitter.
  -> Chat1
* I’m doing alright! I found some resources for you.
  -> ReadyToSolve
 
 
==Chat1==
Rashad?Neutral "Okay, I won’t ask about the glitter. All that I ask is please don’t get it in the books. That stuff travels, as you clearly know.... Okay, I’ll stop talking now."
 
* Trust me. I know. In Lila’s defense, she did warn me.
  -> Chat2
* True! Also, I asked Lila and Mr. Calindas for advice, here’s what I have...
  -> ReadyToSolve
 
 
==Chat2==
Rashad?Neutral "Well, you'd help me sleep better if you made sure to wash your hands before picking out a book. Unless you're going to the YA section, of course, then have at it. Hah!"
 
* Fine, I'll wash my hands. In the meantime, I have that info you asked for.
  -> ReadyToSolve
 
==ReadyToSolve==
Rashad?Neutral "That's great to hear, {player_name}. I've really been going through it, but I knew I could count on you to come through with some great ideas."
 
* Here are my suggestions...
  -> PuzzleInterface
* On second thought, I might need some more time.
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
 
Rashad?Neutral "Melatonin, huh? I don’t know… that sounds too easy. Plus, I already take enough supplements as it is."
 
*OK. Let me go check my notes. Hold tight!
  ->PuzzleInterface
 
 
==Option2==
 # correct
 
Rashad?Smiling "Well, you didn’t say you’d bring me easy answers. Stress is a really big deal, and can negatively impact many aspects of my well-being, so of course managing it can take many forms."
 
Rashad?Smiling "I think I have a lot to chew on."
 
* If you need other support, please don’t hesitate to ask.
-> Followup21

==Followup21==

 Rashad?Smiling "Mental health and physical health really are interconnected. I need to start treating my mental health with the same amount of care that I treat my physical health." 

 Rashad?Smiling "Therapy seems like it could be really transformative." 

* Completely agree. You got this, Rashad!
->SolvedGoodbye

==Option3==
 
Rashad?Neutral "It feels like self-care is a drop in the bucket compared to what I’m experiencing. Will that really make a difference?"
 
 * Hold tight! I’ll be right back.
  ->PuzzleInterface
 
==Option4==
# correct

Rashad?Smiling "What you’re saying makes sense. I’m not sure where to start, but having someone objective to talk to certainly couldn’t hurt."

Rashad?Smiling "I really feel like speaking to who just <i>gets it</i> can make this whole process a lot smoother. Talking through cultural differences can get exhausting sometimes."   
 
 * You are making great progress, Rashad!
-> Followup22

==Followup22==
 
Rashad?Smiling "There are so many things to consider, but this is definitely the most important piece by far."

* Most definitely! I’m glad this is helpful.
-> SolvedGoodbye
 
==SolvedGoodbye==
Rashad?Smiling "Hey, thanks, {player_name}. I appreciate you helping me out like this."
 
*My pleasure, Rashad!
  -> END
 
==TempGoodbye==
Rashad?Neutral "You know I’ll be here when you get back."
 
* I know you will! Sit tight!
  -> PuzzleInterface


