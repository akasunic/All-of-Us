VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Elisa2.txt"
# new_quest

Elisa?Smiling "Oh, hey {player_name}!"

*Hey Elisa! How was the scavenger hunt?
    -> recap
*Hi! Hey, did you have any more thoughts on the block party?
    -> jump
    
===recap===

Elisa?Smiling "Oh, it went really well! We had really good turnout, and it seemed like everyone had a lot of fun with it."

*That's awesome! 
    -> recap2
*Cool, cool... so the block party is coming up sooooonnn. 
    -> jumpAlt
    
===jump===

Elisa?Neutral "Oh right, the block party! I wish I had an answer for sure, but I promise I'll keep thinking about it!"
Elisa?Neutral "I want to be honest with myself about what I can commit to. Random things keep popping up, too."

*Like what? 
    -> explain
*More school stuff?
    -> explainAlt
    
===recap2===

Elisa?Smiling "Yeah!! Anyway, what's new with you?"

*Still gearing up for that big block party, actually... do you know if you could run that booth yet? 
    ->work
*Oh I've been good, I've just been working on the block party. Helping out a few people here and there too. 
    -> jumpAlt
    
===jumpAlt===

Elisa?Smiling "Oh, that's right! Did you still want me to work that succulent booth?"

*Yeah, that'd be great! 
    -> quest2
*Only if you're free! I don't want to pressure you, I know you're super busy.
    -> quest2Alt

===quest2===

Elisa?Neutral "Hmm ok... not yet, but I promise I'll try to work out some free time! I want to be honest with myself about what I can commit to. Random things keep popping up, too."

*Like what? 
    -> explain
*More school stuff? 
    -> explainAlt

===quest2Alt===

Elisa?Neutral "Yeah, I'm still pretty busy unfortunately... random things keep popping up, too. Like, just today- I’m getting ready to transfer schools and finish my degree, right?"
Elisa?Neutral "Today I got an email this morning saying that they need my vaccination records before I can go there, and my parents have no idea where they are."

*Oh no!
    -> notHelp
*Do you think I could help?
    -> help

===explain===

Elisa?Neutral "Well, like today- I’m getting ready to transfer schools and finish my degree, right?"
Elisa?Neutral "I got an email this morning saying that they need my vaccination records before I can go there, and of course my parents have no idea where they could be."

*Oh no! 
    -> notHelp
*Maybe I could help? 
    -> help
    
    
===explainAlt===

Elisa?Neutral "Yeah- or, well, future school stuff. I’m getting ready to transfer schools and finish my degree,"
Elisa?Neutral "and it turns out they need my vaccination records before I can go there, and of course my parents have no idea where they could be."

*Oh no! 
    -> notHelp
*Maybe I could help? 
    -> help

    
===work===

Elisa?Neutral "I don't know, I can't really commit to anything right now, but I promise I'll keep thinking about it!"
Elisa?Neutral "It's just that I'm still pretty booked this week- and random things keep popping up, too."

*Like what? 
    -> explain
*Oh, is it more school stuff?
    -> explainAlt
    
===help===

Elisa?Smiling "That'd be great! Yeah, let me know if you find anything- I'm not sure who to ask, or who might have a physical or digital record at this point."

*Ok, I'll ask around and let you know if I find anything!
    -> askAround2
    
===notHelp===

Elisa?Neutral "I know... I have no idea where to get those records now. I don’t even know if anyone would still have them. You don't know anything about immunization records, do you?"

*No, sorry.
    -> notAsk
*No, but I'll ask around! 
    -> askAround

===askAround===

Elisa?Smiling "That'd be great! Yeah, let me know if you find anything- I'm not sure who to ask, or who might still have a copy at this point."

*Will do! 
    -> askAround2

===notAsk===

Elisa?Neutral "No worries, just thought I'd ask. Anyways, if you hear anything, definitely let me know! See you around."

*See ya! 
    -> END

===askAround2===    

Elisa?Smiling "You're the best, {player_name}. Anyways, I should get back to work on this group project. See you around!"

*See ya!
    -> END
