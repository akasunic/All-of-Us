VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Mrslee?Smiling "Great day, {player_name}!"

* Great to see you too!
  -> Chat1
* I thought about how to prepare!
  -> ReadyToSolve


==Chat1==
Mrslee?Smiling "Hey. Can you believe it, still no headache."

* What about th--
  -> Chat2
* I can help you.
  -> ReadyToSolve

==Chat2==
Mrslee?Neutral "Oh my goodness! I just remember what I was worrying about. The appointment!"

* I think I can help!
  -> ReadyToSolve
* It's okay, Mrs. Lee
  -> ReadyToSolve

==ReadyToSolve==
Mrslee?Neutral "OK. What should I do?"

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

Mrslee?Smiling "Did you know Eddie likes to Facetime? I learned that recently."

Mrslee?Smiling "Last time he was home, he asked me to talk sometimes. I know he worries, so this is a good idea.."

* Sharing your health information might be helpful for him, too! 
->Followup31

==Followup31==
Mrslee?Smiling "He asks good questions. Maybe he can help me write down the answers, so I feel less stress about forgetting when I talk to doctor. I am proud of how helpful Eddie is."
Mrslee?Smiling "Lila give me special notebook with pretty pink paper for taking notes."

*This sounds great, Mrs. Lee!
->END

==Option2==
Mrslee?Neutral "Lila is very helpful, but her life very busy. If she goes to this appointment, what about my next appointment? Dr. Lee always took care of everything, and now look!"
Mrslee?Neutral "I have so much stress about doing things alone! Even if my English is bad, I have to try."

* I’ll be back with a better suggestion!
-> PuzzleInterface

==Option3==
# correct

Mrslee?Smiling "Write down when I feel headache. Write down how bad it is? I can do that."
Mrslee?Smiling "Thinking about my headaches make me feel a headache. But maybe you are right and a doctor might help."
Mrslee?Smiling "Lila give me special notebook with pretty pink paper. She say if I feel good using my journal, maybe it will cause less stress."

* Do you feel like you need more guidance on what to write down?
-> Followup32

==Followup32==
Mrslee?Smiling "I visited the Heatlh Clinic and Mr. Calindas gave me pamphlet. It had questions a doctor might ask. I will try to answer those questions in my journal, so I have good information to share."

* Oh! Mr. Calindas and his pamphlets are so helpful!
-> END

==Option4==
Mrslee?Neutral "Use my phone in the office, and talk to doctor? That sounds like even MORE headache. I’m sorry, but I don’t think that help me."

* Oh, Mrs. Lee! You’re right. That sounds hard. I’ll be back.
-> PuzzleInterface

==SolvedGoodbye==
Mrslee?Smiling "{player_name}. Thank you. This way, no stress."

* Goodbye!
  -> END
* Goodbye a different way!
  -> END

==TempGoodbye==
Mrslee?Neutral "OK. I will wait."

* OK, Mrs. Lee. Hold tight!
  -> PuzzleInterface