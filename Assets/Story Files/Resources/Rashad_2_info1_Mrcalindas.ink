VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro ==
Mrcalindas?Smiling "Hello {player_name}. Finally decided to join my running club, eh? Or are you too busy?

*  Hey, Mr. Calindas! Running, no - working, yes.
  -> Chat1
* Hard pass. You know where to find me if you want to go for a sedate stroll!
  -> Chat1

==Chat1==
Mrcalindas?Smiling "Hey, as long as you're getting in those steps, I'm proud of you. Now, is there something you need?"

Mrcalindas?Smiling "You have 'Help me please, Mr. Calindas' written all over your face. Do you need to learn how to boil water, again?"

* In my defense, I didn't understand my stove.
  -> Chat2
  
==Chat2==
Mrcalindas?Smiling "I hope that electric kettle we got you is treating you well. It should be easier than remembering to turn the burner off." 

* Okay, that's fair. You really saved me there.
  -> Chat3
*Hah! On another note, my friend is looking for advice about managing stress.
  -> Explain1


==Chat3==
Mrcalindas?Smiling "I know, I know. I’m just pulling your leg. How can I help? Finally ready to make an omelette?"

* No, quite. I have a friend who could use some advice about stress.
  -> Explain1
* Not exactly. My friend has been dealing with a super hostile work environment.
  -> Explain1

==Explain1==
Mrcalindas?Neutral "Stress is a silent killer. It’s a lot more serious than people think it is, and needs to be addressed as early as possible."
Mrcalindas?Neutral "You made the right call coming to me for advice. Can you tell me more?" 

* My friend’s sleep routine has gone downhill and I'm worried about him.
  ->Explain2
* Silent killer? Wait, what do I need to know?  He seems really exhausted. 
  ->Explain2


==Explain2==

Mrcalindas?Neutral "That’s not surprising. Stress can really impact sleep and that's not good at all. Your friend should take this up with his doctor as soon as possible."
Mrcalindas?Neutral "If not handled properly, stress can strain your heart."
Mrcalindas?Neutral "Your whole body gets in on the action when your sleep is poor. Insomnia affects white blood cell counts, cognition, and resting heart rate." 
Mrcalindas?Neutral "Stress is inevitable, but we have to manage it, or it'll tear us up. This is why I run! It’s an amazing exercise for your cardiovascular health."

* Wow, that sounds very intense.
  -> Suggestion1

==Suggestion1==
~ notification = "Mrcalindas_Day 2_A small dose of melatonin might help improve sleep quality_Rashad2-1"
# notification Mrcalindas_Day 2_A small dose of melatonin might help improve sleep quality_Rashad2-1

Mrcalindas?Smiling "He should start with a small dose of <a>melatonin</a>. It helps you to sleep when taken before bed, but make sure your friend checks with a doctor first before taking it."
Mrcalindas?Smiling "I mentioned running, but any exercise he finds pleasurable will do the trick. Dancing or bicycling, or even gardening will help. The secret is to be in motion." 
Mrcalindas?Smiling "Adding mindfulness activities like meditation and a gentle practice like yoga or tai chi really help some people. Your friend can try that as well." 

*That all sounds great, but it all feels too simple.
  -> Suggestion2
*Okay, okay. I'm following all of this. What else? 
  -> Suggestion2

==Suggestion2==
~ notification = "Mrcalindas_Day 2_A multi-focus approach might be necessary for managing stress and reducing its impact on quality of life_Rashad2-2"
# notification Mrcalindas_Day 2_A multi-focus approach might be necessary for managing stress and reducing its impact on quality of life_Rashad2-2

Mrcalindas?Neutral "Stress can really have a negative effect on overall quality of life. I cannot recommend therapy strongly enough."

Mrcalindas?Neutral "I understand the stigmas around mental healthcare, but there are compassionate, expert practitioners right here in Bloomwood. Your friend should consider giving one of them a chance."
Mrcalindas?Smiling "Seeing a therapist really changed the game for me. If your friend wants a recommendation, I'm happy to suggest some people."
Mrcalindas?Smiling "It's hard to remember when we're in the thick of it, but each of us is a complete picture."
Mrcalindas?Smiling "Taking care of our mental health enables us to support and take care of our physical health. And the other way around."

* Thank you so much for your help on this, Mr. Calindas!
  -> Goodbye

==Goodbye==
Mrcalindas?Smiling "Happy to help, {player_name}. Let your friend know that they're welcome to join the running club. I'm going to go back to work, you take care okay?"

* Thank you so much for your help Mr. Calindas. Take care!
  ->END










