VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Rashad1.txt"
# new_quest
~ new_contact = "Rashad"
# new_contact

Rashad?Smiling "Hey {player_name}! How have you been?"

* I've been okay, but tired. You know how it is. I'm just trying to get this block party started.
  -> Chat1
* I'm doing really great! I'm really looking forward to this block party I've been planning. Speaking of, could I ask you about something?
  -> QuestIntro

==Chat1==
Rashad?Smiling "I do know. I've been here trying to get more programs started, <i>and</i> doing admin work."
Rashad?Smiling "Plus, the library has basically become a hub for social services. It's not just books these days."

* Really? That sounds like a lot of work to do.
  -> Chat2
* I feel you there. I did have something I wanted to ask you about.
  -> QuestIntro

==Chat2==
Rashad?Smiling "It really is a lot of work, honestly. Between us, the board isn't always understanding when it comes to what the community actually needs."
Rashad?Smiling "Someone has to watch out for <i>us</i>, you know? Anyway adventurer, is there anything I can help you with?"

* I do need something from you if it's not too much?
  -> QuestIntro
* I do have something, but you're dealing with a lot. You know if you ever need an extra hand or support...
  ->Chat3

== Chat3 ==
Rashad?Neutral "That's really kind {player_name}. It's manageable right now at least, but maybe we can talk about it at another time."

* Okay! Just let me know what you need and I'll be there. If it isn't too much, I wanted to ask you about something.
  -> QuestIntro

==QuestIntro==
Rashad?Smiling "Sure, how can I help?"

* I was wondering if I could convince you to have a library tent at the block party where people could sign up for a library card, or hear about library services?
  ->QuestDetails1
* I could really use a library tent for the Block Party.
  ->QuestDetails1

==QuestDetails1==
Rashad?Smiling "Hmm, that's not too hard, but the library is swamped. It would help me a lot if I could find someone for this open position in the YA section."
Rashad?Smiling "It's perfect for a student, who knows YA Lit. Do you know anyone who might be interested?"

* I may know someone. Do you have more details about the position?
  -> QuestDetails2
* Hmm. I'm not sure if I know anyone. Who do you think would be a good fit?
  -> OptionalQuestDetails1
* Sure! If I can find someone for the job, can we get the library on board?
  -> QuestAcceptance

==QuestDetails2==
Rashad?Neutral "Sure! We're looking for a part time worker in the YA section to reshelve books, run a help desk, and run a storytime on Saturdays."
Rashad?Neutral "If you find someone, just have them reply to the posting on the library website."

* I think I can find someone, do you think you could do the Block Party if I do?
  -> QuestAcceptance
* Excellent. Is there anything else I should know?
  -> OptionalQuestDetails1

==OptionalQuestDetails1==
Rashad?Smiling "I mean, it'd be perfect for a student. They can study when they staff the help desk. Oh, they'll need at <b>least 1 reference</b>, too."

* That's a reasonable ask. So the block party...?
  -> QuestAcceptance

==QuestAcceptance==
Rashad?Smiling "Yes! I'll be able to move some things around. If you can find someone to apply for the YA position, we could even have the bookmobile there!"

* Yes! I love the bookmobile, thanks Rashad!
  -> Goodbye
* Thanks, man. i appreciate this. I can find someone!
  -> Goodbye

==Goodbye==
Rashad?Smiling "Solid. If we can get even a single application it would help a lot. Octavia and Charles are going to be super excited about the weekend. I'm going to head into a meeting, see you soon!" 

* Bye Rashad!
  ->END
*I hope you're ready to drive the bookmobile! See you soon!
  ->END
