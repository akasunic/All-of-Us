VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Mrslee?Smiling "{player_name}! Hello!"

* Hi Mrs. Lee! How are you?
    -> Chat1
* Hello! Where are you headed with that swimsuit? 
    -> Chat1

==Chat1==
Mrslee?Smiling "Water fitness! Me and Korean ladies meet there every week."

* That sounds like fun!
    -> Chat2
* Do you do any other fitness classes here in the community center?
    -> Explain1

==Chat2==
Mrslee?Smiling "It is. Been good to fill time so I don't worry for Eddie too much."

* He's doing so well, you are a great grandmother Mrs. Lee.
    -> Chat3
* Any other fitness classes you are using to fill your time too?
    -> Explain1

==Chat3==
Mrslee?Smiling "Aw thank you. He and Lila are my babies."

* I was actually wondering, do you do any other fitness activities here?
    -> Explain1

==Explain1==
Mrslee?Neutral "Yes, I think yesterday about trying yoga after Block Party on Sunday."

* Do you think Lila might be interested in doing it with you?
    -> Explain2
* Yoga sounds relaxing. Would you be willing to invite Lila?
    -> Explain2

==Explain2==
Mrslee?Neutral "Lila? She want to do yoga?"

* If you invite her I think she would!
    -> Suggestion1
* She might! I was thinking she might be more starting a new activity and meeting new people with you.
    -> Suggestion2

==Suggestion1==
Mrslee?Smiling "She can come to water fitness with me!"

~ notification = "Mrslee_Day 4_Mrs. Lee invites Lila to come to water fitness to spend time with Mrs. Lee and her friends"
# notification Mrslee_Day 4_Mrs. Lee invites Lila to come to water fitness to spend time with Mrs. Lee and her friends

* She might like that, but I think she might be more interested in something she can meet new people at. She knows all your friends!
    -> Suggestion2
* Good idea! I'll tell her the time and to meet you there.
    -> Goodbye

==Suggestion2==
Mrslee?Smiling "Oh, Lila do need to move more than now. I invite her to Sunday class!"

~ notification = "Mrslee_Day 4_Mrs. Lee invites Lila to come to yoga with her, where both of them will be new students_Lila4"
# notification Mrslee_Day 4_Mrs. Lee invites Lila to come to yoga with her, where both of them will be new students_Lila4

* She could be interested in something else too.
    -> Suggestion1
* Sunday would be great. Right after the Block Party. Maybe she'll have met some of the yoga attendees there!
    -> Goodbye

==Goodbye==
Mrslee?Smiling "Always excited to do things with Lila! I have to go. Class start now!"

* Thanks Mrs. Lee, see you around! 
    ->END
* We all love Lila! Bye now!
    ->END

