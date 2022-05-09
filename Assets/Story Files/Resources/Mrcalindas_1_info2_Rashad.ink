VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
Rashad?Smiling "Hey, hey {player_name}! Glad to see you. The next book in that N.K Jemisen series is ready for you. We just got new copies in." 

* Hey Rashad! That's great, I was waiting on it.
  -> Chat1
* Really? I've been stoked for it, thanks for letting me know it's in.
  -> Chat1

==Chat1==

Rashad?Smiling "I got us a grant to add more Black and Latinx authors to our shelves, so if you have recommendations, I'm here for them."

* I do have some recommendations. Congrats on the grant, that's really exciting.
  -> Chat2
* I can totally make some suggestions; I'll put a list together. I have a quick question for you, though.
  -> Explain1

==Chat2==

Rashad?Smiling "It is, isn't it? I've been trying to make sure we focus on what the community will use."
Rashad?Smiling "Last board meeting, one of the members recommended white noise machines. Can you imagine? The myth of a stuffy, quiet Library is so last century!" 

* No one needs those in here. Before I forget, though, I could use your help.
  -> Explain1
*  Ugh. Catch up, people! Oh hey, I have a question for you.
  -> Explain1

==Explain1==
Rashad?Neutral "Oh yeah? What's up?"

* I'm helping Mr. Calindas with some research, and I was hoping for your input.
  -> Explain2


==Explain2==

Rashad?Neutral "Oh? My input? What do you need to know?"

* What community health issues or programs do older Library <a>patrons</a> ask about?
  -> Suggestion1
* What does the community need to know about their own health?
  -> Suggestion1

==Suggestion1==

~ notification = "Rashad_Day 1_Free health and mental well-being classes are useful to underserved communities_Mrcalindas1-3"
# notification Rashad_Day 1_Free health and mental well-being classes are useful to underserved communities_Mrcalindas1-3 


Rashad?Smiling "We get a lot of requests for materials in various languages. This is important for English-as-a-second-language, or <a>ESL</a>, speakers to access our programming." 

Rashad?Smiling "Also, access to free health classes or mental health classes is really useful. The Library hosts a few workshops - some general basics - you know, things that apply to everyone."

Rashad?Smiling "When Cheryl's mom, my mother-in-law, was diagnosed with <a>lupus</a>, an <a>auto-immune disorder</a>, she attended classes just for people with her diagnosis, and it really helped her feel more hopeful." 


* Oh, those are really good points. What else? 
 ->Suggestion2
 
 * OK, I'm following. Do you have other suggestions? 
  ->Suggestion2

 
   ==Suggestion2==
   
~ notification = "Rashad_Day 1_Building trust is vital in providing healthcare support to communities_Mrcalindas1-4"
# notification Rashad_Day 1_Building trust is vital in providing healthcare support to communities_Mrcalindas1-4 

  Rashad?Neutral "I feel like there aren't a lot of places people can go to ask questions if they're scared; forming ongoing relationships make it possible to provide that sort of support."

Rashad?Neutral "Combating <a>vaccine hesitancy</a> starts with building trust within the community."
 
 
* I think Mr. Calindas will find this super helpful. Thanks, Rashad!
  -> Goodbye

* That's really insightful, Rashad. I'll take this back to the clinic.
  -> Goodbye

==Goodbye==

Rashad?Smiling "Oh, well that's good. Thanks for asking my thoughts. Okay, I'm going to go to my next meeting I'll catch you around {player_name}! Take care." 

* Take care, Rashad!
  ->END
* I'll send you those book recommendations, okay? Take care!
  ->END