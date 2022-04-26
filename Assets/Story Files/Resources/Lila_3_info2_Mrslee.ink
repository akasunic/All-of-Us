VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrslee?Smiling "{player_name}! Wonderful see you."
* Hi, Mrs.Lee! It’s lovely to see you too!
-> Chat1
* Happy you’re here!
-> Chat1

==Chat1==
Mrslee?Smiling "
* How’s your exercise class been?
-> Chat2
* Mrs.Lee, can I ask a question?
-> Explain1

==Chat2==
Mrslee?Smiling "Good! I love water fitness class! My friends meet there every week."
Mrslee?Smiling "Afterwards, we get lunch together and talk about our families, about our gardens. about getting older."
* That sounds like so much fun! 
-> Chat3
* I love that! Hey, do you have a minute for a question?
-> Explain1

==Chat3==
Mrslee?Smiling "It is. Between class, my friends, and helping Lila, I don't worry for Eddie too much."

Mrs.Lee?Smiling "How about you? What are you up to?"
* You’re a wonderful grandmother, Mrs.Lee. Hey, can I ask you something?
-> Explain1
* I was wondering if you knew how Eddie has made new friends?
-> Explain1

==Explain1==
Mrslee?Neutral "I always try my best to answer, {player_name}.
* A close friend is trying to meet some new people. Do you have any advice?
-> Suggestion1
* Hey, I’m trying to help a friend make some new connections. Any thoughts?
-> Suggestion1

==Suggestion1==
~ notification = "Mrslee_Day 3_Connecting with community can include deepening existing relationships_Lila3-3"
# notification Mrslee_Day 3_Connecting with community can include deepening existing relationships_Lila3-3 

Mrslee?Neutral "Sometime I have weekly video calls with old friends and few ladies from fitness class. I feel really supported."
Mrslee?Neutral "Making new friends older hard, but going to class and library help me meet new friends and get to know acquaintances I didn’t know I had much in common with."
Mrslee?Neutral "Woman from library also lost her husband. We bond and spend time together a lot now."
* Ah, I see. Do you know how Eddie has made new friends?
-> Suggestion2
* That’s really helpful, thank you Mrs.Lee!
-> Goodbye

==Suggestion2==
~ notification = "Mrslee_Day 3_When entering a new space, bring someone you trust with you for support_Lila3-4"
# notification Mrslee_Day 3_When entering a new space, bring someone you trust with you for support_Lila3-4 

Mrslee?Smiling "Very valuable for Eddie have people who connect him to heritage. He reach out to groups and ask friends to bring him to events. Going with someone make him feel more comfortable in new place."
Mrslee?Smiling "In a new place, having buddy can be very special. It make him feel okay to go alone after some time."
* Thank you so much, Mrs.Lee! That’s really helpful!!
-> Goodbye
* That makes a lot of sense, thank you!
-> Goodbye

==Goodbye==
Mrslee?Smiling ""I so happy I help, {player_name}. I go now, but stop by and say hello soon. See you!"
* Goodbye, Mrs.Lee!
-> END
* Thanks so much for your help, Mrs. Lee. Have the best time dancing. See you!
-> END
