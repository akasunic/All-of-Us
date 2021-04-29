VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Elisa?Smiling "Oh hey, {player_name}! Did you find any info for me?"

* Start puzzle interface
  -> PuzzleInterface
* I don't think so
  -> thanksForTrying
    
==PuzzleInterface==
# turnin

* They picked a solution marked good.
  -> GoodSolution
* They picked a solution marked bad.
  -> BadSolution

    
===BadSolution===

Elisa?Neutral "Thanks for asking around, but I'm still not quite sure what to do. Do you have any more info for me?"

* Let me try again
  -> PuzzleInterface
* No sorry, that's all I could find out.
  ->thanksForTrying
    
===thanksForTrying===

Elisa?Neutral "Oh, well thanks for trying at least! I guess I'll keep looking around online to see if I can find anything... let me know if you find anything else, ok?"

*Will do!
    ->END
    
    
===GoodSolution===

Elisa?Smiling "Thanks {player_name}! Come to think of it, there are a few Nature Club girls I know who graduated last year that were first-gen."
Elisa?Smiling "I'll see if I can catch up with them, and ask them for some advice."

*Sounds great, Elisa!
    ->thanks2
    
===thanks2===

Elisa?Neutral "As far as school resources, I'm not sure what they offer. I think I'm gonna head over to the student center and see what I can find. Thanks again, {player_name}!"

*You're welcome! Good luck at the student center!
    ->seeYou
    
===seeYou===

Elisa?Smiling "Thanks, I'll see you later then!"

*See ya!
    ->END