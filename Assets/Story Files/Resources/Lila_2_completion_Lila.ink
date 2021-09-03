VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Lila?Smiling "Hey {player_name}! What's up!"

* {not TempGoodbye} Long day! But all is well. How are you?
    -> Chat1
* {not TempGoodbye} Not too much, but I found some information that might be helpful for you per our earlier conversation. Do you want to talk about it now?
    Lila?Neutral "Yes! "
    -> ReadyToSolve
* {TempGoodbye} Hi! I talked to Rashad and Mr. Calindas again, and I think I have more information.
    -> ReadyToSolve

==Chat1==
Lila?Neutral "Busy as usual. The kids were fun today though, we did a new drawing activity and they were really creative with it."

* I always forget how creative kids are.
    -> Chat2
* That sounds like fun. By the way, I did find some information about what we talked about earlier if you want to hear it.
    Lila?Neutral "Definitely. "
    -> ReadyToSolve

==Chat2==
Lila?Neutral "It is really fascinating. Hey, did you find anything today about that thing we talked about earlier?"

* Oh yes!
    -> ReadyToSolve
* Yes I did, are you ready to hear about it?
    Lila?Neutral "Yes! "
    -> ReadyToSolve


==ReadyToSolve==
Lila?Neutral "Thank you so much. I know already that this will help a lot with my stress surrounding this topic."

* Of course! I hope it does.
    -> PuzzleInterface
* I think I may need more information. I'll be back soon though!
    -> TempGoodbye

// info solve:  Rashad shared that his mom had some concerning markers in her blood test, she found out she has metabolic syndrome which is more prevalent for Black women. She now manages her symptoms with regular blood tests. 
// info solve: Mr. Calindas shared that genetic testing is a good way to substitute and add to family history information. He sent me a specific link: medlineplus.gov/genetics. I'll forward it over to you. He also said blood tests are really good for finding symptoms you might not feel.
==PuzzleInterface==
# turnin

* good solution chosen
    -> GoodSolution
* bad solution chosen
    -> BadSolution

==GoodSolution==
Lila?Smiling "I haven't heard of that. I’ll give it a try."

* Perfect. I hope it helps with what you’re experiencing, and gives you some confidence and peace of mind.
    -> SolvedGoodbye


==BadSolution==
Lila?Neutral "Hmm. Maybe. I don’t know if that makes me feel better about this situation specifically. Thanks for the tip though!"

* Let me see if there's anything else that would help.
    -> PuzzleInterface
* Maybe I can find more information from Rashad or Mr. Calindas. I'll go ask them again.
    -> TempGoodbye

==SolvedGoodbye==
Lila?Smiling "All these recommendations make me feel much more confident about the information I'm getting. I know my mom would be happy I'm listening to community members. I’ll look at the resource you gave me, and schedule an appointment afterwards. Can't be too careful."

* Exactly! See you, Lila!
    -> END
* Glad I could help, bye Lila!
    -> END

==TempGoodbye==
Lila?Neutral "No problem, take your time!"

* Thanks, Lila!
    -> END
* Will do!
    -> END