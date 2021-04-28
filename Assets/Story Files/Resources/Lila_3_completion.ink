VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Lila?Smiling "Hi {player_name}!"

* {not TempGoodbye} Hi Lila! What are you up to?
    -> Chat1
* {not TempGoodbye} Hello Lila! I have some new resources for you.
    -> ReadyToSolve
* {TempGoodbye} I'm back! 
    -> ReadyToSolve

==Chat1==
Lila?Neutral "I was just emailing the speaker for Saturday back. I'm starting to get really excited about this group! I've been thinking about it for so many years."

* It's going to be such a good resource for the LGBTQ+ community. Many kudos!
    -> Chat2
* I have some information on what we talked about this morning, so solving this won't take years for you!
    -> ReadyToSolve

==Chat2==
Lila?Neutral "Thanks! I was thinking about it yesterday, and I think I'm also going to learn a lot about myself, you know? Mentoring goes both ways, especially in this kind of situation."

* It does. If you want, I have some information about what we talked about this morning.
    -> ReadyToSolve

// solve info: Mrs. Lee is willing to talk about her experiences as a woman related to her health.
// solve info: Mr. Calindas knows a younger gynecologist who specializes in PCOS. She works at the clinic with him, so she's close by.
==ReadyToSolve==
Lila?Neutral "That was fast! Did you find anything?"

* I found that there's a lot of people looking out for you!
    -> PuzzleInterface
* Let me go check on something first.
    -> TempGoodbye

==PuzzleInterface==
# turnin

* good solution chosen
    -> GoodSolution
* bad solution chosen
    -> BadSolution
 

==GoodSolution==
Lila?Smiling "I think this will make me a lot more confident going into this issue. Thanks {player_name}!"


* So, are you feeling better about this now? 
    Lila "Yep! "
    -> SolvedGoodbye


==BadSolution==
Lila?Neutral "Maybe, I'll think about it. I was hoping to feel more prepared on my own, and have a doctor specialized in the area we talked about, PCOS."

* That's true, I think I heard something else about that.
    -> PuzzleInterface
* Let me get back to you on that. I'll go check again.
    -> TempGoodbye

    
==SolvedGoodbye==
Lila?Smiling "It feels good to know I have places I can turn for this. I'll talk to Mrs. Lee later today, and look up the contact Mr. Calindas gave you. I'm crossing off my whole list of health concerns in one week! Wow! Thanks so much, {player_name}."

* There is always support when you look for it, promise! I'll see you around, Lila.
    -> END
* Of course! Bye, Lila!
    -> END

==TempGoodbye==
Lila?Neutral "No problem, let me know!"

* Be right back!
    -> END
* Will do!
    -> END