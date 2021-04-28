VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Elisa1.txt"
# new_quest
~ new_contact = "Elisa"
# new_contact
Elisa?Smiling "Oh hey {player_name}! Wow, I haven't seen you since __, how've you been?"

*I've been good- hey are you busy this Friday? I would love your help with this block party I'm working on.
  ->BlockTalk

*I've been good! What about you, how is school going?
  ->SmallTalk


=== BlockTalk ===
Elisa?Neutral "A block party? Huh, I don't know... I'm really busy this week, {player_name}."
Elisa?Neutral "I've got an exam coming up, and the Nature Club, and plus there's this huge career fair at my school... It's really stressing me out."

* What's wrong with a career fair?
    -> CareerFair
* Well, I'm sure you'll do great.
    -> TheCatchIs


===SmallTalk===

Elisa?Neutral "School is going ok! This week is just really busy out of nowhere."
Elisa?Neutral "I've got an exam coming up, and I'm in charge of this scavenger hunt for the Nature Club, and plus there's this huge career fair at my school... It's really stressing me out."

* Ooh, when's the scavenger hunt!
  -> ST2
* I'm sorry to hear that.
  -> ScavengerHunt
* Well, if you're looking for a stress reliever, we're throwing a block party on Friday that's gonna be pretty fun.
  -> FairSegue
    
    
===CareerFair===

Elisa?Neutral "Well, I've never actually been to one before. All I've heard from the school is that the fair is happening."
Elisa?Neutral "And my parents never had to do anything like this, so I don't really have anyone I can ask for advice. I'm kinda stressed about it."

* I'm sorry to hear that, is there anything I can do to help? 
  -> QuestOutline
* Yeah, that's fair, I don't know much about career fairs myself. 
  -> AltQuestOutline

===TheCatchIs===

Elisa?Neutral "Well, I hope you're right, but I don't know... I've never actually been to one before. All I've heard from the school is that the fair is happening."
Elisa?Neutral "And my parents never had to do anything like this, so I don't really have anyone I can ask for advice. I'm kinda stressed about it."

* I'm sorry to hear that, is there anything I can do to help? 
  -> QuestOutline
* Yeah, that's fair, I don't know much about career fairs myself.
  -> AltQuestOutline

===ST2===
Elisa?Smiling "Tomorrow afternoon! All the teams are going to meet at the student center for an awards ceremony if you wanna come- it's open for anyone to attend!"

* I'll be there! 
  -> ST3
* That doesn't sound so bad, do you have to do a lot still to do or something?
  -> ST4
* Gotcha. Hey, are you busy on Friday by any chance? I would love your help with this block party I'm working on.
  -> FairIntro

===ScavengerHunt===

Elisa?Neutral "Thanks. I mean, I know it'll end up being fun, but right now there's so many moving parts between assigning the teams,"
Elisa?Neutral "and researching what stores sell what plants, and who can be the drivers."


* I'm great with planning, maybe I could help you out!
  -> HowAreYou
* I see... hey, speaking of events, are you busy on Friday by any chance? I would love your help with this block party I'm working on. 
  -> FairIntro


===FairSegue===

Elisa?Neutral "A block party? Huh, I don't know... it sounds fun for sure, but I've got a lot of stuff that I was hoping to get done, you know?"
Elisa?Neutral "I've gotta figure out what I'm gonna do about that career fair, I don't even know where to start."

* What's wrong with a career fair?
  -> CareerFair
* Well, I'm sure you'll do great.
  -> TheCatchIs
    
===ST3===

Elisa?Neutral "Thanks so much! Hopefully it'll end up being great. Right now there's so many moving parts to keep track of... I haven't even had time to prep for the career fair yet."

* What's wrong with a career fair?
  -> CareerFair
* Well, I'm sure you'll do great. 
  -> TheCatchIs
    
===ST4===

Elisa?Neutral "Yeah, I mean luckily I'm not in charge of everything, but I still have to finish the clues and finish organizing the teams."

* I'm great with planning, maybe I could help you out!
  -> HowAreYou
* I see... hey, speaking of events, are you busy on Friday by any chance? I would love your help with this block party I'm working on. 
  -> FairIntro

===FairIntro===

Elisa?Neutral "A block party? I'm technically free on Friday, but I've got a lot of stuff that I was hoping to get done, you know?"
Elisa?Neutral "I've gotta figure out what I'm gonna do about that career fair, I don't even know where to start."

* What's wrong with a career fair?
  -> CareerFair
* Well, I'm sure you'll do great.
  -> TheCatchIs

===HowAreYou===

Elisa?Smiling "Aww, that's awfully nice of you. It shouldn't be too bad honestly, I think I just need to spend an hour or two more on it tonight."
Elisa?Smiling "Thanks for offering, though! Anyway, how have you been? What have you been up to these days?"

* I've been good! I'm actually working on this block party coming up.
  -> preFair
* I'm pretty busy myself, there's this big block party coming up that I'm in charge of.
  -> preFairAlt


===preFair===

Elisa?Smiling "Oh, a block party? That sounds fun, when is it!"

* Friday! We're actually looking for more help with it, would you be interested? 
  -> youInterested
* It's this Friday! You know, we're holding a little succulent planting booth too, we'd love to have you on board.
  -> youInterested


===preFairAlt===

Elisa?Neutral "Oh, I'm sorry to hear that. A block party sounds fun, though! I wish I could help out, but I've got a lot of stuff that I was hoping to get done, you know?"
Elisa?Neutral "I've gotta figure out what I'm gonna do about that career fair, I don't even know where to start."

* What's wrong with a career fair?
  -> CareerFair
* Well, I'm sure you'll do great.
  -> TheCatchIs
    
===youInterested===

Elisa?Neutral "Hmm... I'm technically free on Friday, but I've got a lot of stuff that I was hoping to get done, you know?"
Elisa?Neutral "I've gotta figure out what I'm gonna do about that career fair, I don't even know where to start."

* What's wrong with a career fair?
  -> CareerFair
*Well, I'm sure you'll do great.
  -> TheCatchIs


===QuestOutline===

Elisa?Smiling "Yeah, that'd be great! Basically, I'd love to ask around to see if anyone has any tips for networking, but I've got finish researching plants for teams to find during the scavenger hunt."
Elisa?Neutral "Could you ask around for some advice for me?"

* Yeah, who should I ask? 
  -> QuestSpecifics
* Sure, no problem! 
  -> Farewell
    
===AltQuestOutline===

Elisa?Neutral "Yeah, me neither. Actually I could use your help if you're willing."
Elisa?Neutral "I'd love to ask around to see if anyone has any tips for networking, but I've got this essay due in a few hours. Could you ask around for some advice?"

* Yeah, who should I ask? 
  -> QuestSpecifics
* Sure, no problem! 
  -> Farewell
    
===QuestSpecifics===

Elisa?Neutral "I'd ask the adults you know around town who have experience with this sort of thing."
Elisa?Neutral "The big things I'm fuzzy on are what to bring to the career fair, what good conversation topics for networking are, and if there are any general tips for success I should know."

* Got it! 
  -> Farewell
* Well, I'll see what I can do, but I don't know if I'll find anything.
  -> Farewell
    
===Farewell===

Elisa?Smiling "Awesome, thank you so much! Well, I should get back to my research. Let me know what you find!"

* Sounds good! 
  ->END
* Alright, have fun with your plant research!
  ->END
