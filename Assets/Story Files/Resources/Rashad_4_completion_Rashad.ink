
VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro == 

Rashad?Smiling "Hey, {player_name}! How you been? Excited to hear what you've been up to."

* Just doing what I can to keep the community happy!
-> Chat1
* I met up with Elisa and Mrs. Lee. I have some ideas for your new initiative.
-> ReadyToSolve

==Chat1==
Rashad?Neutral "I don't know what we'd do without you. Before you got here, I feel like a lot of your duties fell on my shoulders."

* I'm not surprised; you do so much for the community.
-> Chat2
* It must've been tough. Also, I do have that information you asked for!
-> ReadyToSolve

==Chat2==
Rashad?Neutral "You have information for the initiative? Spill it!"


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

* They picked Option 1. 
  -> Option1
* They picked Option 2. 
  -> Option2
* They picked Option 3.
  -> Option3
* They picked Option 4. 
  -> Option4
  

==Option1==

Rashad?Neutral "Did you learn anything more specific?"

Let me check my notes; I’ll be right back.
  ->TempGoodbye


==Option2==
# correct
Rashad?Smiling "I’m glad to hear that Elisa’s experience agrees with my gut. I’ve been reading about the benefits of intergenerational support, and it seems like a win all around." 

Rashad?Smiling "My grandma could tell you stories about teaching me to sew on a button; thankfully she got to me before I met Cheryl. I might still be single!"
  
* I’m happy to help further; just tell me how! 
	-> SolvedGoodbye

==Option3==

Rashad?Neutral "That’s helpful; did you discover anything more detailed?"
 
Hold tight! I’ll be right back.
  ->TempGoodbye

==Option4==
#correct

Rashad?Smiling "One of the things that got this rattling around in my head again was Mrs. Lee and her role at the Community Center. She just lights up when she talks about the class – and not like a disco ball."

Rashad?Smiling "If it’s good for her, and it’s good for Lila’s class, it must be useful for other people too, right?" 

  
* I’m happy to help further; just tell me how!
	-> SolvedGoodbye



==SolvedGoodbye==
Rashad?Smiling "You got it, {player_name}. I feel like this is going to be good. For all of us." 

My pleasure, Rashad!
  -> END

==TempGoodbye==
Rashad?Neutral "If I’m not at the circulation desk, I’ll be in my office."

* I’ll find you!
  -> PuzzleInterface
