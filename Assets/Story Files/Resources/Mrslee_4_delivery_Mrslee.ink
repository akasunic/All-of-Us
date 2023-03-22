VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
~ new_quest = "Mrslee4.txt"
# new_quest

Mrslee?Smiling "You want a cookie? Eddie left them with me. I want to share with all my friends."

* Hey, Mrs. Lee! 
  -> Chat1
* You baked them together?
  -> Chat1

==Chat1==
Mrslee?Smiling "No! He baked them at school and brought them home. Almond cookies, made entirely with no milk and no eggs. His friend is allergic, so he learnes new recipes of the internet."

* That's so sweet! I love that he brought you treats. 
   -> Chat2
* They smell great! Tell me about the rest of your day?
  -> Chat2

==Chat2==
Mrslee?Smiling "OH. I forgot to tell you! I went to doctor's office. The doctor was a "SHE," and she was very, very kind. I feel like I understand more things now."
Mrslee?Smiling "I never knew I had so many questions. But I asked them all and she answered. She helped me understand."

* Yay!! Do you want to talk about the appointment?
-> QuestIntro

==QuestIntro==
Mrslee?Smiling "You know. Eddie's very important to me and I talk about him a lot. I talked about him to the doctor too."

* I think you're both lucky to have such a deep connection.
  -> QuestDetails1
* I hope you talked about yourself, too!
  -> QuestAcceptance

==QuestDetails1==
Mrslee?Smiling "I asked question about his blood pressure. You know, it's very funny!"
Mrslee?Smiling "I ask so many question about Eddie, and the doctor remind me to ask about ME!"
Mrslee?Smiling "I badly to understand, and I feel so much less stress after talking to the doctor."

* What about the headaches?
  -> QuestDetails2
* That IS funny! Did you learn anything new?
  -> OptionalQuestDetails1


==OptionalQuestDetails1==
Mrslee?Smiling "Doctor said "Mrs. Lee. Your <a>blood pressure</a> is ... a VERY good number." She asked how I feel. She asked a lot of questions about me."

* I'm glad. After all, the appointment was for you!
  -> QuestDetails2
* Did you come away with more questions?
  -> QuestAcceptance

==QuestDetails2==
Mrslee?Smiling "We talked about my headaches. You know! My <a>eye exam</a> was so bad! She suggested I get glasses." 
Mrslee?Smiling "So, I invited a friend from fitness class to go with me to pick out frames."
Mrslee?Smiling "That's why I am getting pain all the time. My eyes were working too hard. So my head was aching."
Mrslee?Smiling "I will get glasses and the doctor believes that my headache will stop."

* It's great to have some answers!
  -> QuestAcceptance
* I'm so impressed, Mrs. Lee!
  -> QuestAcceptance

==QuestAcceptance==
Mrslee?Smiling "I have been thinking more. My health is very important. The doctor reminded me that if I want to be here to take care of Eddie, I have to take care of myself."
Mrslee?Smiling "She suggested that I should think about how to continue a good health practice for the future."
Mrslee?Smiling "I guess, maybe, I want to understand better what that means 'good health practice'. Can you help me?"

* I love that she made you comfortable! I'll be back after I think about this.
  -> Goodbye
* I want to ask some people for their ideas; be right back.
  -> Goodbye

==Goodbye==
Mrslee?Smiling "OK. I will sit here and think too."

* Okay, Mrs. Lee
  ->END


