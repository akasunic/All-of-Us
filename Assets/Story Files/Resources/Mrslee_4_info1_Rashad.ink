VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Rashad?Smiling "Hey {player_name}. What's good?"

* Just running around town, y'know, Rashad.
  -> Chat1
* Came in to see your face!
  -> Chat1

==Chat1==
Rashad?Smiling "I'm so tired today. Do you want to grab a coffee with me? "

* Coffee? Right now?!
  -> Chat2
* Can I ask you something?
  -> Explain1

==Chat2==
Rashad?Smiling "You're right. Okay. What's up? "

* You okay, man?
  -> Chat3
* I had a question for you.
  -> Explain1

==Chat3==
Rashad?Smiling "Yeah, let's make this quick I am organizing materials for the big day."

* I'm just looking for some advice
  -> Explain1
* Lemme ask you something
  -> Explain1

==Explain1==
Rashad?Smiling "Only if it's related to my kids or comics. I'm in low-power mode, so I can't think about much of anything else, haha."

* It's kinda about your kids
  -> Explain2
* Regular question, I promise
  -> Explain2

==Explain2==
Rashad?Smiling "Yeah, I got a minute. What's up?"

* How do you track your family's health?
  -> Suggestion1
* How the heck are you kids? They never come by!
  -> Suggestion2

==Suggestion1==
~ notification = "Rashad_Day 4_Mrs Lee can keep track of her and Eddie's health information in a journal_Mrslee4"
# notification Rashad_Day 4_Mrs Lee can keep track of her and Eddie's health information in a journal_Mrslee4

Rashad?Smiling "I keep track of my whole families' health information in one folder. Actually it's bigger than a folder, but you get what I mean. All the records. All the symptoms and details. One place. Boom."

* Hmm, maybe that could work
  -> Goodbye
* Oh, absolutely, that's a great idea.
  -> Goodbye

==Suggestion2==
~ notification = "Rashad_Day 4_ Regular visits to your primary doctor can make it easier to get diagnosed if you have a problem_Mrslee4"
Rashad?Smiling "Yeah, Cheryl and the kids will be at the block party. We can all say hi! They're all at well-kid visits today; teach them early to see their primary doctor at least once a year!"

* What type of health maintenance does your family do?
  -> Suggestion1
* What do you do with the information you get at those visits?
  -> Suggestion1

==Goodbye==
Rashad?Smiling "Okay, next time I get to ask the questions, {player_name}, I gotta get back to organizing."

* Ok, Rashad!
  ->END
* You got it.
  ->END
