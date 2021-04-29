VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==
Mrcalindas?Smiling "Hi {player_name}! How are you doing?"

* I'm doing well, Mr. Calindas. Here for a quick chat if possible. How are you?
    -> Chat1
* Okay! I have a few questions, but how are you?
    -> Chat1

==Chat1==
Mrcalindas?Smiling "Not bad at all. What can I help you with?"

* I have a friend who doesn't have a much access to her family's health history, and she doesn't know where to turn for more information.
    -> Explain1
* Do you have any resources for people who don't know their parental health history?
    -> Explain1


==Explain1==
Mrcalindas?Neutral "Oh! Yes, there are a few options."

* She technically does have access to her mom if that helps at all.
    -> Suggestion1
* She really wants to be aware of anything she should be watching out for.
    -> Suggestion2


==Suggestion1==
Mrcalindas?Smiling "I definitely think if she can, she should talk to her mom."
Mrcalindas?Smiling "She will likely also be able to tell her some possible information about her father if she has it, and about her grandparents."

~ notification = "Mrcalindas_Day 2_Mr. Calindas suggests Lila prioritize contacting her mom to find her family health history"
# notification

* Her mom is pretty inaccessible right now traveling. Is there any other way she can look into her history herself?
    -> Suggestion2
* That would be great! I'll confirm with Lila and get back to you. 
    -> Goodbye

==Suggestion2==
Mrcalindas?Smiling "Yeah! Genetic testing is available to look for gene markers that can make individuals more at-risk for certain diseases, syndromes, and reactions."
Mrcalindas?Smiling "There are other tests she should do to be safe if she doesn't have a lot of healthcare background, like comprehensive tests to check high-risk markers."

~ notification = "Mrcalindas_Day 2_Mr. Calindas suggests Lila look into genetic testing on medlineplus.gov/genetics to find genetic markers that might indicate she is prone to certain illnesses, and also says that comprehensive testing is important if she doesn’t know what she should be looking out for_Lila2"
# notification

* Are there any other options?
    -> Suggestion1
* This is great information, could you send me any direct resources so I can pass them along to her?
    -> Goodbye

==Goodbye==
Mrcalindas?Smiling "Yeah, no problem!"

* Thanks! See you around, Mr. Calindas!
    ->END
* Much appreciated, thank you! Bye!
    ->END
