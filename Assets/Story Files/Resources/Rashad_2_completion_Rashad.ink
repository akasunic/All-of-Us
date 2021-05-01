VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Rashad?Smiling "Hey hey, {player_name} it's good to see you. How's it going?"

* {not TempGoodbye} I'm doing well, despite finding glitter everywhere from simply setting foot in Lila's classroom.
  -> Chat1
* {not TempGoodbye} I've really been thinking about you. I found some resources for you.
  -> ReadyToSolve
* {TempGoodbye} Hey! I'm well. I hope you've been getting some rest. I think I have some information for you.
  -> ReadyToSolve

==Chat1==
Rashad?Smiling "Glitter? You better not get it in a book. That's why we have a whole separate activity room. That stuff <i>travels</i>."

* It does! Lila did warn me.
  -> Chat2
* It really does. I asked Lila for some advice, and now...
  -> ReadyToSolve

==Chat2==
Rashad?Neutral "Well, you'd help me sleep better if you made sure to wash your hands before picking out a book. Unless you're going to the YA section, then have at it. Heh."

* Speaking of sleeping, I got some information about stress for you.
  -> ReadyToSolve
* I'll be sure to wash my hands. In the meantime, I have that information you asked for.
  -> ReadyToSolve

==ReadyToSolve==
Rashad?Neutral "That's great, {player_name}. I've really been struggling, and I knew you'd have some great ideas."

* Excellent! Let's talk about it.
  -> PuzzleInterface
* Actually, you know what? I think I need some more time.
  -> TempGoodbye

==PuzzleInterface==
# turnin

*  -> GoodSolution
*  -> BadSolution

==GoodSolution==
Rashad?Neutral "Wow, {player_name}. This <i>is</i> serious. Thank you so much for taking the time to find this out."
Rashad?Neutral "I haven't tried therapy, and a Black therapist could be really helpful to talk with, you know? And I have been looking to get into running again... I really appreciate this."

* Oh, and here is a therapist reference from Lila! Anything you need, I got you.
  -> SolvedGoodbye
* Friends help friends, Rashad. I care about you. Here's a therapist rec, from Lila. Let me know if you need anything else.
  -> SolvedGoodbye

==BadSolution==
Rashad?Neutral "I'm not so sure...This just sounds stressful."

* Hmm, wait, I have some more information.
  -> PuzzleInterface
* Actually, let me look at my notes again and get back to you. I can find some better information.
  -> TempGoodbye

==SolvedGoodbye==
Rashad?Smiling "Thanks! I'm really happy I trusted you with this, {player_name}. I'm going to head out to get some work done, but I'll follow up on these resources."
Rashad?Smiling "You take care, okay? No glitter outside the YA section. Heh. Take care!"

* Always happy to have your back. Which is now covered in glitter. Take care!
  -> END
* You take care of yourself friend, I'll remember to keep the glitter restrained, take care!
  -> END

==TempGoodbye==
Rashad?Neutral "That's understandable. It's a tough situation. I'll be here, when you're ready."

* Ok, see you later!
  -> END
* Thanks, man. I'll be right back.
  -> END
