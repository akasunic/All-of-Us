VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrcalindas?Smiling "Good afternoon {player_name}! You look busy!"
* Don’t you know it, Mr.Calindas!
-> Chat1
* Haha, You’re not wrong, Mr.Calindas.
-> Chat1

==Chat1==
Mrcalindas?Smiling "Remember to take a break once in a while, won’t you?"
Mrcalindas?Smiling "You know you’re always welcome to join Paz and I for some tennis. It’s a nice way to get active and have some fresh air!"

* I think I may be a bit clumsy for tennis. How about board games?
-> Chat2
* I'll consider it. Meanwhile, can I talk to you about medical records?
-> Explain1

==Chat2==
Mrcalindas?Smiling "I will never turn down a board game night-- any good at The Game of Life or Cranium? The grandkids love it."
Mrcalindas?Smiling "I’d offer Uno, but it gets a little too competitive too fast."
* Hey, I’ve got a competitive spirit!
-> Chat3
* It really does. Question, do you know how to help someone gather medical information?
-> Explain1

==Chat3==
Mrcalindas?Smiling "Well in that case, ring me later, and we can find some time for a community board game night. Maybe the library wants to host something!"
Mrcalindas?Smiling "Was there something you wanted to talk about?"
* Yes, actually! A friend had some questions about family medical records.
-> Explain1
* Sounds good!  Hey, how do you suggest people keep their medical history?"
-> Explain1

==Explain1==

Mrcalindas?Neutral "Family health histories are a complete record of health information about someone and their relatives."
Mrcalindas?Neutral "It often includes information for a few <a>generations</a> and has information about both your immediate and extended family."
Mrcalindas?Neutral "Doctors find them really helpful."
Mrcalindas?Neutral "Since a family health history is a document of health, doctors are able to use it to see how patterns show up in families."
Mrcalindas?Neutral "Some health conditions are strongly affected by <a>genetics</a>. Some things run in families, and knowing more about your history can help you make informed choices."
* So.. how do you get started?
-> Suggestion1
* What are they used for beyond that?
-> Suggestion1

==Suggestion1==
~ notification = "Mrcalindas_Day 4_Doctors offices can offer templates to help people get started in tracking their family medical history_Lila4-3"
# notification Mrcalindas_Day 4_Doctors offices can offer templates to help people get started in tracking their family medical history_Lila4-3

Mrcalindas?Neutral "Having a family health history can help doctors identify people at a greater risk for certain <a>infections</a> or <a>diseases</a>."
Mrcalindas?Neutral "Some doctor’s offices have templates you can ask for to get started with the process and you can always reach out to them with questions if you have them."
Mrcalindas?Neutral "Studying your family health history can provide a lot of insight and can be used to plan ahead." 
Mrcalindas?Neutral "Your history might suggest that you test for certain diseases or make lifestyle changes to reduce the risk of developing conditions that run in one’s family."
* What sort of things do you write down in a family medical history?
-> Suggestion2


==Suggestion2==
~ notification = "Mrcalindas_Day 4_When recording your family medical history, always document the diseases, allergies, ethnicity and death information for relatives if known_Lila4-4"
# notification Mrcalindas_Day 4_When recording your family medical history, always document the diseases, allergies, ethnicity and death information for relatives if known_Lila4-4 

Mrcalindas?Neutral "When compiling your family medical history, you should always write down information starting with blood relatives to at least three generations if you know it."
Mrcalindas?Neutral "Write down causes and ages of death, major medical conditions and age at diagnosis, and when any operations happened." 
Mrcalindas?Neutral "Also include ethnic background, as some conditions occur more frequently in some communities than in others."
Mrcalindas?Neutral "And it’s important to regularly update your information as time goes on."
Mrcalindas?Neutral "Other good questions to think about include: Are there allergies in the family and are they common? Is there a history of pregnancy losses?"
Mrcalindas?Neutral "Also, try to capture any mental health information, and if certain health problems or symptoms seem prevalent."

* Ah, that makes a lot of sense- you’re the best!
-> Goodbye
* This is so helpful. Thank you, Mr. Calindas!
-> Goodbye

==Goodbye==
Mrcalindas?Smiling "No problem {player_name}! Hope to see you soon."

* See you at game night!
-> END
* Thanks again, get ready to draw four!
-> END
