VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Lila?Neutral "Hey {player_name}! How are you feeling today?" 

* Hi Lila! I'm doing well! I could use some- is that glitter?
  -> Chat1
* Hey Lila! ...are you covered in glitter?
  -> Chat1

==Chat1==
Lila?Smiling "The pre-school life is the life of one covered perpetually in glitter, yes. I'm one with the sparkle, now."

* Well, I only know one thing about glitter...it travels. Should I be afraid?
  -> Chat2
* That sounds delightful. Hey, can I ask your help with something?
  -> Explain1

==Chat2==
Lila?Smiling "Well, you know this glitter will get all over you despite the fact we haven't hugged. I'd just accept it now if I were you. Besides, art is a great way to destress."

* Really? I didn't know that. I thought glitter was the bane of all existence.
  -> Chat3
* Actually speaking of stress, I could use some advice.
  -> Explain1

==Chat3==
Lila?Smiling "Well, glitter does get everywhere, but yes I teach the children to use art to express themselves."
Lila?Smiling "It's so important to keep stress levels down. Especially people of color or other marginalized identities."

* That's really wonderful, maybe you can help me with some advice for a friend.
  -> Explain1
* Really? Maybe you can help me with some advice about stress?
  -> Explain1

==Explain1==
Lila?Smiling "Sure! Stress can be really difficult to handle. I suffer from a lot of stress, and you'd be surprised how it can hurt your health."

* Well, that's just it. My friend may be experiencing racial stress.
  -> Explain2
* Is there such a thing as racial stress? I'm beginning to worry about a friend.
  -> Explain2

==Explain2==
Lila?Neutral "If your friend is a person of color, they aren't imagining it. Racial stress is real, and can actually cause post traumatic stress."
Lila?Neutral "It can harm your heart, and lead to other health issues. It's serious." 

* Do you have any suggestions for them?
  -> Suggestion1
* That does sound serious. What can we do for them?
  -> Suggestion2

==Suggestion1==

~ notification = "Lila_Day 2_Racial stress is real, and serious_Rashad2"
# notification Lila_Day 2_Racial stress is real, and serious_Rashad2
~ notification = "Lila_Day 2_Self care activities can help with stress"
# notification Lila_Day 2_Self care activities can help with stress

Lila?Smiling "Well, your friend should talk to a professional if they can, and try to do self care activities they enjoy. They shouldn't be afraid to rest. Racial stress is serious and real." 

* {not Suggestion2} Is that all? Is there anything they can do?
  -> Suggestion2
* That's sounds like good advice, thanks!
  -> Goodbye

==Suggestion2==

~ notification = "Lila_Day 2_Racial stress can lead to race based traumatic stress syndrome; RBTS_Rashad2"
# notification Lila_Day 2_Racial stress can lead to race based traumatic stress syndrome; RBTS_Rashad2
~ notification = "Lila_Day 2_RBTS can lead to mental health issues_Rashad2"
# notification Lila_Day 2_RBTS can lead to mental health issues_Rashad2
~ notification = "Lila_Day 2_Microagressions and sustained collective trauma can harm mental health_Rashad2"
# notification Lila_Day 2_Microagressions and sustained collective trauma can harm mental health_Rashad2
~ notification = "Lila_Day 2_See a therapist that understands RBTS preferably from their cultural background_Rashad2"
# notification Lila_Day 2_See a therapist that understands RBTS preferably from their cultural background_Rashad2

Lila?Neutral "It's important that your friend see a mental health professional from their cultural background."
Lila?Neutral "Sustained collective trauma and workplace microaggressions can lead to mental health issues, trust me. It's called race based traumatic stress syndrome. RBTS. I've attended therapy for it, and really should continue to."

* {not Suggestion1} That's very helpful, Lila. Do you know any other tips?
  -> Suggestion1
* That's wonderful advice, Lila. Thank you so much.
  -> Goodbye

==Goodbye==

Lila?Smiling "Happy to help, {player_name}. I have the name of some therapists who specialize in racial stress, so if your friend needs a recommendation let me know okay?"
Lila?Smiling "Now, I'm going to head off and attempt to get deglittered. See ya!"

* Thanks so much, Lila! See you soon!
  ->END
* Bye Lila! Good luck with the glitter.
  ->END
