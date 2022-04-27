VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""


-> intro

==intro==
~ new_quest = "Lila3.txt"
# new_quest

Lila?Neutral "Hi, {player_name}! It's good to see you."
* Hey Lila! How are you doing? 
->Chat1
*Hey! Good to see you! You okay?
 ->Chat1

==Chat1==
Lila?Smiling "Honestly, it has been an emotional time for me. It’s so nice fostering the sort of community I wish I had growing up, but I get a little misty-eyed every now and again."

Lila?Smiling "Trisha has also been a great help. We’ve begun to work together on a lot of aspects and it’s definitely brought us closer as a couple."
Lila?Smiling "We are having conversations about topics that never came up until now. And I’ll never say no to more time with her!"
* That’s awesome!
-> Chat2
* You two are so cute, talk about a power couple!
-> Chat2

==Chat2==
Lila?Smiling "Aw, thank you! I'm really loving this process. 
Lila?Smiling "Last week, Trisha came up with this neat activity where the mentors guided their mentees in making art pieces about who they are and want to be."
Lila?Smiling "It was so cool seeing everyone express their unique identities and personalities."
Lila?Smiling "I love the connections that happen when people open up. It felt like I was watching something magical happen."
Lila?Neutral "I feel really at home there, which is such a shift from how I’ve felt before"

* I’m really proud. Bloomwood is lucky to have you.
-> QuestIntro

==QuestIntro==
Lila?Neutral "Aw, thank you." 
Lila?Neutral "I’ve always felt a little bit lonely in Bloomwood, even though I have close friends here who care about me, like you, Mrs. Lee and Eddie. Trisha, of course."
Lila?Neutral "The group has helped with feeling connected in general, but I still feel a little isolated. There aren't a lot of queer people I can just grab a cup of coffee with. Ya know?"
Lila?Neutral "Being around Trisha is wonderful, but I wish I had more of a community in that sense."

* I wouldn't have guessed, Lila! Tell me more?
-> QuestDetails1
* Hey, if you ever need someone, I’m there for you!
-> QuestAcceptance

==QuestDetails1==
Lila?Neutral "Well, it can be really hard to find and meet people as a whole, but especially people I relate to."
Lila?Neutral "There isn’t always a lot of open discussion about one’s personal identity and in some places, it isn’t seen as appropriate conversation."
Lila?Neutral "As a Black, queer woman, my experiences sometimes feel really lonely and specific." 
Lila?Neutral "Finding other people who exist at the same intersection of identities that I do is hard."
Lila?Neutral "I don’t want to go my whole life not meeting other people who understand me in that way."
* We all deserve to feel understood.
-> QuestDetails2
* I’m sorry, Lila. Listen, if you want, I can collect some wisdom for you?
-> QuestAcceptance

==QuestDetails2==
Lila?Neutral "I know I shouldn’t be picky, but I wish I had a more diverse community and support group of people my age I could go to about these feelings, outside of Trisha."
Lila?Neutral? "A lot of queer spaces I see are centered around younger folks so it is hard being older, yet still disconnected and trying to find a place I feel comfortable in."
Lila?Neutral "Ultimately, I am happy, but it’s hard. I'm really hurting for a peer group."
* We all deserve a safe place. I can ask around for advice for you if you’d like.
-> QuestAcceptance
* Thank you for trusting me with this. Do you want me to look around for you?
-> QuestAcceptance

==QuestAcceptance==
Lila?Smiling "I really appreciate the offer. Only if you have time, okay? I want to expand my social sphere, but putting myself out there is really hard, especially as an introvert."
* You deserve to a social community you feel understood and good in.
-> Goodbye

==Goodbye==
Lila?Smiling "Thank you for the reminder. I definitely needed to hear that. I need to get back inside... We'll chat later? Thank you again."
* I’ll spread these social butterfly wings and be right back.
-> END
* Of course, Lila. Anything for a friend.
-> END
