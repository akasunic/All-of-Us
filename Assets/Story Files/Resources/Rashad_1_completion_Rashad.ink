VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro == 

Rashad?Smiling "Hey, {player_name}! I was hoping I'd run into you! Any leads on people who might want to work with yours truly?"

* I've got a couple of suggestions, if you have time to hear them?
-> Chat1

==Chat1==
Rashad?Neutral "Time? For this, I’ll make time! I can't remember the last time I had a lunch break. As we expand programming, my free time shrinks just as fast!"

* I saw Elisa and Mrs. Lee, who may be able to help. Here's what I have. 
  -> ReadyToSolve

==ReadyToSolve==
Rashad?Neutral "Wow, that amazing news. Elisa’s knowledge of young adult literature would be invaluable and Mrs. Lee is pretty well-connected so she’s been a huge help on many different occasions. I’m listening?"

* Here you go... 
-> PuzzleInterface
* Actually, let me check my notes again.  
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

Rashad?Smiling "Thank you, {player_name}. I think Elisa would be a perfect fit. The onboarding will be a breeze since she already knows her way around the library."
Rashad?Neutral "This was a great call. I’m excited to keep the funds in the community - hiring one of our own makes me feel really good about this!"

* It’s great that you always think in terms of what’s good for Bloomwood, Rashad! 
-> Followup11

==Followup11==
Rashad?Smiling "Having an extra set of hands in the library will allow me to focus on cranking out these new programs."

* That’s fantastic. Can’t wait to see what you drum up.
  -> SolvedGoodbye

==Option2==

Rashad?Neutral "Oh. That’s a good point, but I can’t help but wonder if she’s the right person for this..It sounds like her schedule is pretty jam-packed."

* Hmm. Let me see what else I have. Hold tight!
  -> PuzzleInterface

==Option3==

Rashad?Neutral "I appreciate Mrs. Lee’s help and I know her heart is in the right place - but who knows how long it’ll take for her friends to get back to her."
Rashad?Neutral "Time is of the essence. Did you come up with anything else?"
 
* Let me try again. Hold tight! 
  -> PuzzleInterface

==Option4==
# correct

Rashad?Smiling "You know, {player_name}, I‘m well aware of this, but I’m not sure I would have connected the dots. We host workshops where we teach people how to use the internet - so you would think we’d be better at using our own website to communicate with our patrons. Wrong."
Rashad?Smiling "I truly appreciate that our community members are always willing to help us up our game."
  
* Well said, Rashad! 
-> Followup12

==Followup12==

Rashad?Smiling "Who knew social media could be so powerful? Speaking of social media, I should really make an Instagram page for the library one of these days."

* You’re always on top of your game!
  -> SolvedGoodbye

==SolvedGoodbye==
Rashad?Smiling "{player_name}, you really made my day. I might get that vacation in sooner than I thought!"

* My pleasure. You deserve it, Rashad!
  -> END

==TempGoodbye==
Rashad?Neutral "Okay,  I’ll be here!

* I know you will! Sit tight!
  -> END



