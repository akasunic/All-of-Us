VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrcalindas?Neutral "{player_name}! I'm glad you popped in. I apologize. I know you're so busy, and I asked you for all that help. No worries if you can't get to it, with all the Block Party planning." 

* {not TempGoodbye} What! You help me all the time Mr. Calindas. Plus, I am really excited to meet your Mom.
  -> Chat1
* {not TempGoodbye} Please don't apologize. I can't wait to welcome your Mom. I got some information for you!
  -> ReadyToSolve
* {TempGoodbye} Oh, don't apologize. I can't wait to meet your mother.
  -> ReadyToSolve

==Chat1==
Mrcalindas?Neutral "I've been so worried about how she'll like it here, {player_name}. I just want to make sure that she's happy, you know?" 

* I hear that. You worry about all of us, Mr. Calindas. This is really the least I can do.
  -> Chat2
* Mmm. Yes. I think she'll love it here, though. In fact, I have some information for you!
  -> ReadyToSolve

==Chat2==
Mrcalindas?Neutral "Well, it is my job to care about the health of our community. My Mother was very active, and always wanted us to care about the community too. I want her to feel good about Bloomwood."

* Well, Bloomwood is ready to welcome her home.
  -> ReadyToSolve
* Bloomwood is going to be a great place for her.
  -> ReadyToSolve

==ReadyToSolve==

Mrcalindas?Smiling "That's so sweet of you, {player_name}. Can you tell me what you found out?"

* Here’s what I have…
  -> PuzzleInterface
* Actually, I want to give you the best info. I'm going to just check my notes again. Be right back! 
  -> TempGoodbye

==PuzzleInterface==
# turnin

*  -> GoodSolution
*  -> BadSolution

// * Well, signing up for an aerobics class like Mrs. Lee does can keep her active. It can make sure she stays fit and it will help her keep her balance. Lila says that many seniors can suffer from depression, but volunteering can ease depression. Volunteering can also keep her brain sharp! There's lots of opportunities for being social and volunteering at the library and community center. -> GoodSolution
// * Seniors can suffer from depression after becoming widows, and there's a lot of different types of volunteering. You can sign up for exercise classes online or in person, but talk to a doctor first before she starts one. -> BadSolution

==GoodSolution==

Mrcalindas?Smiling "My Mother loves volunteering, she's very community minded, so that's good to hear. Plus I didn't know that it could ease depression. My Mother is a widow, so..."
Mrcalindas?Smiling "Also, I don't know why I didn't think of aerobics classes. My Mother loves to dance. This is great advice." 

* I'm so happy this helps, Mr. Calindas!
  -> SolvedGoodbye
* I'm sure she's an excellent dancer. I cannot wait to meet her, Mr. Calindas!
  -> SolvedGoodbye

==BadSolution==

Mrcalindas?Neutral "Mmm. Okay. This isn't quite what I was looking for. I know that she is depressed already."
Mrcalindas?Neutral "Volunteering is a good idea, and I know she should be active. It's okay that you were busy." 

* Hmm. I can do better, let me try again.
  -> PuzzleInterface
* Actually, I could reread my notes and get better information. I'll be right back, okay?
  -> TempGoodbye

==SolvedGoodbye==
Mrcalindas?Smiling "I will email Lila and Rashad about some opportunities for my Mom. It would be nice to have a few ideas of what she can do when she gets here."
Mrcalindas?Smiling "Thank you so much, {player_name}. I'll see you soon okay?" 

* I'll see you soon! Let me know when Mother Calindas arrives, okay? Bye!
  -> END
* I'm so happy I could help! I'll see you soon! Bye!
  -> END

==TempGoodbye==
Mrcalindas?Neutral "Oh? Okay. I'll be here all day. Just come back when you know." 

* Don't worry, I'll be back soon!
  -> END
* Okay, I'll be back super soon, okay?
  -> END
