VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Rashad?Smiling "Hey {player_name}! Good news, I was able to arrange for a bookmobile to visit the Community Center so we’ll be able to give away free books. I am always excited about free books!”


* That's amazing, Rashad! I love this energy.
  -> Chat1
* That's so cool, Rashad! Hey, I think I have some helpful information for you.
  -> ReadyToSolve


==Chat1==
Rashad?Neutral "I am really happy about it. It’s the little things that keep me going! " 

* You’re so humble. There’s nothing <i>little</i> about that. You’re amazing!
  -> Chat2
* Speaking of, I have some information for you!
  -> ReadyToSolve

==Chat2==
Rashad?Neutral "Hah, you’re too kind!. Speaking of which, did you ever find out about those therapy questions? Don't worry if you didn't have the time."

*  I made the time because you matter! Here's what I have..
  -> ReadyToSolve

==ReadyToSolve==
Rashad?Neutral "Oh, I didn't know you would find out what I needed this quickly. You work really fast, {player_name}. I should’ve reached out to you sooner! Thanks for your help! What did you find?

* Here’s what I have…
  -> PuzzleInterface
* Give me a second. I want to make sure my information is correct.
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

Rashad?Neutral “It figures that insurance would be a pain; did you come up with anything else?”

Hold tight! I’ll be right back.
  ->TempGoodbye


==Option2==
# correct

Rashad?Smiling “Oh, it figures that this information is available online. I guess I was so overwhelmed by the idea that I never thought to look.”

Rashad?Smiling "I found a pediatrician who went to undergrad with Cheryl and a dentist who could handle kids who bite, but I never thought to look for Black therapists. It figures right?”
  
* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye

==Option3==

Rashad?Neutral “Teletherapy, huh? I might explore that once I find someone. Did you come up with any information on the process of narrowing down my options?”
 
Hold tight! I’ll be right back.
  ->TempGoodbye

==Option4==
# correct
Rashad?Smiling “Okay. I’m following. I didn’t know there were different types of therapy – I thought it all involved a doctor in a sweater vest and a patient on a couch. Or someone with a pocket watch … I guess I’ve watched too much television.”

  
* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye



==SolvedGoodbye==
Rashad?Smiling “I feel like the search for a Black therapist feels a little more approachable now. Thank you, {player_name}.” 

My pleasure, Rashad!
  -> END

==TempGoodbye==
Rashad?Neutral "You know I’ll be here when you get back.”

* I know you will! Sit tight!
  -> PuzzleInterface
