VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Lila?Smiling "Hey{player_name}!"
* Woah, Lila -- that’s a lot of books, do you need a hand?
-> Chat1
* Hey Lila, I found out some information that may be helpful for ya!
-> ReadyToSolve

==Chat1==
Lila?Smiling "Aw, I’m okay. Thanks though! I just checked out some new books for the kids to read about farm animals and <a>agriculture</a>!"
* That’s so fun! Hey, I think I have some info for you.
-> ReadyToSolve
* Do you have a favorite farm animal, Lila?
-> Chat2 

==Chat2==
Lila?Smiling "It’s silly, but I really like cows! When my mom and I would go on road trips, I would always spot them and point out the window."
Lila?Smiling "I may be <a>lactose intolerant</a>, but they’re still pretty cute to me!"
* I’m sure the kids will find the books totally a-moo-sing"
-> ReadyToSolve
* It’s not as exciting as cows, but I think I found some solutions for you.
-> ReadyToSolve

==ReadyToSolve==
Lila?Smiling "Oh?"
* Here’s what I have…
-> PuzzleInterface
* Wait, let me make sure I’ve got everything I need.
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
Lila?Neutral "While I feel like this is good advice, I was hoping for something more in-depth."

* Hold on. Let me check my notes...
  ->TempGoodbye

==Option2==
# correct

Lila?Smiling "I'm glad to know that there is research being done. Finding the right specialist is going to be a whole process, but if I found a doctor I can trust..."
Lila?Smiling "I don't suppose you know anyone?"
  
* I don't, but I'll keep my ears open!
	-> SolvedGoodbye

==Option3==
Lila?Neutral "Thanks. I was hoping to get started before my next appointment; what else can you recommend?"

* Oh! Let me check my notes. 
 ->TempGoodbye
	
  
==Option4==
#correct

Lila?Smiling "These are really helpful suggestions. I wouldn't have thought to include allergies, even though mom's soy allergy is a real pain."

Lila?Smiling "I didn't know <a>pregnancy loss</a> was tied to family history, either! Thanks for letting me know."
 
* If you need other support, please don’t hesitate to ask.
-> SolvedGoodbye



==SolvedGoodbye==
Lila?Smiling "Thank you, {player_name}. I think I'm ready to tackle this. I know Mom's open to talk about anything for my sake. I just need set up a call."

* I'm happy to help!
  -> END


==TempGoodbye==
Lila?Neutral "Take your time."

* OK, Lila. Hold tight!
  -> PuzzleInterface


