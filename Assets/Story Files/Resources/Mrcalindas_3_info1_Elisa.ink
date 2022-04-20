VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Elisa?Smiling "Hey {player_name}! Hitting the books? Or are you tutoring someone?" 

* Hit a book? Rashad would never forgive me! hah!
  -> Chat1
* Hi Elisa! I think my tutoring days are over, I can barely remember where I put my coffee.
  -> Chat1

==Chat1==

Elisa?Smiling "Hah. You're usually able to keep everything together, right? How are things going?" 

* It's going pretty well! I do have a possible question, if you're not too busy to chat?
  -> Chat2
* I popped by to ask Rashad something, but you might be able to help.
  -> Explain1

==Chat2==

Elisa?Smiling "Today's an easy day. No tests to study for, all my homework is under control"

Elisa?Smiling "I even got to hang out with my folks over coffee this morning. So, I have time. Lay it on me!" 

* That's so sweet! Unsolicited advice time - never get too busy for coffee with your folks! 
  -> Chat3
  
* I'm glad to see you're not <i>always</i> flying at warp speed - ugh.  I sound like Rashad and his sci-fi talk. Aaaanyway... My question...
  -> Explain1

==Chat3==

Elisa?Smiling "I'm the eldest; I think I'm spiritually obligated to coffee and pastry with my mom as often as SHE is willing to slow down and sit a few.." 

* So you get it from somewhere. I'm not surprised. I have a parent question for you.
  -> Explain1

==Explain1==
Elisa?Smiling "Is it about how to get your parents to slow down and take it easy, instead of rebuilding the shed or planting ten different vegetables in the garden? or something else?"

* Oh, no it's about technology. Definitely compare parent notes with Mr. Calindas, though.
  -> Explain2
* Definitely NOT vegetables. I've got a tech question.
  -> Explain2

==Explain2==

Elisa?Neutral "A tech question? And you didn't just look it up? Or watch a video?" 
* It's not for me, it's for Mother Calindas. She needs some help with technology.
  -> Suggestion1
  
* Oh no, I'm looking for some senior tech classes in Spanish or Tagalog. Mother Calindas needs some hands-on help. Do you know anything?
  -> Suggestion1

==Suggestion1==

~ notification = "Elisa_Day 3_Providing accessible devices with large fonts can help_Mrcalindas3-1"
# notification Elisa_Day 3_Providing accessible devices with large fonts can help_Mrcalindas3-1 

Elisa?Smiling "Well, when I taught my abuela, we made sure to just turn on the largest font size so she could read everything clearly."

Elisa?Smiling "You know what they say - add an accessibility feature, and everyone uses it, not just seniors or people with disabilities."

Elisa?Smiling "Turns out I prefer the text on my phone as big as it'll go too, even if it makes easier for nosy siblings to read over my shoulder."

* Oh, that sounds helpful. But I think I'm looking for classes in Tagalog or Spanish or a tutor. Do you know anything like that?
  -> Suggestion2


==Suggestion2==

~ notification = "Elisa_Day 3_Elisa is willing to teach Mother Calindas some basic tech in Spanish_Mrcalindas3-2"
# notification Elisa_Day 3_Elisa is willing to teach Mother Calindas some basic tech in Spanish_Mrcalindas3-2 

Elisa?Smiling "Oh, yeah. The internet can be really overwhelming for seniors. If you want you can have Mr. Calindas email me and I can help her here at the library."
Elisa?Smiling "Like a tutor. We can do it all in Spanish too. Or I can practice tech terms in English with her."

* You're so generous, Elisa! I'll have Mr. Calindas email you.
  -> Goodbye

==Goodbye==
Elisa?Smiling "Sure, no problem. I hope Mother Calindas is settling in okay. Anyway, I'm going to check these out. See ya!" 


* Have an awesome day, and thanks!
  ->END
