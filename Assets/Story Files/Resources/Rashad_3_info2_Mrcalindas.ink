
VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Mrcalindas?Smiling "Hello, {player_name}. What’s new with you? "

* Hello, Mr. Calindas! Not much. I actually wanted to ask you about therapy.
  -> Chat1
* Hey now! You know I'm here to ask questions, right? This time, about therapy.
  -> Chat1


==Chat1==
Mrcalindas?Smiling "I assumed you were full of questions, like always. Unfortunately, I don't have any of Paz's treats, so you're not also full of baked goods.

Mrcalindas?Neutral "Kidding aside, what's up? You have my undivided attention." 

* My friend is new to therapy. How would they start the process?
  -> Explain1
  
  * How do I help someone who is quite nervous about therapy?
 -> Explain1

==Explain1==

~ notification = "Mrcalindas_Day 3_Different therapists provide different types of treatment; ask questions to make informed decisions_Rashad3-3"
# notification Mrcalindas_Day 3_Different therapists provide different types of treatment; ask questions to make informed decisions_Rashad3-3"

Mrcalindas?Neutral "This is a good question." 

Mrcalindas?Neutral "One of the things people don't understand when they start the process of finding a therapist is that there are many different <i>types</> of therapy. Different therapists use different approaches." 
Mrcalindas?Neutral "Most people think of psychotherapy when they imagine therapy. The "tell me about your childhood" portrayal we see on TV. That's one option, but there are many others." 
Mrcalindas?Neutral "Cognitive Behavioral Therapy, or CBT, and Dialectical Behavioral Therapy, or DBT, are related schools of thought.
Mrcalindas?Neutral "They both focus on giving you tool kits for engaging with your emotions and changing your reactions and patterns." 
Mrcalindas?Neutral "Other options include group therapy, biofeedback and mindfulness practices. There are many tools out there to be explored."
Mrcalindas?Neutral "Some therapists combine different types, so I suggest asking questions. And understand that not every therapeutic dynamic is a good fit."
Mrcalindas?Neutral "If something isn't working, try someone else. I tried two different therapists before I found one that felt right." 
 
 * This is all very useful! What else should they think about? 
  -> Explain2
  
 * OK, I'm following, but how do they get started?
 -> Explain2
 
 
 ==Explain2==
 
Mrcalindas?Neutral "I recommend your friend read up a little bit online before their first appointment."
Mrcalindas?Neutral "It might sound over-simplified, but before my first appointment, I literally printed out a list I found online by searching "what questions should I ask a therapist?""
Mrcalindas?Neutral "There are many good resources out there."

 *I did some research and some therapists list 'teletherapy.' What is that?
 ->Explain3
 
==Explain3==
~ notification = "Mrcalindas_Day 3_Telehealath options might make therapy easier to schedule_Rashad3-4"
# notification Mrcalindas_Day 3_Telehealath options might make therapy easier to schedule_Rashad3-4

Mrcalindas?Neutral "Oh, yes. Teletherapy is great for people who need flexibility. You can talk to your therapist using a computer or a phone, which is relatively new!"

Mrcalindas?Smiling "You use a specialized video chat application that's secure. So, like Zoom, but built for doctors with privacy in mind."

* Really? Is it better than in-person therapy?
  -> Explain4



==Explain4==
Mrcalindas?Neutral "Teletherapy can be just as great as in-person, sometimes in different ways. It's especially useful if scheduling is a barrier. " 

Mrcalindas?Neutral "Also, sometimes the distance provided by teletherapy can help people feel more comfortable talking openly."

Mrcalindas?Neutral "Obviously, some people prefer being in-person, and that's okay." 

Mrcalindas?Neutral "Since Covid, we've seen a lot of advances around telehealth in general, not just for therapy." 

Mrcalindas?Neutral "Did you know you can do telehealth appointments for your cat? I learned that this week!"

* Okay, so what would you tell someone who wants teletherapy?
  -> Suggestion1

==Suggestion1==

Mrcalindas?Smiling "Tell them teletherapy is a great place to start if you are uneasy about the idea of therapy." 

Mrcalindas?Smiling "Try to be careful about your surroundings and make sure you have a place to attend the session where no one can hear you, so you can speak freely."

Mrcalindas?Smiling "When I switched over to teletherapy at the beginning of Covid, I treated myself to a really nice pair of headphones with a microphone."

Mrcalindas?Smiling "It was a splurge, but I felt like it made the whole teletherapy experience about taking good care of myself."

* OK. is there anything else I should know?
  -> Suggestion2

* What else do you wish you'd known first?
  -> Suggestion2

==Suggestion2==

Mrcalindas?Smiling "Your friend might be comforted to know that therapists have strict professional codes of conduct. They have an obligation to keep anything you communicate to them private."

Mrcalindas?Smiling "You can talk to your therapist about anything, though it might take time to build up a level of trust."

Mrcalindas?Smiling "Also keep in mind that you can bounce between in-person and teletherapy, so don’t feel as though you have to choose one or the other. " 


* Thank you so much Mr. Calindas. Once again, you're a treasure.
  -> Goodbye

==Goodbye==
Mrcalindas?Neutral "Okay, {player_name}, I have to head back to get some paperwork done. See you soon!"

* No, really. You've been such a <i>huge</i> help. See you soon, Mr. Calindas.
  ->END

