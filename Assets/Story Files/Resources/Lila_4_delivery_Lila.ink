VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Lila4.txt"
# new_quest

Lila?Smiling "Hey {player_name}! How are you?"

* Doing alright! Walking around, seeing what I can do to help before the party tomorrow.
    -> Chat1
* Good! Feeling good about the party tomorrow?
    Lila "Yeah! "
    -> QuestIntro

==Chat1==
Lila?Smiling "You've really given everyone so much this week. What are you planning on doing during the Block Party? You should just walk around and enjoy it!"

* I'm planning on it! I'll just take Saturday off and let everyone do their thing.
    -> Chat2
* I probably will, I've gotten closer to a lot of people this week and I want to catch up with them all.
    -> QuestIntro

==Chat2==
Lila?Smiling "Trisha's really excited to walk around and see everyone's stands. She's also going to sign up to be a mentor for my club!"
Lila?Smiling "I convinced her to last night, so she can make some new connections."

* I hope everyone feels more connected after this Block Party.
    -> QuestIntro

==QuestIntro==
Lila?Neutral "I've felt more a part of Bloomwood than ever this week. Though, if I'm being honest, I am worried I'll be a little lonely tomorrow."

* Really? You can share with me if you want.
    -> QuestDetails1
* I can stick around your booth if you'd like.
    -> QuestDetails1

==QuestDetails1==
Lila?Neutral "Thanks. I know I have some really good friends here, like Trisha, Mrs. Lee, and you. Even Rashad and I have been connecting more this week."
Lila?Neutral "I think I just wish I had more connections in general. I love my friends, but I need people around my age to hang out with aside from Trisha."
Lila?Neutral "I think we spend so much time together we're starting to get on each other's nerves."

* Have you talked to Trisha about it?
    -> QuestDetails2
*  That happens at a certain point in a relationship, when you're really close.
    -> OptionalQuestDetails1

==OptionalQuestDetails1==
Lila?Neutral "I'm kind of worried what Trisha will think if I change our schedule around by going out with other people or spending time with new friends,"
Lila?Neutral "but she'll always be invited, and she might enjoy the change too."

* I think she'll appreciate you being honest with her.
    -> QuestDetails2

==QuestDetails2==
Lila?Neutral "I have, but she thinks it might be more of a little sister-wish type of thing."
Lila?Neutral "Teaching at the community center fills part of that for me, but she knows how much I wish I could have had someone to grow up with and take care of in the way only family can."

* I didn't know that! Eddie is like a little brother though, right?
    -> OptionalQuestDetails2
* Accept the quest. 
    -> QuestAcceptance

==OptionalQuestDetails2==
Lila?Neutral "He is. Something different about a little brother versus a little sister though!"

* I agree. Let me ask around. I think I could find a few people to introduce you to.
    -> QuestAcceptance
* Makes sense. I have a few people in mind I think you would really connect with.
    -> QuestAcceptance

==QuestAcceptance==
Lila?Smiling "Really? Only if you have the time! I feel crazy that I'm relieved someone is offering to make friends for me. I'm too introverted to have the energy after a week at school."

* Social connections are important! And relationships take time. You're not alone feeling this way.
    -> Goodbye
* It's no problem at all. 
    -> Goodbye

==Goodbye==
Lila?Smiling "Let me know! I would love to meet some new people at the Block Party."

* I will! See you soon.
    ->END
* There will definitely be plenty! I'll try to find who I can now though. Talk soon!
    ->END
