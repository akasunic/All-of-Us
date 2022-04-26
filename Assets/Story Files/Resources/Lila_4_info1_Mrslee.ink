VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrslee?Smiling "Hi {player_name}. How are you today?

* I’m doing well, Mrs.Lee! What are you eating?
-> Chat1
* Doing great! I just had lunch and it's a beautiful day. How about you?
-> Chat1

==Chat1==
Mrslee?Smiling "I am eating some lentil soup that Mr.Calindras made especially for me. It is so good! Perfect for a nice day out like today."
* That sounds delicious! I’ll have to ask him for the recipe!
-> Chat2
* What a good lunch! I was wondering if I could ask you for some help?
-> Explain1

==Chat2==
Mrslee?Smiling "Next time, I can bring enough to share! I will bring your favorite citrus candies too." 
Mrslee?Smiling " We can eat in the park, maybe. I love watching the birds. Eddie says not to feed the ducks, though."

*Don't feed the ducks? Why? 
->Chat3
* You’re the best! By the way, I have some questions you may be able to help with.
-> Explain1

==Chat3==
Mrslee?Neutral "Eddie says human foods aren't healthy for them. Makes them full, but doesn't contain the right nutrients." 
Mrslee?Neutral "I feel sad when they quack for snacks, but I don't want to make them sick. So, I don't share." 

*I didn't know that! Hey, can I ask a question about health? 
->Explain1
Smarts run in the family! Can I borrow your smarts? 
->Explain1

==Explain1==
Mrslee?Neutral "Tell me what I do to help."
* Amazing! A friend is worried about a potential chronic illness diagnosis.
-> Suggestion1

==Suggestion1==
~ notification = "Mrslee_Day 4_Learn to listen to your body, and give yourself permission to rest when needed_Lila4-1"
# notification Mrslee_Day 4_Learn to listen to your body, and give yourself permission to rest when needed_Lila4-1

Mrslee?Neutral "Chronic illnesses are not easy. Tell your friend that many people have very, very good lives with chronic illness."
Mrslee?Neutral "I have many friends who manage ongoing health challenges. It can be hard to stay on top of everything."
Mrslee?Neutral "It is common to feel nervous. It is very important to take care of yourself and rest when your body says to rest."
Mrslee?Neutral "Many struggle with life changes after diagnosis. There are specific symptoms depending on the illness, but fatigue and sleep problems are very common."
Mrslee?Neutral "if you are tired or need to rest, it is always better to lie down than to push through."
Mrslee?Smiilng "It can be hard. We all want to do everything, all the time. But that is not always possible."

* That's useful insight. What else should I tell her? 
->Suggestion2
* How can she find the right type of care?
-> Suggestion2

==Suggestion2==
~ notification = "Mrslee_Day 4_Medical innovations come along all the time -- find a specialist you trust and stay up to date on the latest development_Lila4-2"
# notification Mrslee_Day 4_Medical innovations come along all the time -- find a specialist you trust and stay up to date on the latest development_Lila4-2 

Mrslee?Smiling "Learn as much as possible. There's no such thing as too much reading. or asking too many questions." 
Mrslee?Smiling "Scientists and doctors learn more every year. Medicine and technology change so fast! There are advancements everyday that help people be healthy."
Mrslee?Neutral "Your primary care doctor will help know what type of specialist to find. Chronic illness often requires a team."


* Thank you, Mrs.Lee!
-> Goodbye
* That sounds 
-> Goodbye

==Goodbye==
Mrslee?Smiling "Happy to share. Hope it helps."
* I’ll never say no to more time with you, or soup!
-> END
* See ya!
-> END
