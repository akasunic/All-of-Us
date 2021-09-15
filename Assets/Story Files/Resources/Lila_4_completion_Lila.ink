VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Lila?Smiling "Hi {player_name}! Good to see you."

* {not TempGoodbye} Hey Lila! Ooo, what are you working on? It's beautiful!
    -> Chat1
* {not TempGoodbye} I talked to a few people who want to hang out this weekend! Are you too busy right now to talk?
    -> ReadyToSolve
* {TempGoodbye} Okay, I'm ready. Are you low on time?
    -> ReadyToSolve

==Chat1==
Lila?Neutral "Thank you! It's a tattoo, I've been designing them for a while now. I don't ink them all but I enjoy practicing the process."

* You could definitely make a side hustle out of this.
    -> Chat2
* That's really cool. I do have a few updates about this weekend though, if you don't mind me interrupting your drawing.
    -> ReadyToSolve

==Chat2==
Lila?Smiling "I always have too many things going on. At some point I'll make an art instagram page though, to guage interest. See if it's worth the time!"

* I might know a few people who would support that idea! I hope you don't mind, I set up a few friend dates for you.
    -> ReadyToSolve

==ReadyToSolve==
Lila?Neutral "Of course not!"

* Alright, here's what I have.
    -> PuzzleInterface
* Let me make sure I found all the possibilities for you.
    -> TempGoodbye

// info solve: Mrs. Lee is attending a new yoga class on Sunday, and wants you to come with her.
// info solve: Elisa said she would love to hang out if you're interested. She's going to find you at the Block Party tomorrow!
==PuzzleInterface==
# turnin

* good solution chosen
    -> GoodSolution
* bad solution chosen
    -> BadSolution

==GoodSolution==
Lila?Smiling "I would love to!"

* Glad I could find someone to help.
    -> SolvedGoodbye

==BadSolution==
Lila?Neutral "I don't think so."

* Mrs. Lee also suggested something else...
    -> PuzzleInterface
* I’ll go ask them again. See what else I can find for you to do.
    -> TempGoodbye

==SolvedGoodbye==
Lila?Smiling "I'm really looking forward to this weekend now. Thank you, {player_name}. I can always count on you! Stop by the community center next week and we can catch up. I'd better finish this work so I can go home and see Trisha. It's Friday night, grillin' night!"

* Always great to talk, Lila. I'll see you!
    -> END
* Until then! Have fun this weekend if I don't run into you!
    -> END

==TempGoodbye==
Lila?Neutral "I'll be here!"

* Be right back!
    -> END
* See you soon.
    -> END
