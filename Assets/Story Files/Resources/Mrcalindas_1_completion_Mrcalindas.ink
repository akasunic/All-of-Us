VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==

Mrcalindas?Smiling "Back already? What did you do, run around the neighborhood?" 

* {not TempGoodbye} Maybe I did, maybe I slowly walked while eating all the ensaymadas.
    -> Chat1
* {not TempGoodbye} I definitely did. Ensaymadas are my motivator. Ready to find out what I learned? 
    -> ReadyToSolve
* {TempGoodbye} Maybe, I did sir. Maybe, I did. Ready to find out what I learned?
    -> ReadyToSolve

==Chat1==

Mrcalindas?Smiling "Exercise is good for the heart {player_name} so, whether you walk, run, fly...it's all good. You saved some for your breakfast, tomorrow right?"

* ...uh...sure... Anyway, I asked Lila and Rashad what they thought.
    -> ReadyToSolve
* If by save you mean devoured... Anyway, I asked Lila and Rashad what they thought.
    -> ReadyToSolve

==ReadyToSolve==

Mrcalindas?Neutral "Okay. Their responses will really help me understand the community more and not waste so much time creating a useful experience for the community."
Mrcalindas?Neutral "So what programs should we focus on at the health tent to get the community onboard?""  

*  Here’s what I have…
    -> PuzzleInterface
* Actually, I think I need to take a look at my notes. I'll be right back.
    -> TempGoodbye

==PuzzleInterface==
# turnin

* -> GoodSolution
* -> BadSolution

// * Our community is diverse, and needs different types of support. ESL speakers need information about programs and materials in different languages. Also, LGBTQIA people and people of color face health stigma and need a place where they aren't judged. For programs, people in the community could use reminders about basic hygiene and how it impacts community health. More information about mental health services is useful for anyone, and free wellbeing classes and parenting classes can also be helpful. Oh! And transportation vouchers if you haven't talked about it.   -> GoodSolution
// * Our community is diverse, and needs different types of support. Parents could use parenting classes, and maybe transportation vouchers. Free well being classes, and mental health help could also be useful. Oh! And transportation vouchers if you haven't talked about it. -> BadSolution

==GoodSolution==

Mrcalindas?Smiling "That all makes a lot of sense. I feel like I know exactly what needs to be front and center at our booth."
Mrcalindas?Smiling "You really saved me a lot of time there. You do good work, {player_name}. Lucy will call you about making ensaymadas, okay?"

* WHOO! I mean, "Thanks Mr. Calindas. I really appreciate you for this!"
    -> SolvedGoodbye
* I'm looking forward to it. Thanks Mr. Calindas. I really appreciate you for this!
    -> SolvedGoodbye

==BadSolution==

Mrcalindas?Neutral "Hmm. Is that it? maybe you want to check your notes again?" 

* Hmm, you're right. Let me see if I can try that one more time.
    -> PuzzleInterface
*  Hmm, you're right. Let me take a look at my notes and get back to you?
    -> TempGoodbye

==SolvedGoodbye==
Mrcalindas?Smiling "Well, I appreciate you for always doing good things for everyone here in Bloomwood. I'll see you around!" 

* Tell Mrs. Calindas I said hi! See you soon!
 -> END
*  I'll be back, you know it. I know it... So, see you soon!
 -> END

==TempGoodbye==
Mrcalindas?Neutral "Those ensaymadas are on the line, {player_name} so I have no problems with you coming back. See you soon."
* Ok, see you later!
 -> END
* I'll be right back! The secrets of ensaymada will one day be mine!
 -> END
