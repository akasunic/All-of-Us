VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Elisa?Smiling "Hey {player_name}!"

* Hey Elisa! How are you?
    -> Chat1
* Nice to see you, Elisa! Glad I could catch you for a second. How are you?
    -> Chat1

==Chat1==
Elisa?Smiling "Pretty good. Running around as usual. I'm looking forward to the Block Party tomorrow! Even though I'll probably just be chasing my little sibs around looking after them."

* Glad to hear it! Everyone I've talked to recently is either running a booth or stopping by for a few hours at least.
    -> Chat2
* Me too! Aw, hopefully you can drop them at Lila's child care for a little while so you can spend a little time with your friends.
    -> Explain1

==Chat2==
Elisa?Smiling "If I can help out, I will! Still have to see whether I need to work tomorrow morning or whether I can help set up."

* It's no problem if you can't, just want you to be free to enjoy it!
    -> Explain1


==Explain1==
Elisa?Neutral "I hope so! Sometimes I wish I had an older sibling so I could be the youngest and run around and play."

* They are lucky to have you. We talked earlier this week about that mentorship you were looking for, how is that working out?
    -> Explain2

==Explain2==
Elisa?Neutral "One of the girls and I connected, and she's great, but she lives the town over so I can't see her that much. I was hoping to find someone in Bloomwood."

* Have you thought about reaching out to Lila? She's not first-gen, but she's definitely had a unique life.
    -> Suggestion1

==Suggestion1==
Elisa?Smiling "Are you sure she isn't too busy?"

* She might be busy, but she's really good at making time for the people she cares about.
    -> Suggestion2

==Suggestion2==
Elisa?Smiling "Then I would love to!"

~ notification = "Elisa_Day 4_Elisa wants to get to know Lila better, and is going to reach out this weekend to set up a coffee date_Lila4"
# notification Elisa_Day 4_Elisa wants to get to know Lila better, and is going to reach out this weekend to set up a coffee date_Lila4

* Nice! Lila's not the best at reaching out, otherwise I think she would have already. She sees a lot of herself in you. The chaos especially!
    -> Goodbye

==Goodbye==
Elisa?Smiling "I look up to her so much! That's really reassuring to hear right now since I'm going through so much with my family and school."
Elisa?Smiling "I have to go now, but I'll try to find her tomorrow and ask her to coffee. I'll see you later!"

* Bye Elisa!
    ->END
* See you later! Good luck!
    ->END
