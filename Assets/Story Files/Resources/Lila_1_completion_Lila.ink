VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Lila?Smiling "Hey {player_name}! Good to see you."

* {not TempGoodbye} Good to see you too, Lila! How was your day?
    -> Chat1
* {not TempGoodbye} Likewise! So I have some information about the event this weekend for you.
    -> ReadyToSolve
* {TempGoodbye} I'm back! 
    -> ReadyToSolve

==Chat1==
Lila?Neutral "Not too bad. Been working late here, but Trisha always stops by with dinner when I'm stuck at my desk, which is nice."

* That's sweet. What are you working on?
    -> Chat2
* That's really nice of her. I'm glad I caught you before you left, I have info about the event on Saturday.
    Lila?Neutral "Oh, thank you!"
    -> ReadyToSolve

==Chat2==
Lila?Neutral "Lesson plans for next week. I have an assistant who usually helps me with them, but she only has ten paid hours a week, so she doesn't stay past that."
Lila?Neutral "The rest falls on me! Regardless of my hours."

* Let me know if I can help with that. Speaking of, I got some information on the speaker event Saturday.
    Lila?Smiling "Oh cool! "
     -> ReadyToSolve
* Head Start can always use more funding. Let me know if you want me to look into that in the future. Oh, also, do you have a moment to hear about the info I found?
    Lila?Neutral "Yeah! "
    -> ReadyToSolve

==ReadyToSolve==
Lila?Neutral "What did you find out?"

* One second, I'll open my journal...
    -> PuzzleInterface
* Could I get back to you later on this?
    -> TempGoodbye

//info solve: Rashad can help set up the event, and can lend you equipment from the library.
//info solve: Elisa can hang up flyers, and knows a gender studies professor who is a professional speaker on LGBTQ+ topics.

==PuzzleInterface==
# turnin

* They picked a solution marked good.
  -> GoodSolution
* They picked a solution marked bad.
  -> BadSolution

==GoodSolution==
Lila?Smiling "That sounds great! I can definitely get the event together in time for the block party now."

* Amazing. I think that covers everything we talked about earlier, right? 
    Lila?Neutral "Yep! "
    -> SolvedGoodbye


==BadSolution==
Lila?Neutral "That would work, but I’m not sure it covers enough that it would give me enough time to set up the rest of the event before the block party."

* Let me look again. I know I heard something else...
    -> PuzzleInterface
* Let me get back to you on that. I'll go check with Rashad again.
    -> TempGoodbye
    

==SolvedGoodbye==
Lila?Smiling "Wow, thank you so much, {player_name}. Having the event this weekend would really boost attendance and awareness. Please stop by again soon if you get the chance!

* No worries, Lila. That's what I'm here for. See you soon! 
    -> END
* No problem. I'll probably see you tomorrow!
    -> END

==TempGoodbye==
Lila?Neutral "No problem, let me know!"

* Be right back!
    -> END
* Will do!
    -> END