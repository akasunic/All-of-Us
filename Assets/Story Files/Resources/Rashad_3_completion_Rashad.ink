VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Rashad?Smiling "Hey {player_name}! Good news, I finished up the details for the bookmobile visit to the Community Center." 
Rashad?Smiling "We’ll be able to give away free books. I am always excited about free books!"

* That's amazing, Rashad! I love this energy.
  -> Chat1
* That's cool! Hey, I think I have some helpful information for you.
  -> ReadyToSolve

==Chat1==
Rashad?Neutral "I am really happy about it. It’s the little things that keep me going!"
Rashad?Smiling "And, we wouldn't have gotten it approved without your help. So thank you!"

* You’re so humble. There’s nothing little about that. You’re amazing!
  -> Chat2
* Speaking of, I have some information for you!
  -> ReadyToSolve

==Chat2==
Rashad?Neutral "Hah, you’re too kind! Speaking of which, did you ever find out about those therapy questions? Don't worry if you didn't have the time."

*  I made the time because you matter! Here's what I have..
  -> ReadyToSolve

==ReadyToSolve==
Rashad?Neutral "You work really fast, {player_name}. I should’ve reached out to you sooner! Thanks for your help! What did you find?"

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

Rashad?Neutral "It figures that insurance would be a pain, but that’s pretty self-explanatory. Did you come up with something a little more meaty?"

* Hold tight! I’ll be right back.
  ->PuzzleInterface

==Option2==
# correct

Rashad?Smiling "These online tools seem like a real time-saver. All of the information out there can be a little overwhelming so being able to comb through it quickly is super valuable."

Rashad?Smiling "I found a pediatrician who went to undergrad with Cheryl and a dentist who could handle kids who bite, but I never thought to look for Black therapists."

Rashad?Smiling "It could really make a difference to see someone who gets it... That’s a real game changer."
  
* It’s a great way to narrow in on exactly what you need! 
-> Followup31

== Followup31==

Rashad?Smiling "Lila really is a jack of all trades. Is there anything she doesn’t know? I probably would’ve gotten into therapy a lot sooner if I knew these online tools make it this easy.."

* Better late than never!
-> SolvedGoodbye

==Option3==

Rashad?Neutral "Teletherapy, huh? I might explore that once I find someone. Right now I want to prioritize finding someone that I’ll gel with."

Rashad?Neutral "Did you come up with any information on the process of narrowing down my options?"
 
* Hold on! I’ll be right back.
  ->PuzzleInterface

==Option4==
# correct

Rashad?Smiling "Okay. I’m following. I didn’t know there were so many different types of therapy." 

Rashad?Smiling "I thought it all involved a doctor in a sweater vest next to a patient sitting on a couch. Or someone with a pocket watch … I guess I watched too much television."

  
* It’s a lot to digest, but you got this!
-> Followup32

==Followup32==

Rashad?Smiling "I find it difficult to be vulnerable since so many people in the community rely on me, but maybe I need a shoulder to cry on, too."

Rashad?Smiling "It’s comforting to know that what I say in therapy doesn’t leave the room. I want people to continue to feel like they can count on me."

* You can’t take care of others if you don’t put yourself first.  
-> SolvedGoodbye
* It’s okay to not be okay. You’re still amazing!
-> SolvedGoodbye

==SolvedGoodbye==
Rashad?Smiling "Thank you, {player_name}. I feel like the search for a Black therapist feels a little more approachable now." 

* My pleasure, Rashad!
  -> END

==TempGoodbye==
Rashad?Neutral "You know I’ll be here when you get back."

* I know you will! Sit tight!
  -> END



