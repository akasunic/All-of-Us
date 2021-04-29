VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Mrslee?Smiling "{player_name}! Wonderful see you."

* It's lovely to see you too, Mrs. Lee!
    -> Chat1
* Happy you're here!
    -> Chat1

==Chat1==
Mrslee?Smiling "How is you? How is party?"

* Party setup is going well! And I'm only good if the party is.
    -> Chat2
* All going well. Have you talked to Lila recently?
    -> Explain1

==Chat2==
Mrslee?Smiling "Not good. Take care of yourself first."

* I promise I am. Taking care of my community is taking care of myself, too!
    -> Chat3
* I will tonight. A long bath sounds nice.
    -> Explain1

==Chat3==
Mrslee?Smiling "But community is not you. Sit down for a minute! Relax."

* I would love to, but I have to help out Lila today. Have you talked recently?
    -> Explain1
* There, I'm sitting. Don't worry about me. Have you talked to Lila today?
    -> Explain1

==Explain1==
Mrslee?Neutral "Yes, early today we talked. She is okay?"

* Yes! Lila's fine. I was wondering if you could possibly give her some support on something she's going through. You are so close.
    -> Explain2
* Lila's doing well. She's just struggling with some hard things, and I was wondering if you could help.
    -> Explain2

==Explain2==
Mrslee?Neutral "Lila has problem? She did not tell me?"

* Well, yes. She has a hard time opening up about it. I know you are exploring your own health care journey right now since Mr. Lee passed away, but Lila is struggling with issues only women experience.
    -> Suggestion1
* It's a sensitive topic. Lila hasn't ever been to a gynycologist yet, and she's looking for advice on what to expect.
    -> Suggestion2

==Suggestion1==
Mrslee?Smiling "I love helping Lila! She is come to me today, we can talk then."
Mrslee?Smiling "Lila is strong girl, but when she is not confident, someone has to push – off the cliff, you know? I go with her to appointment."

~ notification = "Mrslee_Day 3_Mrs. Lee volunteers to talk to Lila about her women’s healthcare questions, and says she will attend the doctors appointment with her"
# notification Mrslee_Day 3_Mrs. Lee volunteers to talk to Lila about her women’s healthcare questions, and says she will attend the doctors appointment with her

* I don't know if she needs a push right now, more someone to confide in.
    -> Suggestion2
* That would be great. Thanks Mrs. Lee! I'll see you!
    -> Goodbye

==Suggestion2==
Mrslee?Smiling "I can do this. Mr. Lee took care of general health, but he had nothing to do with womanhood. I've been taking care of that whole life. If Lila need help, I support her."

~ notification = "Mrslee_Day 3_Mrs. Lee says she can talk to Lila to support her, and answer her questions about women’s healthcare_Lila3"
# notification Mrslee_Day 3_Mrs. Lee says she can talk to Lila to support her, and answer her questions about women’s healthcare_Lila3

* Are you sure?
    Mrslee?Neutral "Yes, "
    -> Suggestion1
* Thank you, Mrs. Lee! I know she will be happy to have someone with experience that she trusts. I have to go, but I will let her know!
    -> Goodbye

==Goodbye==
Mrslee?Smiling "Happy I help. Lila is important for me. Bye bye!"

* Thanks again, bye! 
    ->END
* Bye!
    ->END
