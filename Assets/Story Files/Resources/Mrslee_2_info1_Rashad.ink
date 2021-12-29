VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Rashad?Smiling "{player_name}, wassup!"

* Pretty good, Rashad. How 'bout you?
  -> Chat1
* I'm chillin', just preparing for the weekend. You?
  -> Chat1

==Chat1==
Rashad?Smiling "Ahhh yeah! I'm great. M'lady and the kids just stopped by so I'm still riding those good vibes.

* How is Cheryl doing?
  -> Chat2
* Do you ever see Mrs. Lee around the library?
  -> Explain1

==Chat2==
Rashad?Smiling "Cheryl is doing great actually. She's been loving these workout classes they're holding at the community center. She said Mrs. Lee goes too, they have a blast."

* Oh my gosh. I love that for Mrs. Lee and Cheryl
  -> Chat3
* I'm so impressed by Mrs. Lee
  -> Explain1

==Chat3==
Rashad?Smiling "Yeah it's really special for Cheryl actually. She never really knew Mrs. Lee until recently. Now they be exchanging recipes on email and stuff."

* I should get Mrs. Lee's email... she makes the best glass noodles!
  -> Explain1
* I would love to get on that email thread!
  -> Explain1

==Explain1==
Rashad?Smiling "Yeah, for real! And she's pretty impressive with her tech. I once suggested she sit in the computer class we hold here. She knew the most out of all of the older folks.

* Community classes at the library, like workshops, huh!
  -> Explain2
* I could come to a workshop sometime.
  -> Explain2

==Explain2==
Rashad?Smiling "Yeah we have tons of workshops at the library. It's an awesome resource. The workshops. I am also an awesome resource. Haha!"

* What's going on here tonight?
  -> Suggestion1
* That's why you're the boss!
  -> Suggestion2

==Suggestion1==
~ notification = "Rashad_Day 2_Mrs. Lee can go to the health programming workshop at the library"
# notification Rashad_Day 2_Mrs. Lee can go to the health programming workshop at the library

Rashad?Smiling "Tonight is... the health programming workshop. Actually a lot of people show up for this one."

* If I get some things done today, I might come by! Will you still be here?
  -> Suggestion2
* That's exactly what I needed to hear.
  -> Goodbye

==Suggestion2==
~ notification = "Rashad_Day 2_Mrs. Lee can ask Rashad for help scheduling her appointment_Mrslee2"
# notification Rashad_Day 2_Mrs. Lee can ask Rashad for help scheduling her appointment_Mrslee2

Rashad?Smiling "Heck yeah! If you're in the library, it is literally my job to help you. Need help with something? I got you."

* You are the best Rashad, you don't even know!
  -> Goodbye

==Goodbye==
Rashad?Smiling "Hahaha {player_name} always fun talkin' to ya. See you around."

* Peace!
  ->END
* Maybe see ya later!
  ->END
