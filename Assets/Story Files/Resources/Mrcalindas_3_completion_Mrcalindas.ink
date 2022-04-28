VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Mrcalindas?Smiling "Oh, {player_name}! It's good to see you here. I was just picking up some books for the grandkids. How are you?" 

* Hello Mr. Calindas, I'm great. Did you pick up anything good?
  -> Chat1
* Hey Mr. Calindas! I'm glad I ran into you. I just finished talking to Rashad and Elisa.
  -> ReadyToSolve

==Chat1==

Mrcalindas?Smiling "Oh, just some classics. I did find a book about cooking pancit, so maybe Lucy and my Mother can read it and maybe cook with the kids this weekend." 

* That sounds really fun. I volunteer to taste test – I love any and all noodles!
  -> Chat2
* Hey, I'm glad I ran into you. I just finished talking to Rashad and Elisa.
  -> ReadyToSolve

==Chat2==

Mrcalindas?Neutral "I am not surprised. I'll have Brooklyn and Lucy bring some over. Maybe you want to borrow this after us!" 

* If it has an easy-to-follow recipe, I'm there. I'm glad I ran into you. I just finished talking to Rashad and Elisa.
  -> ReadyToSolve
* Absolutely! First, though. I have some information on tech classes.
  -> ReadyToSolve

==ReadyToSolve==

Mrcalindas?Neutral "Oh, that is good to hear. My mother wants to be able to call the grandkids more easily, and she gets so frustrated. I would hate for her to give up."

* Here’s what I have…
  -> PuzzleInterface
* Actually, I though I was ready... Let me double check my notes?
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

Mrcalindas?Neutral "Hmm. Did you come up with anything more specific? I feel like this only addresses a tiny part of the problem."
 
* Let me see what else I can find, Mr. Calindas.
  ->TempGoodbye

==Option2==
# correct
Mrcalindas?Smiling "I will email Elisa right away! You know there are studies about intergenerational support being very healthy for both elders and for young people ."

Mrcalindas?Smiling "I am happy to pay Elisa a fair rate for her help and to ply her with an excessive number of sweets."

* Hah! Is Elisa about to become my hookup for ensaymadas?
	-> SolvedGoodbye

==Option3==
# correct

Mrcalindas?Smiling "These are the things I am most worried about – my mother wants to be able to do her own banking, but so much happens online."

Mrcalindas?Smiling "She wants to manage her own health care, which requires access to the online portal." 

Mrcalindas?Smiling "I am glad to know that the library has resources to make this possible for her. Maybe we can even entice her with the promise of recipe websites." 

  
* The library offers so many valuable resources! 
	-> SolvedGoodbye


==Option4==
Mrcalindas?Neutral "I feel like this is part of the picture, but did you learn anything else?"
 
* Let me see what else I can find, Mr. Calindas.
  ->TempGoodbye


==SolvedGoodbye==
Mrcalindas?Smiling "Good work, {player_name}! I feel like I am better prepared to help my mother by connecting her with resources that will help her navigate the internet without me."  

* My pleasure, Mr. Calindas!
  -> END

==TempGoodbye==
Mrcalindas?Neutral "Okay, come back soon!"

* No worries, Mr. Calindas. I will.
  -> PuzzleInterface
