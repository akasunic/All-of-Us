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
Rashad?Neutral "Wow, that amazing news. Elisa’s knowledge of YA lit would be invaluable and Mrs. Lee is pretty well-connected so she’s been a huge help on many different occasions. I’m listening?"

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
Rashad?Smiling "Thank you, {player_name}. I think Elisa would be a great fit. She already knows her way around the library."

Rashad?Neutral "I’m excited to keep the funds in the community - hiring one of our own makes me feel really good about this!" 

I think it’s great that you always think in terms of what’s good for Bloomwood, Rashad! 

-> SolvedGoodbye


==Option2==

Rashad?Neutral "Oh. That’s a good point, but I wonder if she’s the right person for this.."

Hmm. Let me see what else I have. Hold tight!
  ->TempGoodbye

==Option3==

Rashad?Neutral "I appreciate her help! Did you come up with anything else?"
 
Let me get back to you. Hold tight! 
  ->TempGoodbye

==Option4==
#correct

Rashad?Smiling "You know, {player_name}, I know that, but I’m not sure I would have connected it. The library has a website, of course, but we could be using the technologies we teach people to use more effectively."

Rashad?Smiling "I appreciate that our community members are willing to help us up our game."
  
* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye



==SolvedGoodbye==
Rashad?Smiling "{player_name}, you really made my day. I might get that vacation yet!" 

My pleasure, Rashad!
  -> END

==TempGoodbye==
Rashad?Neutral "Okay,  I’ll be here!

* I know you will! Sit tight!
  -> PuzzleInterface
