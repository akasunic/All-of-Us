VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
Mrslee?Smiling "{player_name}. Hi. Listen. I was looking for you. My headache went away! I am OK. No problem!"

* {not TempGoodbye} That's great news, Mrs. Lee. But we should talk about what I found out!
  -> Chat1
* {not TempGoodbye} Oh, good! Let's try to make you an appointment before it comes back.
  -> ReadyToSolve
* {TempGoodbye} I got it this time!
  -> ReadyToSolve

==Chat1==
Mrslee?Smiling "Yes, so you don't think I need the doctor anymore, you think?"

* I think it's important to get a routine check up, Mrs Lee.
  -> Chat2
* I think we should still talk about your headaches. Is that okay?
  -> ReadyToSolve

==Chat2==
Mrslee?Neutral "I'm feeling good now because no headache, but when I think about doctors... I feel like headache."

* We can talk about it together; I'll help.
  -> ReadyToSolve

==ReadyToSolve==
Mrslee?Neutral "What should I do?"

* Here’s what I have…
  -> PuzzleInterface
* Actually, I'm not ready.
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
MrsLee?Smiling “Thank you, {player_name}. I feel good about going to the library program. They help me with my email one time. I know Rashad will take good care of me.” 
MrsLee?Smiling “He say I am very good with technology; maybe scheduling over the internet will be easier than trying to understand on the phone. I feel less stress..” 

* He's right, Mrs. Lee. You're great with tech!
    -> END

==Solution2==
MrsLee?Neutral “Rashad is very helpful, but I still feel stress.”
MrsLee?Neutral “I need appointments in the future, and maybe Rashad is busy?. What if he can’t help me next time? No thank you.”

* Let me see what else I can suggest, Mrs. Lee.
  ->TempGoodbye
  
==Solution3==
MrsLee?Neutral “That feel so stress. Not just headache, but talk about everything? I feel scared that maybe the doctor will talk more than he listen.” 

* If you don’t like the first doctor you see, we can help you try someone else. 
->Followup22

==Followup22==
MrsLee?Smiling “You help so much already. I try this, but might need more help later.” 

* Of course, Mrs. Lee! I’m here to help! 
->END

==Solution4==
MrsLee?Neutral “That feel like more stress! Eddie say Urgent Care is different doctor every time. Too much trouble.”

* I understand, Mrs. Lee. Let’s find you a less stressful solution.
  ->TempGoodbye
  

==SolvedGoodbye==
Mrslee?Smiling "{player_name}. Thank you for encouraging. I will do. 

* I know you can do this, Mrs Lee!
  -> END

==TempGoodbye==
Mrslee?Neutral "{player_name}, OK!"

* I'll come back.
  -> END
