VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Mrcalindas?Smiling "Hello {player_name}!"

* Hello Mr. Calindas! How are you doing?
    -> Chat1
* Hi! What's up?
    -> Chat1

==Chat1==
Mrcalindas?Smiling "I'm doing well! Leaving work soon to head home."

* That's great. How is your mother doing since the move?
    -> Chat2
* Sometimes I wish I had a nine-to-five! I was wondering, do you know a good gynycologist in the area?
    -> Explain1

==Chat2==
Mrcalindas?Smiling "She's been doing pretty well, just settling in and making sure she didn't forget anything."

* That's good to hear. I can't wait to meet her at the Block Party this weekend.
    -> Chat3
* That's good to hear. Has she found doctors in the area yet? Maybe a gynycologist? I'm looking for a recommendation for a friend.
    -> Explain1

==Chat3==
Mrcalindas?Smiling "Me too! I've told her a lot about how much this community has been growing together recently. I think the Block Party is going to show that, and what better place for my family!"

* Truly! I'm sure you're setting up her health care support here now. Does she have a gynycologist yet?
    -> Explain1

==Explain1==
Mrcalindas?Neutral "I'm finding one for my mom right now, and I have a few friends in the business. Do you need their contact info?"

* Yes!
    -> Explain2
* Possibly.
    -> Explain2

==Explain2==
Mrcalindas?Neutral "Does she have any other specific things she's looking for?"

* Yes, she would like her gynycologist to be a woman.
    -> Suggestion1
* Yes, she's interested in someone who specializes in PCOS, and is a woman.
    -> Suggestion2

==Suggestion1==
Mrcalindas?Smiling "Here's the contact info for the one I am going to take my mom to, she's great, and I've known her for many years. She does specialize in older women though."

~ notification = "Mrcalindas_Day 3_Mr. Calindas suggests his mom’s gynecologist, who specializes in older women, and who he has known for a long time"
# notification

* Do you have any recommendations for one that a first-timer could see? Maybe who specializes in young adults? 
    Mrcalindas?Neutral "Oh, yes! "
    -> Suggestion2
* Sounds good. Thanks for your help!
    -> Goodbye

==Suggestion2==
Mrcalindas?Smiling "Here's a younger doctor who I met working at the clinic, so she's close by and can definitely help with the issues you described."

~ notification = "Mrcalindas_Day 3_Mr. Calindas suggests a younger doctor who works at the Bloomwood Clinic with him. She also specializes in PCOS_Lila3"
# notification

* Any other options?
    -> Suggestion1
* This is great, I'll send the info along to my friend. Thanks!
    -> Goodbye

==Goodbye==
Mrcalindas?Smiling "Anytime! See you around, {player_name}."

* See you!
    ->END
* Bye, Mr. Calindas!
    ->END

