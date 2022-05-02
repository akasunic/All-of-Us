
VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Rashad2.txt"
# new_quest

Rashad?Smiling "Hey {player_name}! How’s it going? I was hoping I’d run into you today."

* Hey! What good news do you have for me?
  ->Chat1
* Aww! You were thinking of me! What can I do for you?
  ->Chat1


==Chat1==
Rashad?Smiling "The Library abolished fines, so you can forget about that 'How to Draw' book you took out in 2000..."

Rashad?Smiling "Nah. I wanted to thank you. I finally got a good night’s rest. I haven’t had one of those in a while."

* You've been losing sleep? What’s going on?
  ->Chat2 
* I'm going to ignore that jab. Thank me for what?
 ->Chat2


==Chat2==
Rashad?Neutral "My sleep schedule is pretty messed up. I get so <a>anxious</a> the night before Library board meetings." 

Rashad?Neutral "I can't sleep because I’m too busy tossing and turning and playing fake scenarios in my head."

Rashad?Smiling "But anyway, I wanted to thank you!"

* Thank me? What for? 
  -> QuestIntro

==QuestIntro==
Rashad?Neutral "Well, remember when you sent in that feedback form, suggesting the bookmobile? The Library board loved the idea, and have decided to support it!"
Rashad?Neutral "Honestly, it's the first time in a while they jumped on something the first time it came up. So, thank you!"

* Wait, they don't usually listen to you?
  -> QuestDetails1
 * ...All I did was send one email..?
  -> QuestDetails1

==QuestDetails1==
Rashad?Neutral "Keep this between us, but they don't like half of the programs I suggest because they say it's <i><a>off-brand</a></i> for their vision of Bloomwood Library."
Rashad?Neutral "It's frustrating when they criticize my ideas, but accept them from an outsider."
Rashad?Smiling "Somehow it's less infuriating this time because it came from you. At least you're part of the community."

* I’m sorry you’re dealing with this, Rashad. Is there anything I can do?
  -> QuestDetails2
* That's terrible. No wonder you're tired and stressed.
  -> OptionalQuestDetails1


==OptionalQuestDetails1==
Rashad?Neutral "Right? I read about something called <a>racial stress</a>, and between us? I think it's what's happening."
Rashad?Neutral "The <a>microagresssions</a> from some board members make me feel powerless. Lately I've just been down, you know?"
Rashad?Neutral "I love the Library, but sometimes I wonder if it’s even worth sticking around anymore if I constantly have to deal with this."

* I'm glad I could help. What else can I can do?
  -> QuestDetails2
* They shouldn't be treating you this way, Rashad. What can I do to help?
  -> QuestAcceptance
  

==QuestDetails2==
Rashad?Neutral "Besides telling that one board member to stop being surprised I'm "<a>articulate</a>"? Ugh. I really wish I knew how to navigate this type of energy."

* Wow. That is waaayyyy out of line. You're the Head Librarian!
  -> OptionalQuestDetails2
* This is unacceptable treatment, Rashad. How can I support you?
  -> QuestAcceptance

==OptionalQuestDetails2==
Rashad?Neutral "Sometimes I question if they are being racist, or if I’m just being overly sensitive."
Rashad?Neutral "I spend a lot of time worrying about being perfect, and you know that can be really exhausting. I lose a lot of sleep."

* No job is worth this much stress, Rashad. Can I help in any way?
  -> QuestAcceptance


==QuestAcceptance==
Rashad?Smiling "You're a really good friend, {player_name}. The board has really been <a>trying my patience</a>."
Rashad?Smiling "If you can <a>do me a solid</a> and look for some more information on how to deal with <a>microaggressions</a> and stress, that would help me out. I'm at my limit." 

* Let me poke around and see what I can find. I'll get back to you soon.
  -> Goodbye


==Goodbye==
Rashad?Smiling "Thanks for listening to me vent and helping me out, {player_name}. I really appreciate this. Take care of yourself, okay?"

* Take care, Rashad.
  ->END

