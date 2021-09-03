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

Elisa?Smiling "Oh hey, {player_name}! Wow, I haven’t seen you since high school tutoring, how’ve you been?"

* I've been good- hey, I'm glad I ran into you! Are you busy this Friday? I would love your input on this block party I'm working on.
  ->BlockTalk

* I've been good! What about you, how is school going?
  ->SmallTalk


=== BlockTalk ===
Elisa?Neutral "A block party? Huh, it sounds fun, but I don't know... I'm really busy this week."
Elisa?Neutral "I've got an exam coming up, and work for the Nature Club. Plus there's this huge career fair at my school... it's really stressing me out."

* Why is the career fair stressful for you?
    -> CareerFair
* Well, I'm sure you'll do great.
    -> TheCatchIs


===SmallTalk===

Elisa?Neutral "School is going ok! This week is just really busy out of nowhere."
Elisa?Neutral "I've got an exam coming up, I'm in charge of this scavenger hunt for the Nature Club, and plus there's this huge career fair at my school... it's really stressing me out."

* Ooh, when's the scavenger hunt!
  -> ST2
* I'm sorry to hear that. The scavenger hunt sounds fun though!
  -> ScavengerHunt
* Well, if you're looking for a stress reliever, we're throwing a block party on Friday this week!
  -> FairSegue
    
    
===CareerFair===

Elisa?Neutral "Well, I've never actually been to one before. All I've heard from the school is that the fair is happening."
Elisa?Neutral "And my parents never had to do anything like this, so I don't really have anyone I can ask for advice."

* I'm sorry to hear that, is there anything I can do to help? 
  -> QuestOutline
* Yeah, that's fair, I don't know too much about career fairs myself. 
  -> AltQuestOutline

===TheCatchIs===

Elisa?Neutral "Well, I hope you're right, but I don't know... I've never actually been to a career fair before. All I've heard from the school is that it's happening."
Elisa?Neutral "And my parents never had to do anything like this, so I don't really have anyone I can ask for advice. I'm kinda stressed about it."

* I'm sorry to hear that. Is there anything I can do to help? 
  -> QuestOutline
* Yeah, that's fair. I don't know much about career fairs myself.
  -> AltQuestOutline

===ST2===
Elisa?Smiling "Tomorrow afternoon! All the teams are going to meet at the student center for an awards ceremony if you wanna come- it's open for anyone to attend!"

* I'll be there! 
  -> ST3
* That doesn't sound so bad! Do you have a lot of planning to do tonight?
  -> ST4
* Gotcha. Hey, are you busy on Friday by any chance? I would love your input on this block party I'm working on.
  -> FairIntro

===ScavengerHunt===

Elisa?Neutral "Thanks. I mean, I know it'll definitely be fun once it's happening, but right now there's so many moving parts. I still need to assign the teams,"
Elisa?Neutral "make sure the stores are delivering the plants at the right times, and split the volunteer drivers between teams."


* I'm great with planning, and I have a bit of time. Maybe I could help you out?
  -> HowAreYou
* I see... hey, speaking of events, are you busy on Friday by any chance? I would love your input on this block party I'm working on. 
  -> FairIntro


===FairSegue===

Elisa?Neutral "A block party? Huh, I don't know... it sounds fun for sure, but I've got a lot of stuff that I was hoping to get done, you know?"
Elisa?Neutral "I've gotta figure out what I'm gonna do about that career fair, I don't even know where to start."

* What's wrong with a career fair?
  -> CareerFair
* Well, I'm sure you'll do great.
  -> TheCatchIs
    
===ST3===

Elisa?Neutral "Thanks so much! Hopefully it'll end up being great. Right now there's so many moving parts to keep track of... I haven't had time to prep for the career fair yet."

* What's wrong with a career fair?
  -> CareerFair
* Well, I'm sure you'll do great. 
  -> TheCatchIs
    
===ST4===

Elisa?Neutral "Yeah, luckily I have help. My biggest task for tonight is finishing up the clues."

* I'm great with planning, maybe I could help you out!
  -> HowAreYou
* I see... hey, speaking of events, are you busy on Friday by any chance? I would love your input on this block party I'm working on. 
  -> FairIntro

===FairIntro===

Elisa?Neutral "A block party? I don't have an event, so I am tempted. I was going to use that time to prep for the career fair if I'm being honest."
Elisa?Neutral "I've gotta figure out what I'm supposed to do there- I don't even know where to start."

* What do you need specifically?
  -> CareerFair
* Well, I'm sure you'll do great.
  -> TheCatchIs

===HowAreYou===

Elisa?Smiling "Aww, that's awfully nice of you. It shouldn't be too bad, I think I just need to spend an hour or two more tonight."
Elisa?Smiling "Thanks for offering, though! Anyway, how have you been? What have you been up to these days?"

* I've been good! I'm actually working on this block party at the end of the week.
  -> preFair
* I'm pretty busy myself, there's this big block party coming up that I'm in charge of.
  -> preFairAlt


===preFair===

Elisa?Smiling "Oh, a block party? That sounds fun, when is it!"

* Friday! We're actually looking for more help with it- would you be interested? 
  -> youInterested
* It's this Friday! You know, we're planning a succulent planting booth- you would be a great person to run it!
  -> youInterested


===preFairAlt===

Elisa?Neutral "Oh, I'm sorry to hear that. A block party sounds fun, though! I hope I'll be able to stop by."
Elisa?Neutral "I've gotta figure out what I'm gonna do about that career fair, I don't even know where to start."

* What do you need specifically?
  -> CareerFair
* Well, I'm sure you'll do great.
  -> TheCatchIs
    
===youInterested===

Elisa?Neutral "Hmm... I don't have an event, so I am tempted. I was going to use that time to prep for the career fair if I'm being honest."
Elisa?Neutral "I've gotta figure out what I'm supposed to do there- I don't even know where to start."

* What do you need specifically?
  -> CareerFair
*Well, I'm sure you'll do great.
  -> TheCatchIs


===QuestOutline===

Elisa?Smiling "Actually, that'd be great! I'd love to ask around to see if anyone has any tips for networking, but I've got finish this scavenger hunt planning for tomorrow."
Elisa?Neutral "Could you ask around and see if anyone has advice?"

* Of course! Do you have any suggestions on who I should ask? 
  -> QuestSpecifics
* Sure, no problem! 
  -> Farewell
    
===AltQuestOutline===

Elisa?Neutral "Yeah, me neither. Actually, I could use your help if you're willing."
Elisa?Neutral "I'd love to ask around to see if anyone has any tips for networking, but I've got this essay due in a few hours. Could you ask around and see if anyone has advice?"

* Of course! Do you have any suggestions on who I should ask? 
  -> QuestSpecifics
* Sure, no problem! 
  -> Farewell
    
===QuestSpecifics===

Elisa?Neutral "I was planning on askinig the adults around town who have experience with going to university and job hunting."
Elisa?Neutral "The big things are: what to bring to the fair, what good conversation topics for networking are, and if there are any general tips for success I should know."

* Got it! 
  -> Farewell
* I'll see what I can do.
  -> Farewell
    
===Farewell===

Elisa?Smiling "Awesome, thank you so much! Well, I should get on this essay. Let me know what you find!"

* Sounds good! 
  ->END
* Alright, have fun writing!
  ->END
