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
Mrslee?Smiling "No! He baked them at school and brought them home. Almond cookies, made entirely with no milk and no eggs. His friend is allergic, so he learns recipes."

* That's so sweet! I love that he brought you treats. 
   -> Chat2
* They smell great! Tell me about the rest of your day?
  -> Chat2

==Chat2==
Mrslee?Smiling "OH. I forgot to tell you! I went to doctor's office. Doctor was a "SHE," and she was very, very smart. I feel like I understand more things now."
Mrslee?Smiling "I never knew I had so many questions. But I asked them all and she answered. She has a kind face."

* Yay!! Do you want to talk about the appointment?
-> QuestIntro

==QuestIntro==
Mrslee?Smiling "You know. Eddie's very important to me and I talk about him a lot. I talk about him to the doctor too."

* I think you're both lucky to have such a deep connection.
  -> QuestDetails1
* I hope you talked about yourself, too!
  -> QuestAcceptance

==QuestDetails1==
Mrslee?Smiling "I ask question about his blood pressure. You know, it's very funny!"
Mrslee?Smiling "I ask so many question about his Eddie, and the doctor remind me to ask about ME!"
Mrslee?Smiling "I want to know everything, and I feel so much less stress talking to the doctor."

* What about the headaches?
  -> QuestDetails2
* That IS funny! Did you learn anything new?
  -> OptionalQuestDetails1


==OptionalQuestDetails1==
Mrslee?Smiling "Doctor said "Mrs. Lee. Your <a>blood pressure</a> is ... a VERY good number." She asked how I feel. Lots of questions about me."

* Yes, the appointment was for you!
  -> QuestDetails2
* Did you come away with more questions?
  -> QuestAcceptance

==QuestDetails2==
Mrslee?Smiling "We talk about my headache. You know! My <a>eye exam</a> was so bad! She suggest I get glasses. So, I invited a friend from fitness class to go with me."
Mrslee?Smiling "That's why I am getting aching like this. My eyes work so hard. So my head is aching. I will get glasses and my headache will stop."

* It's great to have some answers!
  -> QuestAcceptance
* I'm so impressed, Mrs. Lee!
  -> QuestAcceptance

==QuestAcceptance==
Mrslee?Smiling "I am thinking about this. My health is very important, too! Doctor suggest I should think about how to continue a good health practice for the future."
Mrslee?Smiling "She understand. Knows just what to say. She says I take better care of Eddie by taking care of me."

* I love that she understood! I'll be back after I think about this some.
  -> Goodbye
* I want to ask some people for their ideas; be right back.
  -> Goodbye

==Goodbye==
Mrslee?Smiling "OK. I will sit here and think too."

* Okay, Mrs. Lee
  ->END


