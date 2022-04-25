VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Mrcalindas1.txt"
# new_quest
~ new_contact = "Mrcalindas"
# new_contact

Mrcalindas?Smiling  "{player_name}! Come here, I have something for you from Lucy. She worries that maybe you don't eat breakfast and sent me with extra ensaymada for you. I knew you'd come in eventually!" 

* What? Really? Mrs. Calindas always knows the way to my heart: food.
  -> Chat1
* Ensaymada? For me? Thank you so much, I was just stopping by to ask you a question, actually.
  -> QuestIntro

==Chat1==
Mrcalindas?Smiling "Well, you know since we started teaching you to cook, she's become concerned that you aren't eating outside of the lessons."
Mrcalindas?Smiling "I know you eat, but still- they're good with your coffee." 

* Thank you so much for bringing me these. They are my absolute favorite.
  -> Chat2
* I'm feeling the love! I think you just made my week, but I was actually stopping by to ask you a question.
  -> QuestIntro

==Chat2==
Mrcalindas?Smiling "Well, you can tell her the next time to you see her. If you're extra nice, she might even teach you how to make them for yourself."
Mrcalindas?Smiling "It means so much to us that you're here to help Bloomwood." 

* Speaking of which, I was coming to ask you - what do you need? How can I be helpful?
  -> QuestIntro

==QuestIntro==

Mrcalindas?Neutral "Oh? This is a reversal! Let me think for a moment."
Mrcalindas?Neutral "We are working on adding some initatives to provide better support for the community; budget time is coming up, and I want to make sure we're thinking about the right things." 
Mrcalindas?Smiling "Maybe you could put your ear to the ground and tell me what people think?" 

* Oh that's great! How can I help you?
  -> QuestDetails1
* If you think I can be helpful, I'm in. Tell me more! 
  -> OptionalQuestDetails1

==QuestDetails1==
Mrcalindas?Neutral "I don't have a lot of extra time to pull together community feedback, but I really want to make sure we are giving the community what it needs."
Mrcalindas?Neutral "I want to know what the community is actually concerned about health-wise."
Mrcalindas?Neutral "We have so many programs, but sometimes it's hard to know what the community values. I want people to trust the Bloomwood Clinic."

* That's really thoughtful, Mr. Calindas. Building and maintain community trust is so important.
  -> QuestDetails2

* Great! I can help you with whatever you need.
  -> QuestAcceptance

==OptionalQuestDetails1==
Mrcalindas?Neutral "It is important. We care about our patients. During Covid, the community rallied behind us and we worked together."
Mrcalindas?Neutral "It's important to keep that spirit alive by listening to what they want so we keep their trust."  

* I never thought of it that way. People should be able to trust their healthcare professionals.
  -> QuestDetails2
* You're absolutely right. I can help you with whatever you need.
  -> QuestAcceptance

==QuestDetails2==
Mrcalindas?Neutral "Many people don't trust healthcare for valid reasons."
Mrcalindas?Neutral "If we want people to trust us with their health, we need to be respectful of their needs. And I trust you to help me with this." 

* Let's work together. I can help you with whatever you need.
  -> QuestAcceptance


==QuestAcceptance==
Mrcalindas?Smiling "Excellent. Can you talk to Lila and ask her what the parents and children of Bloomwood are concerned about?"
Mrcalindas?Smiling "And can you ask Rashad what older people and students may need? That will help me know what programs I should focus on." 

* Great. I can do that!
  -> Goodbye
* Talk to Rashad and Lila about the community? Well, that's right up my alley!
  -> Goodbye

==Goodbye==
Mrcalindas?Smiling "Good job, {player_name}. I'll tell you what. Do this for me, and next weekend Lucy and I will DEFINITELY teach you how to make her ensaymadas. Deal? I'll see you soon." 

* BEST. DEAL. EVER. I'll get on it now. See you soon!
  ->END
* I'm really excited for this. I'll see you soon, bye!
  ->END


