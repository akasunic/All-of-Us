VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Lila?Smiling "Hey {player_name}! What’s new with you?" 

* Hi Lila! Is that glitter on your face?
  -> Chat1
* Hey Lila! Not much ...are you... You're covered in glitter!
  -> Chat1

==Chat1==
Lila?Smiling "The preschool life is a life perpetually covered in glitter, yes. I'm one with the sparkle now."

Lila?Smiling "I don't even notice any more unless someone reacts like I'm covered in slime."

* Well, I only know one thing about glitter...it travels. Should I be afraid?
  -> Chat2


==Chat2==
Lila?Smiling "I wouldn’t be surprised if you already have glitter on you despite the fact we haven't hugged. Just accept it now. Besides, art is a great way to destress."

* Is that right? I thought glitter was the bane of all existence.
  -> Chat3
* Actually speaking of stress, I could use your help.
  -> Explain1


==Chat3==
Lila?Smiling "Well, glitter does get everywhere, but yes I teach the children to use art to express themselves."
Lila?Smiling "Having a hobby - like making art - is helpful for managing stress. and it's important to keep stress levels down to stay healthy."
Lila?Neutral "Especially for people of color or other <a>marginalized identities</a>."

* Wait, so glitter ... is stress reduction. Who knew? 
  -> Explain1
* Really? Maybe you can help me with some advice about stress?
  -> Explain1
  

==Explain1==
Lila?Neutral "Sure! <a>Stress</a> can be really difficult to handle. I manage a lot of stress, and you'd be surprised how it can hurt your health."

Lila?Neutral "If I don't stay on top of things, I end up <a>grinding my teeth</a> at night. I have a <a>mouth guard</a> now, but only after I cracked a tooth. No fun!"

* Actually, one of my friends is experiencing race-related stress.
  -> Explain2
* I'm beginning to worry about a friend who is dealing with race-related stress.
  -> Explain2

==Explain2==
Lila?Neutral "If your friend is a person of color, they aren't imagining it. <a>Racial stress</a> is real, and can actually cause a condition called <a>post-traumatic stress disorder</a>, or <a>PTSD</a>."

Lila?Neutral "PTSD can harm your heart, and lead to other health issues. It's serious. I'm glad they're talking to you, and that you might be able to help them." 

* Wow, that sounds terrible. What should I be suggesting?
  -> Suggestion1
  *I'm learning that stress is more serious than I thought.
   ->Suggestion1
  

==Suggestion1==
~ notification = "Lila_Day 2_Find self-care activites to integrate into your daily life_Rashad2-3"
# notification Lila_Day 2_Find self-care activites to integrate into your daily life_Rashad2-3

Lila?Smiling "Well, your friend should definitely seek professional <a>mental health care</a> if they can. They shouldn’t go through this sort of thing alone."

Lila?Smiling "'Self-care' became a buzzword of sorts, but it's a real thing. Your friend should really take stock of the ways they can engage in meaningful self-care." 

Lila?Smiling "Take time to smell the roses, and all that. Art, music, movement. It all plays a part."

Lila?Smiling "Real <a>self-care</a> goes beyond bubble baths and oatmilk lattes, though those have their place too."

Lila?Neutral "Also, they shouldn't be afraid to sleep more than usual. Racial stress and PTSD are both serious and can really take a toll on our bodies." 

* Is there else anything they can do?
  -> Suggestion2

==Suggestion2==

~ notification = "Lila_Day 2_Rashad should find a therapist who shares his cultural background so he can safely engage with the impact of racial stress in his daily life_Rashad2-4"
# notification Lila_Day 2_Rashad should find a therapist who shares his cultural background so he can safely engage with the impact of racial stress in his daily life_Rashad2-4

Lila?Neutral "If I'm being honest, I think most people of color I know could benefit from <a>culturally competent therapy</a>."

Lila?Neutral "Sustained <a>collective trauma</a> and workplace <a>microaggressions</a> can lead to serious physical and mental harm, trust me. Then you factor in generational trauma..."
Lila?Neutral "These types of encounters create a condition called <a>race-based traumatic stress syndrome</a>, or <a>RBTS</a>. I've attended therapy for it."
Lila?Neutral "Some people really struggle with overcoming the <a>stigma</a> around mental health care." 
Lila?Neutral "I get it! That's why I think it's important to find someone who shares at least part of your background and experience."


* That's wonderful advice, Lila. Thank you so much.
  -> Goodbye


==Goodbye==

Lila?Smiling "Happy to help, {player_name}. I know some therapists who specialize in racial stress, so if your friend needs a recommendation let me know okay?"
Lila?Smiling "Now, I'm going to head off and attempt to get deglittered. See ya!"

* Bye Lila! Good luck with the glitter.
  ->END

















