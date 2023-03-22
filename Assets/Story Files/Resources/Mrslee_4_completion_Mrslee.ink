VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Mrslee?Smiling "Hey. {player_name}."

* Have you heard from Eddie again?
  -> Chat1
* I have information for you! 
  -> ReadyToSolve


==Chat1==
Mrslee?Neutral "No, he has classwork this week. I told him to focus on school, after spending so much time helping me get ready for my doctor appointment"

* I'm sure we was happy to help!
  -> Chat2
* I thought about your question earlier.
  -> ReadyToSolve

==Chat2==
Mrslee?Neutral "I have been missing him. But I am so proud of him. I tell him all the time!"
Mrslee?Neutral "He reminds me to use my pink notebook from Lila to keep track of questions, and I remind him to take his medications and always wear his seat belt." 

Mrslee?Smiling "We make a good team, he says." 

* I think I have some good suggestions for both of you.
  -> ReadyToSolve
* I'm so happy you have each other; I have some thoughts for you.
  -> ReadyToSolve

==ReadyToSolve==
Mrslee?Smiling "What do I do about my health and good future health?" 

* Here are my suggestions...
  -> PuzzleInterface
* Wait, lemme come back!
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
Mrslee?Smiling "Eddie and I already use video calls to talk more. And he has more questions about Dr. Lee. I want him to know everything I know."
Mrslee?Smiling "Also, if I ever get sick, it will make things easier for him."

* This is a great way to share your family medical history, Mrs. Lee. 
-> Followup41

==Followup41==
Mrslee?Smiling "Dr. Lee did not tell Eddie about high blood pressure. I need to make sure he knows everything he can!"

* Well said, Mrs. Lee! 
-> SolvedGoodbye

==Option2==
Mrslee?Neutral "But Dr. Lee had big folder, and it was very confusing. I never understood all of it. I feel more stress with big pile of papers to look at."
Mrslee?Neutral "I want to share all my information with Eddie, and the folder is so confusing."

* I will try again 
-> PuzzleInterface

==Option3==
# correct
Mrslee?Smiling "I never want Eddie to feel stress about appointments. I was so worried, and for what? I will talk to Eddie and make sure he know as much as I know."

* That’s great, Mrs. Lee. Helping you helps him!
-> Followup42

==Followup42==
Mrslee?Neutral "Dr. Lee did not share his information, and did not tell me about <a>high blood pressure</a> or <a>heart disease</a>. I feel sad and angry. I did not know."
Mrslee?Smiling "I want to understand my health and Eddie's too!"

* You are making great strides! 
-> SolvedGoodbye

==Option4==
Mrslee?Neutral "So many doctors, so many appointments to schedule. My new volunteering work with the kids is new, and I can not plan so far ahead."
Mrslee?Smiling "They gave me card to fill out; they will mail it to remind me to schedule appointments later. Maybe after I learn my new job, I can plan ahead even more."

* I'll try again 
-> PuzzleInterface

==SolvedGoodbye==
Mrslee?Neutral "I understand... I will continue to think about my health. And I feel supported. Thank you."

Mrslee?Smiling "Everyone has been so kind. I felt very alone, but now I know I have people who will help me figure things out."

* OK! You've done such a good job! 
  -> END

==TempGoodbye==
Mrslee?Neutral "I want to hear your suggestion!"

* Give me a moment, Mrs Lee. I'll be right back.
  -> PuzzleInterface