
VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrcalindas?Neutral "{player_name}! I'm glad you popped in. I have been worried that maybe I imposed. I asked for a lot from you." 

* What!? I am really excited to meet your Mom.
  -> Chat1
* Please don't apologize. I got some information for you!
  -> ReadyToSolve

==Chat1==
Mrcalindas?Neutral "I have been fretting about how she will adapt to living here, {player_name}. I just want to make sure that she's happy." 

* I hear that. This is really the least I can do.
  -> Chat2
* I think she'll love it here. In fact, I have some information!
  -> ReadyToSolve

==Chat2==
Mrcalindas?Neutral "Well, it is my job to care. My Mother is very active, and always wanted us to care about the community too. I want her to feel good about Bloomwood."

* Well, Bloomwood is ready to welcome her home.
  -> ReadyToSolve
* Bloomwood is going to be a great place for her.
  -> ReadyToSolve

==ReadyToSolve==

Mrcalindas?Smiling "That's so sweet of you, {player_name}. Can you tell me what you found out?"

* Here’s what I have…
  -> PuzzleInterface
* Actually, I'm going to check my notes again. Be right back! 
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

Mrcalindas?Neutral "Hmm. Did you come up with anything more specific?"
 
* Let me see what else I can find, Mr. Calindas.
  ->TempGoodbye

==Option2==
# correct
Mrcalindas?Smiling "Oh, good. Knowing that there are options that will support her entire well-being really matters to me. ."

Mrcalindas?Smiling "I worry about her having an active social life and feeling physically well enough to enjoy it." 

* I think it’s great that you’re spending so much energy thinking about this. 
	-> SolvedGoodbye

==Option3==
Mrcalindas?Neutral "I cannot imagine my mother agreeing to a cat or a dog so soon after moving."

Mrcalindas?Neutral "While I wish Paz would agree to a cat, now isn’t the time to add a new complication - and a new housemate!"
 
* Let me see what else I can find, Mr. Calindas.
  ->TempGoodbye

==Option4==
# correct
Mrcalindas?Smiling "I see how very important her role is to Mrs. Lee." 

Mrcalindas?Smilng "I think my mother would find volunteering very satisfying, especially if we found something that suited her strengths."

  
* If you need other support, please don’t hesitate to ask. 
	-> SolvedGoodbye


==SolvedGoodbye==
Mrcalindas?Smiling "{player_name}, this really helps. I know she’s tough, and we will make the most of this change."

Mrcalindas?Smiling "Knowing that there are opportunities in Bloomwood for her to feel engaged takes some pressure off.." 

* My pleasure, Mr. Calindas!
  -> END

==TempGoodbye==
Mrcalindas?Neutral "Okay, come back soon!"

* No worries, Mr. Calindas. I will.
  -> PuzzleInterface
