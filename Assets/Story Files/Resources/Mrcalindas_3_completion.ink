VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Mrcalindas?Smiling "Oh, {player_name}! It's good to see you here. I was just picking up some books for the grandkids. How are you?" 

* {not TempGoodbye} Hello Mr. Calindas, I'm great. Did you pick up anything good?
  -> Chat1
* {not TempGoodbye} Hey Mr. Calindas! I'm glad I ran into you. I just finished talking to Rashad and Elisa.
  -> ReadyToSolve
* {TempGoodbye} Hey Mr. Calindas! I'm glad I ran into you. I have some information on tech classes. 
  -> ReadyToSolve

==Chat1==

Mrcalindas?Smiling "Oh, just some classics. I did find a book about cooking pancit, so maybe Lucy and my Mother can read it and maybe cook with the kids this weekend." 

* That sounds really fun. I would totally volunteer to taste test.
  -> Chat2
* That's a great idea, and sound so much fun. Hey, I'm glad I ran into you. I just finished talking to Rashad and Elisa.
  -> ReadyToSolve

==Chat2==

Mrcalindas?Neutral "I am not suprised. I'll have Brooklyn and Lucy bring some next door. Maybe you want to take this out after us!" 

* If it has an easy to follow recipe, I'm there. Oh, before I forget, I'm glad I ran into you. I just finished talking to Rashad and Elisa.
  -> ReadyToSolve
* Well, if it has a recipe I'm there. I'm glad I ran into you, though. I have some information on tech classes.
  -> ReadyToSolve

==ReadyToSolve==

Mrcalindas?Neutral "Oh, that's good to hear. My mother wants to be able to call the grandkids more easily, and she gets so frustrated. Plus, she wants to be very independent, and I support that. I'm looking for some tech classes or tutoring for my mother in Tagalog or Spanish. Did you find some?" 

* Open Puzzle interface
  -> PuzzleInterface
* Actually, I though I was ready... Let me double check my notes?
  -> TempGoodbye

==PuzzleInterface==
# turnin

*  -> GoodSolution
*  -> BadSolution

// * Seniors can find the internet overwhelming. However, the library has bilingual tech classes in Tagalog and Spanish. They're small but they aren't tailored to seniors. You can sign up at the front desk. If you email ELisa she can tutor Mother Calindas.-> GoodSolution
// *  Seniors can find the internet and new tech overwhelming. Providing accessible devices with large fonts can help seniors to see. -> BadSolution

==GoodSolution==

Mrcalindas?Smiling "Oh just at the front desk? Well, I'll see if there's any spaces open and if not, I'll email Elisa."
Mrcalindas?Smiling "My Mother is going to be so excited. It's always nice to have her around. Thanks you for finding this for me, {player_name}. See you soon, okay?"

* My pleasure, Mr. Calindas. Let me know if anything else comes up okay? I'll catch you later!
  -> SolvedGoodbye
* Anything for Mother Calindas. I'm happy she's settling in. Let me know if you need anything else, okay? See you soon!
  -> SolvedGoodbye

==BadSolution==

Mrcalindas?Neutral "Hmm. Well, we know it's overwhelming It's why we asked about programs. We could make sure she turns up the font, though... Thank you I guess?" 

* Wait a second, let me try that again.
  -> PuzzleInterface
* Hmm. Let me check my notes again. I think I may have some more information.
  -> TempGoodbye

==SolvedGoodbye==
Mrcalindas?Smiling " "

* Goodbye!
  -> END
* Goodbye a different way!
  -> END

==TempGoodbye==

Mrcalindas?Neutral "It's fine. Find me when you have some things to tell me, okay? I'm going to check these out." 

* Ok, I'll be right back.
  -> END
* Don't worry, I'll be back.
  -> END
