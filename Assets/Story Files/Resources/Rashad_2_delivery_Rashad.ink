VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Rashad2.txt"
# new_quest

Rashad?Smiling "Hey {player_name}! It's good to see you! I was hoping you'd stop by the library today."

* Hey! library abolished fines, friend, so...
  ->Chat1
* Uh, oh. What did I do?
  -> QuestIntro

==Chat1==
Rashad?Smiling "Now, you know what, hah! Nobody is coming after you for that How to Draw book you took out in 2000. I wanted to thank you. I finally got some sleep last night."

* Wait, you've been losing sleep?
  ->Chat2 
* What did I do?
  -> QuestIntro

==Chat2==
Rashad?Neutral "A lot of it, actually. The night before the board meetings I'm usually so stressed I can't sleep. But anyway, I wanted to thank you!"

* Thank <i>me</i> for what?
  -> QuestIntro

==QuestIntro==
Rashad?Smiling "You got the library board to actually listen to me for once! They are really excited by the Block Party. Thanks for asking us to participate."

* Wait, they don't usually listen to you?
  -> QuestDetails1
* That's great news, but I'm worried about your stress, Rashad.
  -> QuestAcceptance

==QuestDetails1==
Rashad?Neutral "Look, between us?"
Rashad?Neutral "They don't like half of the programs I suggest because they say it's <i>offbrand</i> for the new vision of Bloomwood Library. It's frustrating, and makes me tired and angry."

* That sounds really, terrible Rashad. Is there anything I can do?
  -> QuestDetails2
* Offbrand? No wonder you're tired and stressed.
  -> OptionalQuestDetails1
* I can see why you'd be tired and angry.
  ->OptionalQuestDetails2

==OptionalQuestDetails1==
Rashad?Neutral "Right? I read about something called racial stress, and between us? I think it's what's happening."
Rashad?Neutral "The microagresssions from some board members make me feel powerless. Lately I've just been down, you know? I love this library."

* I know you do! Is there anything, I can do?
  -> QuestDetails2
* They shouldn't be making you feel like this, Rashad. Can I help you?
  -> QuestAcceptance

==QuestDetails2==
Rashad?Neutral "Besides telling that one board member to stop being surprised I'm "articulate"? Ugh. I really wish I knew how to handle their comments."

* Wow. That sounds really out of line, you're the Head Librarian!
  -> OptionalQuestDetails2
* They shouldn't be making you feel like this, Rashad. Can I help you?
  -> QuestAcceptance

==OptionalQuestDetails2==
Rashad?Neutral "Sometimes I question if they are being racist, and maybe it's me."
Rashad?Neutral "I spend a lot of time worrying about being perfect, and you know that can be really exhausting I lose a lot of sleep."

* You shouldn't be losing any sleep. Can I help in any way?
  -> QuestAcceptance
* They shouldn't be making you feel like this, Rashad. Can I help you?
  -> QuestAcceptance

==QuestAcceptance==
Rashad?Smiling "You're really, a good friend, {player_name}. The board has really been stressing me out."
Rashad?Smiling "If you can find me some more information on how to handle this and my stress, I would be really grateful. I'm exhausted." 

* Well, let me talk to some folks about resources, and I'll get back to you okay?
  -> Goodbye
* I got you, Rashad. You deserve to be treated better, friend.
  -> Goodbye

==Goodbye==
Rashad?Smiling "Thanks for always trying to keep us healthy, {player_name} I really appreciate this. Take care, okay?"

* Take care, Rashad.
  ->END
* Take care. I'll get on this now.
  ->END
