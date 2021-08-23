VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Elisa?Smiling "Oh hey! How'd it go, did you find any info for me?"

+ Here’s what I have…
  -> PuzzleInterface

==PuzzleInterface==
# turnin

* They picked a solution marked good. -> GoodSolution
* They picked a solution marked bad. -> BadSolution


===BadSolution===

Elisa?Neutral "I don't know, I'm still not clear on what I'm supposed to do. Do you have any more info?"

+ Yeah, one sec.
  ->PuzzleInterface
+ No, sorry.
  -> circleBack

===circleBack===

Elisa?Smiling "No worries. Let me know if you find anything later!"
->END

===GoodSolution===

Elisa?Smiling "Oh wow! Thanks so much {player_name}, I'm glad I asked you for help- I'm gonna go to the library computers now and print out some resumes. I owe you one!"

+ It's no problem! 
  -> noProblem
+ So, how about it? Do you think you can work the block party?
  -> BParty

===noProblem===

Elisa?Smiling "You're the best. Also, I'll think about the block party- I've got to sort out all this career fair stuff first though, I better get my resume ready to go!"


+ Ok, take care! 
  -> bye
+ Alright, be sure to let me know what you decide.
  -> bye2
    
===BParty===

Elisa?Smiling "Oh right, I almost forgot! Hmmm - well I'll definitely think about it. I do have to take care of some things first with the career fair and everything. I'll keep you posted, though!"

+ Ok, take care! 
  -> bye
+ Alright, be sure to let me know what you decide.
  -> bye2


===bye===

Elisa?Smiling "Yeah, you too! See you around!"

+ Leave the library
  -> END


===bye2===

Elisa?Smiling "I will, I will, for sure. See you around!"


+ Leave the library
  ->END