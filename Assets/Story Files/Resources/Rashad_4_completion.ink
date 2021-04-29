VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro == 
Rashad?Smiling "Oo! Hey, {player_name}! How's it going? Excited for the weekend?"

* {not TempGoodbye} Yes! I just got us a cotton candy machine, and I am going to basically drown in it. Bounce house, djs...it's all coming together.
  -> Chat1
* {not TempGoodbye} I got a cotton candy machine, so I'm stoked. Oh, I met up with Elisa and Mrs. Lee. I have some ideas for your new initiative.
  -> ReadyToSolve
* {TempGoodbye} I. Am. Ready. Oh, you know what? I have some information for you.
  -> ReadyToSolve

==Chat1==
Rashad?Smiling "Oh, you're adding cotton candy to your list of skills eh? So bread, boiling water, and cotton candy? Sounds like reality tv show ingredients."

* You know what? That's messed up! I may not cook well, but I'm learning, hah!
  -> Chat2
* I may not be able to cook a 5 star meal, but I do have some recommendations for you.
  -> ReadyToSolve

==Chat2==
Rashad?Smiling " You know I’m playing. You have information? For the initiative? What did you find out?"

* Well, I met up with Elisa and Mrs. Lee and they taught me a lot. Here's what I learned.
  -> ReadyToSolve
* I learned a lot by talking to Mrs. Lee and Elisa. They know so much.
  -> ReadyToSolve

==ReadyToSolve==
Rashad?Neutral "I'm not surprised. Elisa is really smart and thoughtful, and Mrs. Lee has a close relationship with Eddie. She's helped me out many times. What did you find out that can help?"

* Start puzzle interface.
  -> PuzzleInterface
* Actually, let me check my notes again. I want to make sure what they said are captured correctly.
  -> TempGoodbye

==PuzzleInterface==
# turnin

* -> GoodSolution
* -> BadSolution

==GoodSolution==
Rashad?Smiling "Wow. This is great information. I had an idea that both teens and seniors could benefit from this, but I didn't know how much. Thank you so much for looking into this, {player_name}."

* Sweet! I'm so happy I could help Rashad. Let me know if you need anything else!
  -> SolvedGoodbye
* I knew talking to Mrs. Lee and Elisa about this was the right move. Let me know how I can help push this forward!
  -> SolvedGoodbye

==BadSolution==
Rashad?Neutral "Oh. Well, that's kind of not what I was looking for. Did they say anything else? I want to know how it benefits seniors and teens."
 
* Hmm. Wait a second, let me try that again.
  -> PuzzleInterface
* Actually, you're right. Let me look at my notes again and get back to you.
  -> TempGoodbye

==SolvedGoodbye==
Rashad?Smiling "I'm going to go email Elisa and Mrs. Lee right now and see if they’d be interested in talking more."
Rashad?Smiling "Even if they don't have time to participate, I know I can follow up with them to get their insight. Thanks for helping me figure out the right path, {player_name}."
Rashad?Smiling "You've been such a great asset this week. I'm sure your gourmet cotton candy will be fire. See you!"

* Uh, please don't say that. I’d, I burn the cotton candy. I'll never be allowed near a kitchen. See you soon, though!
  -> END
* If I burn cotton candy no one will let me live it down, bro. Hah. But I'll see you soon. Happy to help.
  -> END

==TempGoodbye==
Rashad?Neutral "Oh, okay. Sounds like a plan. I'm going to go pickup Charles and Octavia, catch you later?"

* Ok, I'll be back when I know more. See you soon!
  ->END
* Okay, I'll be back. See you!
  -> END
