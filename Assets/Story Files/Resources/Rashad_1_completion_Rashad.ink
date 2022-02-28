VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro == 
Rashad?Smiling "Hey {player_name}!. How are you feeling today?" 

* {not TempGoodbye} I'm alright. How are you feeling? I remember you telling me about how much you had on your plate.
  -> Chat1
* {not TempGoodbye} I'm alright, I was hoping to check in about that YA position?
  -> ReadyToSolve
* {TempGoodbye} I remember you telling me about how much you had on your plate. So, I found a someone for the YA Job!
  -> ReadyToSolve

==Chat1==
Rashad?Neutral "Well, you know. I was on a call about the budget yesterday and they want to buy essential oil diffusers instead of a free printing program. Which..."
Rashad?Neutral "What are we going to do with diffusers? In a library?!"

* Absolutely nothing. A free printing program sounds far more useful than diffusers!
  -> Chat2
* That sounds really challenging. Maybe I can lessen the load. I found someone to apply for the position!
  -> ReadyToSolve

==Chat2==
Rashad?Neutral "I know, {player_name}. This is what I mean about the board. I think they mean well, but the microaggressions can be a bit much."
Rashad?Neutral "Anyway, I don't want to take up your time complaining. Do you need anything?"

* You aren't taking up my time. Talking to people is literally my job.
  ->Chat3
* Hey now, I came to <i>you</i>. Maybe I can lessen the load. I found someone to apply for the position!
  -> ReadyToSolve

==Chat3== 
Rashad?Neutral "That's a good point! I just don't want you to think I hate my job. I love this library, and want to do right by the community."
Rashad?Neutral "Oh! By the way, did you ever find someone to apply for the YA position?"

*Yes! I totally have someone in mind.
  ->ReadyToSolve
+ You know I have someone for you!
  ->ReadyToSolve

==ReadyToSolve==
Rashad?Smiling "That's great. We've been looking for someone to fill that position for a while. The library is pretty small, but we have a lot of room for a motivated student."

* Here’s what I have…
  -> PuzzleInterface
* Actually, you know what, let me double check my notes.
  -> TempGoodbye

==PuzzleInterface==
# turnin

* -> Option1
* -> Option2
* -> Option3
* -> Option4
* -> BadSolution

==Option1==
Rashad?Smiling "OPTION1 SELECTED TEST"

* I guess the test works!
  -> SolvedGoodbye

==Option2==
Rashad?Smiling "OPTION1 SELECTED TEST"
* I guess the test works!
  -> SolvedGoodbye


==Option3==
Rashad?Smiling "OPTION1 SELECTED TEST"
* I guess the test works!
  -> SolvedGoodbye

==Option4==
Rashad?Smiling "OPTION1 SELECTED TEST"
* I guess the test works!
  -> SolvedGoodbye

==GoodSolution==
Rashad?Smiling "Elisa <i>would</i> be a great fit! I do know her. She's really outdoorsy right? She studies here all the time. I'm glad you encouraged her to apply. She'll be an asset here."

* Sweet! Now, do you think that you'd be able to do the block party?
  -> SolvedGoodbye
* I wholeheartedly agree. So...block party?
  -> SolvedGoodbye

==BadSolution==
Rashad?Neutral "Hmm. I'm not so sure about this one." 

* Wait, let me see if I know some more.
  -> PuzzleInterface
* Hold on a second. Let me check my notes again.I'll be right back!
  -> TempGoodbye

==SolvedGoodbye==
Rashad?Smiling "Yes, we can do the block party. Crossing that off my to-do list means I can get you a booth now, maybe the bookmobile."
Rashad?Smiling "We'll be able to sign folks up for library cards and tell them about services. I'll send our Event Coordinator an email now! I'll see you around okay?" 

* Yes! Thanks Rashad. I'll see you this weekend.
  -> END
* This is great! Thank you Rashad, see you soon!
  -> END

==TempGoodbye==
Rashad?Neutral "Okay. Just let me know when you find someone. I'm going to get back to work. Catch ya soon!"

* Ok, see you later, Rashad!
  -> END
* I'll be right back. See you soon!
  -> END
