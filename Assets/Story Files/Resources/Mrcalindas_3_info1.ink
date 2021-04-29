VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Elisa?Smiling "Hey {player_name}! Hitting the books? Or are you tutoring someone?" 

* If I hit any books Rashad would never allow me in the library again.
  -> Chat1
* Hi Elisa! I think my tutoring days are over, I can barely remember where I put my coffee.
  -> Chat1

==Chat1==

Elisa?Smiling "Hah. Well, I'm sure you'll be fine. You're usually happy to keep everything together. How's the Block party coming along?" 

* It's going pretty well! I got a cotton candy machine, so you know I'm in heaven.
  -> Chat2
* It's going pretty well, actually. I popped by to ask Rashad something, but you might be able to help.
  -> Explain1

==Chat2==

Elisa?Smiling "Cotton candy? You sound way too excited for cotton candy. I thought only kids were this excited."

* Look, Elisa, here is some advice from the other side. Never get too old to be excited about sugar on a stick. Or any food on a stick.
  -> Chat3
* Well, maybe I just never grew up. Hmm.  I popped by to ask Rashad something, but you might be able to help.
  -> Explain1

==Chat3==

Elisa?Smiling "Okay, fair. I do love corndogs. And Satay. And- okay food on a stick is pretty great." 

* See. Never be too old for food on a stick. Hmm. I popped by to ask Rashad something, but you might be able to help.
  -> Explain1

==Explain1==
Elisa?Neutral "Oh cool? Is it about food on a stick, or something else?"

* Oh, no it's about technology.
  -> Explain2
* Definately somehting else. I've got a tech question.
  -> Explain2

==Explain2==

Elisa?Neutral "A tech question? and you didn't just look it up? Or watch a video?" 

* It's not for me, it's for Mother Calindas. She needs some help with technology.
  -> Suggestion1
* Oh no, I'm looking for some Senior tech classes in Spanish or Tagalog. Mother Calindas needs some hands on help. Do you know anything.
  -> Suggestion2

==Suggestion1==
Elisa?Smiling "Well, when I taught my abuela, we made sure to just turn on the largest font size so she could read everything clearly."

~ notification = "Elisa_Day 3_Providing accessible devices with large fonts can help."
# notification

* Oh, that sounds helpful. But I think I'm looking for some classes she could join or a tutor. Do you know anything like that?
  -> Suggestion2
* That's a pretty great idea. I'll tell Mr. Calindas that would help.
  -> Goodbye

==Suggestion2==
Elisa?Smiling "Oh, yeah. The internet can be really overwhelming for seniors. If you want you can have Mr. Calindas email me and I can help her here at the library."
Elisa?Smiling "Like a tutor. We can do it all in Spanish too." 

~ notification = "Elisa_Day 3_The internet and new tech can be overwhelming for seniors_Mrcalindas3"
# notification
~ notification = "Elisa_Day 3_Elisa is willing to teach some basic tech in Spanish_Mrcalindas3"
# notification

* That's such a greta idea, Elisa. Is there anything else we should keep in mind?
  -> Suggestion1
* You're so generous, Elisa. I'll have Mr. Calindas email you.
  -> Goodbye

==Goodbye==
Elisa?Smiling "Sure, no problem. I hope Mother Calindas is settling in okay. Anyway, I'm going to check these out. See ya!" 

* See ya, Elisa!
  ->END
* Have an awesome day, and thanks!.
  ->END
