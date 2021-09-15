VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro ==
Mrcalindas?Smiling "Hello {player_name}. Finally decided to join my running club, eh?" 

* Hello, Mr. Calindas! And no, you <i>know</i> I don't run.
  -> Chat1
* Hello Mr. Calindas! And no, but you know where I am if you decide to run a dance class.
  -> Chat1

==Chat1==
Mrcalindas?Smiling "Hey, as long as you're getting outside, I'm happy. Now, what do you need? You have the 'Help me please, Mr. Calindas' face. Do you need to learn how to boil water, again?"

* Hey! I only forgot how to boil water that one time...
  -> Chat2
* Okay, you got me. I could really use your help. But not with boiling water.
  -> Explain1

==Chat2==
Mrcalindas?Smiling "Yes, and that's why we got you that electric kettle. It was easier for you than remembering to turn the pot off." 

* Okay, that's fair. You really saved me there.
  -> Chat3
* That's actually fair! But you're right, I could use some advice about stress.
  -> Explain1

==Chat3==
Mrcalindas?Smiling "I know. Now let's save you again, what do you need now? Finally ready to make an omelette?"

* No, not that. I have a friend who could use some advice about stress.
  -> Explain1
* Ooo...maybe a rain check on the omelette. A friend of mine could use some advice on dealing with stress.
  -> Explain1

==Explain1==
Mrcalindas?Neutral "Stress, eh? Stress is actually a lot more serious than people think it is. It's good you're asking for advice. Can you tell me more?" 

* My friend hasn't been sleeping well due to workplace stress, and I'm worried.
  ->Explain2

==Explain2==
Mrcalindas?Neutral "Hmm. Well, stress can really impact sleep and that's not good at all. Your friend should take this seriously. Stress can harm your heart. This is why I run!" 

* Wow, really? Can you give me some tips to help them?
  -> Suggestion1
* It can affect the heart?! Yikes.
  -> Suggestion2

==Suggestion1==

~ notification = "Mrcalindas_Day 2_Taking melatonin before bed can help you sleep better"
# notification Mrcalindas_Day 2_Taking melatonin before bed can help you sleep better
~ notification = "Mrcalindas_Day 2_Physical activity can relieve stress_Rashad2"
# notification Mrcalindas_Day 2_Physical activity can relieve stress_Rashad2
~ notification = "Mrcalindas_Day 2_Mindfulness activities like yoga can relieve stress"
# notification Mrcalindas_Day 2_Mindfulness activities like yoga can relieve stress

Mrcalindas?Smiling "My first recommendation would be melatonin. It helps you to sleep when taken before bed. Have your friend check with a doctor first before taking it."
Mrcalindas?Smiling "Physical activity and mindfulness activities like yoga can also help with stress. They can try that as well." 

* {not Suggestion2} Hmm. That sounds good, but I think this is really serious.
  -> Suggestion2
* That sounds really helpful. I'll let them know! Thank you so much!
  -> Goodbye

==Suggestion2==

~ notification = "Mrcalindas_Day 2_Stress can cause harm to your heart over time_Rashad2"
# notification Mrcalindas_Day 2_Stress can cause harm to your heart over time_Rashad2
~ notification = "Mrcalindas_Day 2_Consider Counseling or therapy in addition to exercise_Rashad2"
# notification Mrcalindas_Day 2_Consider Counseling or therapy in addition to exercise_Rashad2

Mrcalindas?Smiling "Stress can harm your heart over a period of time. It's very serious, so it's important your friend consider counseling or therapy as well as exercise."

* {not Suggestion1} Thank you so much, is there anything else?
  -> Suggestion1
* Thank you so much for this, Mr. Calindas!
  -> Goodbye

==Goodbye==
Mrcalindas?Smiling "My pleasure, {player_name}. Tell your friend they're welcome to join us for the running club. I'm going to go back to work, you take care okay?"

* Goodbye, Mr. Calindas! Thanks!
  ->END
* Thank you so much for your help Mr. Calindas. Take care!
  ->END
