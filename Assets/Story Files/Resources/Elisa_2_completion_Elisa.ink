VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Elisa?Smiling "Oh, hey {player_name}!"

*Hey Elisa! 
    -> casual
*Oh hey- I found out more info on that immunization stuff you were talking about.
    -> PuzzleInterface
    
===casual===

Elisa?Neutral "Ugh, I tried to ask around about the vaccination stuff but no one knows what I should do. How about you? Did you find anything?"

*Yes! 
    -> PuzzleInterface
*No, not yet.
    ->backToExplore
    
===PuzzleInterface===
# turnin

*So... (puzzle interface opens and player inserts helpful info)
    -> GoodSolution
*So... (puzzle interface opens and player inserts unhelpful info)
    -> BadSolution
    
===BadSolution===

Elisa?Neutral "I see... you didn't happen to find out anything else, did you?"

*Yes!
    ->PuzzleInterface
*No, sorry.
    ->backToExplore
    
===backToExplore===

Elisa?Neutral "Gotcha. Well, if you find any more info for me, definitely let me know!"

*Will do!
    -> END
*Alright, see you later then!
    -> END
    
===GoodSolution===

Elisa?Smiling "Got it! Thanks, {player_name}, you're a life saver. Actually, I should be able to head down to the office today and figure out what vaccines I'm missing before the forms are due."
Elisa?Smiling "I should run over there before they close- see you later!"

*See you! 
    -> END