VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Elisa3.txt"
# new_quest

Elisa?Smiling "Oh, hey {player_name}!"

*Hi Elisa! 
    ->Q31
*Hey Elisa! How've you been?
    ->Q32
    
===Q31===

Elisa?Smiling "What brings you to the library? Still working on stuff for the block party?"

*Yeah, there’s lots of details we're still working out... did you think about that succulent booth job?
    ->blockPartyQ3
*Nah, I was just in the neighborhood!
    ->Neighborhood

===Q32===

Elisa?Neutral "I've been ok! We got a lot of new members for the nature club from that scavenger hunt, and some friends and I are going to go rock climbing next weekend."
Elisa?Neutral "I don't know, I still feel kinda down, though."

*Oh really? What's wrong?
    ->Q34
*I get that. Sometimes a "good week" doesn't always feel so good. 
    ->Q35

===blockPartyQ3===

Elisa?Neutral "Oh, right! I'm still thinking about it. I'm still feeling pretty stressed between school, and looking after my siblings, and working on all this transfer stuff..."
Elisa?Neutral "I've tried talking to my Nature Club friends about it, but they don't really understand, even though they try."

*Hmm... have you tried talking to anyone else about it?
    ->talkWithOthers
*Really? Why's that?
    ->firstGenGap

===Neighborhood===

Elisa?Smiling "Oh please, when are you not in the neighborhood? "Bloomwood spirit" never seems to take a holiday these days!"

*Alright, alright, point taken. Anyways, how are things with you?
    ->Q32
*Holiday? I've got a block party to plan! A holiday can wait!
    ->preBlockPartyQ3
    
===preBlockPartyQ3===

Elisa?Neutral "Fair enough! I'm still thinking about the succulent booth, by the way. Sorry I haven't gotten back to you. It's just- I've got a lot on my plate still."

*What's up?
    ->BlockPartyQ3alt
*Still stressed out, huh?
    ->BlockPartyQ3alt2
    
===preBlockPartyQ3alt===

Elisa?Neutral "Hey, speaking of, I haven't forgotten about your succulent booth. I'm definitely still thinking about it, it's just- I've got a lot on my plate still."

*What's up?
    ->BlockPartyQ3alt
*Still stressed out, huh?
    ->BlockPartyQ3alt2
    
==BlockPartyQ3alt===

Elisa?Neutral "I don't know, it's like, I've been able to check things off my to-do list, but I'm still feeling pretty stressed between school, looking after my siblings, and working on all this transfer stuff."
Elisa?Neutral "I've tried talking to my Nature Club friends about it, but they don't really get where I'm coming from."

*Hmm... have you tried talking to anyone else about it?
    ->talkWithOthers
*Really? Why's that?
    ->firstGenGap

===BlockPartyQ3alt2===

Elisa?Neutral "Yeah. I mean, I'm glad I've been able to check things off my to-do list, but I'm still feeling pretty stressed between school, looking after my siblings, and working on all this transfer stuff."
Elisa?Neutral "I've tried talking to my Nature Club friends about it, but they don't really get where I'm coming from."

*Hmm... have you tried talking to anyone else about it?
    ->talkWithOthers
*Really? Why's that?
    ->firstGenGap

===Q34===

Elisa?Neutral "I know I've been checking things off my to-do list, but I'm still feeling pretty stressed between school, and looking after my siblings, and working on all this transfer stuff..."
Elisa?Neutral "I've tried talking to my Nature Club friends about it, but they don't really get where I'm coming from."

*Hmm... have you tried talking to anyone else about it?
    ->talkWithOthers
*Really? Why's that?
    ->firstGenGap

===Q35===

Elisa?Neutral "Really? I'm glad it's not just me."
Elisa?Neutral "Yeah... I mean, it's been great to check things off the to-do list, but I'm still feeling pretty stressed between school, looking after my siblings, and working on all this transfer stuff."
Elisa?Neutral "I've tried talking to my Nature Club friends about it, but they don't really get where I'm coming from."

*Hmm... have you tried talking to anyone else about it?
    ->talkWithOthers
*Really? Why's that?
    ->firstGenGap

===talkWithOthers===

Elisa?Neutral "No, not really. My parents and I don't really talk about stress or stuff like that, and my siblings are kinda too young to get it."
Elisa?Neutral "I wish I had someone who's been through this kinda stuff that I could talk to."

*Maybe I could help you find someone?
    ->acceptQ3
*You know what? I'll keep my eye out for you.
    ->acceptQ3alt

===firstGenGap===

Elisa?Neutral "I mean, they get the school stuff, but they don't have the same family stress as I do."
Elisa?Neutral "Mostly they just change the subject, or say not to worry about it too much. I wish I had someone I could really talk to about it."

*Maybe I could help you find someone?
    ->acceptQ3
*You know what? I'll keep my eye out for you.
    ->acceptQ3alt

===acceptQ3===

Elisa?Smiling "If you're willing to look around for me, that'd be a big help!"
Elisa?Smiling "I have no idea where to find anyone, but if you can find someone who's been through something similar, I'd love to get their advice. Let me know what you find!"

*See you!
    ->END

===acceptQ3alt===

Elisa?Smiling "Aw thank you so much! Yeah, if you can find me anyone who's been through something similar, I'd love to talk to them about it. Let me know what you find!"

*See you!
    ->END
