VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Lila2.txt"
# new_quest

Lila?Smiling "Hi {player_name}! How are you today?"

* Doing well, Lila! How are you? You look busy. 
    -> Chat1
* Eh, today has been okay.
    Lila "I feel you. "
    -> QuestIntro

==Chat1==
Lila?Smiling "Well! I am busy, but I'm passionate about most of the things I'm working on right now, so the time goes by really fast."

* That's good! How is Trisha doing? I haven't seen her in a bit. 
    -> Chat2
* Lead in to quest. 
    -> QuestIntro

==Chat2==
Lila?Smiling "She's doing well! Thanks for checking in. Right now I think she's at training camp with our dog, Charlie. He's been acting out recently. I wish I could have gone, but I couldn't make it."

* Oh, what happened?
    -> QuestIntro

==QuestIntro==
Lila?Neutral "I hurt my ankle yesterday, and when I went to the clinic to get it checked out, they measured my blood pressure and said it was high."
Lila?Neutral "Then they recommended I get some blood tests done, but I've never gotten them before, so I'm a little nervous."

* I don't like needles, but I like seeing my results!
    -> QuestDetails1
* I've gotten one a few times at the recommendation of my doctor. It's definitely worth it.
    -> QuestDetails1

==QuestDetails1==
Lila?Neutral "I agree, one of my friends in college found out she had breast cancer when she found a lump one day, and apparently Black women have a higher chance of developing breast cancer."
Lila?Neutral "I know a blood test won't tell me that, but I'm wondering what other health conditions might affect me differently as well."

* Definitely.
    -> QuestDetails2
* Do you have any friends here in Bloomwood you could talk to about this? 
    -> OptionalQuestDetails1

==OptionalQuestDetails1==
Lila?Neutral "Not really, I've talked to Trisha about it but since she is South-Asian, she doesn't know much about Black women's health issues aside from some systemic issues that we both face."

* I'm sorry that it's hard for you to find information about this.
    Lila?Neutral "It's frustrating, and "
    -> QuestDetails2

==QuestDetails2==
Lila?Neutral "I think I'm also nervous because I'm afraid of what they'll find."
Lila?Neutral "I remember the sign in sheets when I was little having all of those family history questions, and I've never talked to my mom about that, and I don't know my dad."

* She's traveling right now, right?
    -> OptionalQuestDetails2
* Do you want me to look into some of this for you? Could relieve some pressure since I know you have a lot going on.
    -> QuestAcceptance

==OptionalQuestDetails2==
Lila?Neutral "Yeah, and even then, she wasn't the most on top of our health when she was around either. She doesn't have a lot of trust in the system."

* I wish you had more support on this. If you'd like, I can try to help.
    -> QuestAcceptance
* Would you like me to reach out to some people and see if they have any advice I could pass along to you?
    -> QuestAcceptance

==QuestAcceptance==
Lila?Smiling "That would actually be so welcome."
Lila?Smiling "I've been putting off figuring this out with all the work I have, but I know it should be a priority. Sometimes it's hard to take care of myself first."

* Of course, I'll let you know as soon as I find something out.
    -> Goodbye
* I feel that way too. I'll get on it.
    -> Goodbye

==Goodbye==
Lila?Smiling "Thanks again {player_name}!"

* See you soon!
    ->END
* Bye, Lila!
    ->END