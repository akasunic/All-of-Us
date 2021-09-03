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

Mrcalindas?Smiling  "{player_name}! Come here, I have something for you from Elisa. She worried you didn't have breakfast and sent me with extra ensaymada for you. I knew you'd come in eventually!" 

* What? Really? Mrs. Calindas always knows the way to my heart: food.
  -> Chat1
* Ensaymada? For me? Thank you so much, I was just stopping by to ask you a question, actually.
  -> QuestIntro

==Chat1==
Mrcalindas?Smiling "Well, you know since we started teaching you to cook, she's become worried that you aren't eating outside of the lessons."
Mrcalindas?Smiling "I know you eat, but still- they're good with your coffee." 

* Thank you so much for bringing me these. If I wasn't having the block party catered, I'd be begging her to make trays of these. They are my absolute favorite.
  -> Chat2
* They are my absolute favorite. Thank you so much for bringing me these. I was actually just stopping by to ask you a question.
  -> QuestIntro

==Chat2==
Mrcalindas?Smiling "Well, you can tell her the next time to you see her. Speaking of the Block Party, the Health Clinic has a booth there."
Mrcalindas?Smiling "It's been a long time since this neighborhood had a party, I'm looking forward to it." 

* Speaking of the block party, I could really use your help.
  -> QuestIntro

==QuestIntro==

Mrcalindas?Neutral "Oh? What do you need? I was going to volunteer to run the booth, and bring little gift bags."
Mrcalindas?Neutral "I'm just a little worried they won't contain what the community needs... Wait a second. Maybe you can help me? 

* Oh that's great! I was going to ask you to run the booth. How can I help you?
  -> QuestDetails1
* I was just going to ask you to run the booth. So I can help you with whatever you need.
  -> QuestAcceptance

==QuestDetails1==
Mrcalindas?Neutral "I don't have a lot of time to get materials together, so I need to make sure we are giving the community what it needs."
Mrcalindas?Neutral "I want to know what the community is really concerned about health-wise."
Mrcalindas?Neutral "We have so many programs, but sometimes it's hard to know what the community really needs. I want people to trust the Bloomwood Clinic."

* That's really thoughtful, Mr. Calindas. Can you tell me more?
  -> QuestDetails2
* What a great idea. Trust is really important you know.
  -> OptionalQuestDetails1
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
Mrcalindas?Neutral "Yes, they should. Many people don't trust healthcare for valid reasons."
Mrcalindas?Neutral "However, if we want people to trust us with their health, we need to be respectful of their needs. They trust me, so this booth is my job." 

* This is exactly why I hoped you'd run the booth, Mr. Calindas.
  -> OptionalQuestDetails2
* I knew you'd be happy to run the booth. Let's work together. I can help you with whatever you need.
  -> QuestAcceptance

==OptionalQuestDetails2==
Mrcalindas?Neutral "Well, see? I already knew you'd ask. Now, what <i>I</i> need to know is something specific. Can you do some research for me?" 

* No problem. I'm ready to help.
  -> QuestAcceptance
* Let's work together. I can help you with whatever you need.
  -> QuestAcceptance

==QuestAcceptance==
Mrcalindas?Smiling "Excellent. Can you talk to Lila and ask her what the parents and children of Bloomwood are concerned about?"
Mrcalindas?Smiling "And can you ask Rashad what older people and students may need? I want to know what programs I should focus on." 

* Great. I can do that!
  -> Goodbye
* Talk to Rashad and Lila about the community? Well, that's right up my alley!
  -> Goodbye

==Goodbye==
Mrcalindas?Smiling "Good job, {player_name}. I'll tell you what. Do this for me, and next weekend Lucy and I will teach you how to make her ensaymadas. Deal? I'll see you soon." 

* BEST. DEAL. EVER. I'll get on it now. See you soon!
  ->END
* I'm really excited for this. I'll see you soon, bye!
  ->END


