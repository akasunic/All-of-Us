VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Rashad?Smiling "Hey {player_name}! Good news, I was able to set up a bookmobile in the community center so we’ll be able to give away free books to the community. I am really excited about free books!”


* {not TempGoodbye} That's amazing, Rashad! I love this energy.
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

* They picked Solution 1. 
  -> Solution1
* They picked Solution 2. 
  -> Solution2
* They picked Solution 3.
  -> Solution3
* They picked Solution 4. 
  -> Solution4
  
  ==Solution1==
Rashad?Smiling “Yes, good idea Text”

Rashad?Neutral “expansion” 

Player Response
-> Followup1 
Alternate Player Response
-> Followup1

==Followup1==
Rashad?Neutral “Reiterate learning”

Rashad?Smiling “expand on reiteration” 


* I'm here to support you!
    -> END
  
  
  ==Solution2==
Rashad?Neutral “Decline Answer”

Rashad?Neutral “Explain Decline”

I'll come back to help!
  ->TempGoodbye
  
  ==Solution3==
  
Rashad?Neutral "Decline answer"  

I'll come back to help!
  ->TempGoodbye

  
  
  ==Solution4==
Rashad?Smiling “Accept answer”

Player Response
-> Followup2 
Alternate Player Response
-> Followup2

==Followup2==
Rashad?Neutral “Reinforce learning”

Rashad?Smiling “continue learning”


* It sounds like you're ready for this! 
  -> SolvedGoodbye

//do all of the other possible info types fall here?


==SolvedGoodbye==

  -> END

==TempGoodbye==
Rashad?Neutral "Okay, come back soon!"

* No worries, Rashad. I will.
  -> END








