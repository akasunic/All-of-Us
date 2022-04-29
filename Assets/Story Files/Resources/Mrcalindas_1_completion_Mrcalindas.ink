VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==

Mrcalindas?Smiling "Back already? What did you do, run around the neighborhood?" 

*  Maybe I did. Or maybe I slowly walked while eating all the ensaymadas.
    -> Chat1
* I definitely did. Ensaymadas are my motivator. Ready to find out what I learned?
    -> ReadyToSolve


==Chat1==

Mrcalindas?Smiling "Exercise is good for the heart {player_name} so, whether you walk, run, fly...it's all good. You saved some for your breakfast, tomorrow right?"

* ...uh...sure... Anyway, I asked Lila and Rashad what they thought.
    -> ReadyToSolve
* If by save you mean devoured... Anyway, I asked Lila and Rashad what they thought.
    -> ReadyToSolve

==ReadyToSolve==

Mrcalindas?Neutral "Okay. Their responses will really help me understand the community more. I want to waste as little time as possible creating a useful experience for the community."
Mrcalindas?Neutral "So what programs should we focus on at the health tent to get the community onboard?"  

*  Here’s what I have…
    -> PuzzleInterface
* Actually, I think I need to take a look at my notes. I'll be right back.
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

Mrcalindas?Neutral "Hmm. I feel like that’s just one aspect of what the community needs. Did you get any other insight?"
 
* Let me see what else I can find, Mr. Calindas.
  ->TempGoodbye

==Option2==
# correct
Mrcalindas?Smiling "We have been trying to increase the amount of support we provide to LGBTQAI+ community members. I think this is a great suggestion."

Mrcalindas?Smiling "We could do a better job of communicating the ways we support those neighbors from reproductive health to gender-affirming health care and support groups." 

Mrcalindas?Smiling "That’s a good catch, {player_name}."

* Lila was full of great suggestions. I’m glad you send me to talk to her.
	-> SolvedGoodbye

==Option3==
#correct
Mrcalindas?Smiling "It is very important to me that we make mental health care accessible and normal. Taking care of your mind is as important as taking care of your body."

Mrcalindas?Smiling "I appreciate this feedback from Rashad. I’ll think about how we can expand our offerings."
  
* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye

==Option4==
Mrcalindas?Neutral "All of our programs are focused on that goal. Did you come up with anything more specific?"
 
* Let me see what else I can find, Mr. Calindas.
  ->TempGoodbye


==SolvedGoodbye==
Mrcalindas?Smiling "{player_name}, you really made my job easier. Thank you for doing this research. I’m going to work writing this up now." 

* My pleasure, Mr. Calindas!
  -> END

==TempGoodbye==
Mrcalindas?Neutral "Okay, come back soon!"

* No worries, Mr. Calindas. I will.
  -> PuzzleInterface
