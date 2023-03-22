VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
Mrslee?Smiling "{player_name}. Hi. Listen. I was looking for you. My headache went away! I am OK. No problem!"

* That's great, Mrs. Lee.
  -> Chat1
* Oh, good! Let's try to make you an appointment before it comes back.
  -> ReadyToSolve


==Chat1==
Mrslee?Smiling "Yes. That is very great. So do you think that maybe I don't need the doctor anymore?"

* I think it's important to checked out.
  -> Chat2
* Can we talk about your headaches?
  -> ReadyToSolve

==Chat2==
Mrslee?Neutral "I'm feeling good now because I have no headache, but when I think about doctors... I feel a headache start."

* We can talk about it together; I'll help.
  -> ReadyToSolve

==ReadyToSolve==
Mrslee?Neutral "What should I do?"

* Here are my suggestions...
  -> PuzzleInterface
* Actually, I'm not ready.
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
# correct
Mrslee?Smiling "Thank you, {player_name}. I feel good about going to the library program. They help me with tax forms sometimes. I know Rashad will take good care of me."
Mrslee?Smiling "He says I am very good with technology; maybe scheduling over the internet will be easier than trying to understand on the phone. I feel less stress.."

* He's right. You're great with tech!
    -> END

==Option2==
Mrslee?Neutral "Rashad is very helpful, but I still feel stress."
Mrslee?Neutral "I need appointments in the future, and maybe Rashad is busy? What if he can’t help me next time? No thank you."

* Let me see what else I can suggest, Mrs. Lee.
  ->PuzzleInterface
  
==Option3==
# correct
Mrslee?Neutral "That feels so hard. Not just my headache, but talking about everything? I feel scared that maybe the doctor will talk more than they listen."

* If you don’t like the first doctor, we can help you try someone else. 
->Followup22

==Followup22==
Mrslee?Smiling "You help so much already. I will try this, but I might need more help later."

* Of course, Mrs. Lee! I’m here to help! 
->END

==Option4==
Mrslee?Neutral "That is more stress! Eddie say Urgent Care can be a different doctor every time. That feels like too much trouble."

* I understand, Mrs. Lee. Let’s find you a less stressful solution.
  ->PuzzleInterface
  

==SolvedGoodbye==
Mrslee?Smiling "{player_name}. Thank you for encouraging. I will do."

* I know you can do this, Mrs Lee!
  -> END

==TempGoodbye==
Mrslee?Neutral "{player_name}, OK!"

* I'll be right back, Mrs. Lee!
  -> PuzzleInterface