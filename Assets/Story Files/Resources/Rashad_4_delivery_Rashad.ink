VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==

Rashad?Smiling "Hey, {player_name}! There you are! I’ve been meaning to thank you for your help this week. You’re a real one."

* That’s what friends are for! How'd it go, if you don’t mind me asking? 
-> Chat1


==Chat1==
Rashad?Smiling "I appreciate you. At first, I was uneasy about the idea of therapy, but I’m feeling good about my upcoming intake interview."
Rashad?Smiling "Your help, combined with my doctor's advice, gave me the push I needed. Also, I was thinking about talking to HR about how the board has been treating me."

* Wow, Rashad. How can I support you? 
-> Chat2
* I’m proud of you, Rashad. I’m sorry you have to deal with this. 
-> Chat2

==Chat2==
Rashad?Smiling "It’s all good. I plan on asking one of my allies on the board to support me. If this behavior continues, I'm ready to take this to HR."
Rashad?Smiling "On a lighter note, the board approved an initiative I wanted to talk to you about. You’re always making sure everyone in Bloomwood has the right support and connections." 

* Absolutely. That's what I'm here for!
-> QuestIntro

==QuestIntro==
Rashad?Neutral "When I pitched the initiative to the board, I highlighted the shifting demographics - in short, I want to hold space at the library for an intergenerational dialogue. "
Rashad?Neutral "The library is like a second home to our seniors and young people, and I'd like to bring them together."

* An intergenerational dialogue? How would that work? 
-> QuestDetails1
* That sounds fantastic! How can I help? 
-> QuestAcceptance

==QuestDetails1==
Rashad?Neutral "Hear me out…Remember how we used to help out when Bloomwood Mutual Aid was a thing? Back when Lila's uncle coordinated things to take care of the elders in the community?"
Rashad?Neutral "Making sure their lawn got mowed, and just checking in? I pitched a program that's just like that."

Rashad?Neutral "Here's a real specific example - many seniors struggle to use apps for medical care and appointments. I was thinking we could pair teens and seniors to overcome some of those tech roadblocks"

* Wow, I bet the teens get to pick up some pretty cool skills. 
-> OptionalQuestDetails1
* That’s awesome. Can I help with anything? 
-> QuestAcceptance

==OptionalQuestDetails1==
Rashad?Neutral "We can send out a survey to match them up based on their interests and what they’re looking to learn."

* That sounds fantastic! 
-> QuestDetails2
* That’s a great idea! So what can I do to help? 
-> QuestAcceptance

==QuestDetails2==
Rashad?Neutral "There's a lot they can learn from each other, and we can offer this as a volunteer opportunity. 
Rashad?Neutral "It looks good on a college application, and it allows seniors to socialize with 'the youth.'"

* It looks good on a resume but even better on the community. Everyone wins!
-> OptionalQuestDetails2
* Sounds like a win-win situation! How can I help? 
-> QuestAcceptance

==OptionalQuestDetails2==
Rashad?Neutral "It would be a mutually beneficial relationship." 
Rashad?Neutral "Teens could help seniors decipher their health needs, and seniors can share their life-long lessons with their mentees. What do you think?"

* I have a great feeling about this program. How can I help? 
-> QuestAcceptance
* This program is gonna be epic! What can I do to help?
-> QuestAcceptance

==QuestAcceptance==
Rashad?Smiling "Now that I think about it, I do have something you can do."
Rashad?Smiling "Before I create a survey, I need to know a bit more about what teens and seniors could learn from each other. I definitely want to get some input before we roll out the program."
Rashad?Smiling "Maybe find out more about what our elders might benefit from and what teens feel like they need or want to learn?"


* Sure! I know exactly who to ask about this. 
-> Goodbye


==Goodbye==
Rashad?Smiling "You’re the best, {player_name}! Thanks for all your help with this, I knew I could count on you."
Rashad?Smiling "I feel like my vision for the library is coming together. Take care, okay?"

*Take care Rashad! I'm so excited for you.
  ->END














