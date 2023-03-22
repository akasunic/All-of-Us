VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Mrslee?Neutral "Did you learn anything to help, {player_name}!"

+ Good news, Mrs. Lee. I think I did!
  -> Chat1
+  I think I might be able to help you.
  -> ReadyToSolve



==Chat1==
Mrslee?Neutral "Oh, good. I worry about Eddie. He trusts me to get his medicine, and I do not like feeling so worried."
Mrslee?Neutral "The doctor at the Health Clinic explained that he needs to take his pill every day." 

+ Let's talk through my suggestions!
  -> ReadyToSolve
  
+ I have suggestions for you.
  -> ReadyToSolve


==ReadyToSolve==
Mrslee?Neutral "I am so glad for your help. What do you think?"

+ Here are my suggestions...
  -> PuzzleInterface
+ I'll come back to help!
  -> TempGoodbye

==PuzzleInterface==
# turnin

+ They picked Option 1. 
  -> Option1
+ They picked Option 2. 
  -> Option2
+ They picked Option 3.
  -> Option3
+ They picked Option 4. 
  -> Option4

==Option2==
# correct
Mrslee?Smiling "Thank you, {player_name}. I do trust Lila. Lila can help me ask the pharmacist questions."
Mrslee?Smiling "Eddie says some drugs have different names, and it is okay. But I hate not knowing for sure; it feels so unsafe."
Mrslee?Neutral "Lila can help if I feel bad about my English."

+ That’s a good idea, Mrs. Lee.
-> Followup1 
+ You're right! Drug names are confusing.
-> Followup1

==Followup1==
Mrslee?Neutral "I want to ask the pharmacist questions. Lila can help me practice, then next time, I will know enough."
Mrslee?Smiling "Also, next time, the pharmacist won’t be a stranger!"

+ I'm here to support you!
    -> END

==Option1==
Mrslee?Neutral "No thank you, {player_name}. I want to solve the problem myself."
Mrslee?Neutral "Lila is very kind to offer. But what if Lila is busy next time? Or Eddie needs a different medication? I need to know how to ask questions."

+ Let me try again
  -> PuzzleInterface
  
==Option4==
Mrslee?Neutral "I am scared, {player_name}. I learned in a library workshop that sometimes websites lie. I don't know enough to trust a web search about Eddie's medicine."  

+ Let me try again
  ->PuzzleInterface
  
==Option3==
# correct
Mrslee?Smiling "I know that the drug can be named <a>lisinopril</a>. If I look it up in the drug portal, they will give me all the other names too?"

+ Exactly! You can print out the information sheet and take it with you.
-> Followup2 
+ Yes, and you can look up high blood pressure and get more information.
-> Followup2

==Followup2==
Mrslee?Neutral "Rashad helps me print things at the library sometimes. I will ask him at the next health workshop."
Mrslee?Smiling "I feel better knowing I can take a printout to show the pharmacist."

+ It sounds like you're ready for this! 
 -> END

==TempGoodbye==
Mrslee?Neutral "Okay, come back soon!"

* OK, Mrs. Lee. I'll be right back!
  -> PuzzleInterface

