
VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Rashad?Smiling "Hey hey, {player_name} it's nice to see you again. How's it going?"

* I'm fine as long as you don’t ask about the glitter.
  -> Chat1
* {not TempGoodbye} I’m doing alright! I found some resources for you.
  -> ReadyToSolve


==Chat1==
Rashad?Neutral "Okay, I won’t ask about the glitter. All that I ask is please don’t get it in the books. That stuff <i>travels</i>, but I’m sure you know that, clearly. Okay, I’ll stop talking now."

* Trust me, I know. In Lila’s defense, she did warn me.
  -> Chat2
* True! Also, I asked Lila and Mr. Calindas for advice, here’s what I have…
  -> ReadyToSolve


==Chat2==
Rashad?Neutral "Well, you'd help me sleep better if you made sure to wash your hands before picking out a book. Unless you're going to the YA section, of course, then have at it. Hah!"

* Fine, I'll wash my hands. In the meantime, I have that info you asked for.
  -> ReadyToSolve

==ReadyToSolve==
Rashad?Neutral "That's great to hear, {player_name}. I've really been going through it, but I knew I could count on you to come through with some great ideas."

* Excellent! Let's talk about it.
  -> PuzzleInterface
* On second thought, I think I might need some more time.
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
* They picked a solution marked as bad.
  -> BadSolution

==GoodSolution==
Rashad?Neutral "Wow, {player_name}. I think I underestimated just how <i>serious</i> this is. Thank you so much for taking the time to piece together all of this information."
Rashad?Neutral "I haven't tried therapy, but I definitely see the value in having a Black therapist, someone who looks like me and truly understands the struggle of being a black man. 
Rashad?Neutral “And I have been looking to get into running again... I really appreciate this."

* Before I forget, here’s a therapist rec from Lila! I got your back!
  -> SolvedGoodbye
* That’s what friends are for. Also, here's a therapist rec, from Lila.
  -> SolvedGoodbye


==BadSolution==
Rashad?Neutral "I'm not so sure...This just sounds stressful and more like a bandaid rather than an actual solution . Did you find out anything else?"

* Hold on, I have some more information.
  -> PuzzleInterface
* Ugh, you’re right. Let me look at my notes again and get back to you.
  -> TempGoodbye

==SolvedGoodbye==
Rashad?Smiling "I'm really happy I trusted you with this, {player_name}. I'm going to head out to get back to work, but I'll definitely follow up on this rec from Lila ASAP and hit up Mr. Calindas for some running tips."
Rashad?Smiling "You take care, okay? And keep your glitter out of my books. See ya!"

* Hah! Only if you remember to follow up on those resources!
-> END
* I’m gonna go home and take care of this glitter situation. Take care!
-> END

==TempGoodbye==
Rashad?Neutral "That's understandable. It's a tough situation to navigate. I'll be here, when you're ready."

* Ok, see you later!
  -> END
* Thanks, man. I'll be right back.
  -> END






