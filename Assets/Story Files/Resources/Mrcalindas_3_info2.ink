VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro == 

Rashad?Smiling "What's up, {player_name}? I'm glad I ran into you. Octavia wants to know if there's going to be cotton candy at the block party. She heard through the grapevine it's free." 

* Hey Rashad. You know she's right. I do have the cotton candy machine game on lock.
  -> Chat1
* Hey Rashad! Octavia heard right. The cotton candy is ready, <i>and</i> free.
  -> Chat1

==Chat1==

Rashad?Smiling "Oh no. My kids are going to be bouncing around like little superballs. I'm ready though. I'm just going to toss them in the bounce house to shake it off."

* Maybe not. You remember what happened when Keisha ate too many slushies and put the bounce house out of commission. She still doesn't eat anything blue colored.
  -> Chat2
* Well, that's a mood. Oh, you know what. I have a question for you.
  -> Explain1

==Chat2==

Rashad?Smiling "Ohhh I forgot about that. Your Mom had to hose it down. It was all good though, she still beat me in that potato sack race after." 

* I remember. Ah... Oh! I could use your help.
  -> Explain1
* She sure did. Oh, you know what. I have a question for you.
  -> Explain1 
==Explain1==

Rashad?Neutral "We are not doing a potato sack race again." 

* No. No. I was wondering if the library has any bilingual classes or classes for seniors in tech?
  -> Explain2
* You know I'm not talking about that. I was wondering if the library had any classes for seniors about tech?
  -> Explain2

==Explain2==

Rashad?Neutral "Hmm. Tech classes,  or classes for seniors, or bilingual tech classes?" 

* I'm looking for a tech class for seniors taught in Tagalog or Spanish.
  -> Suggestion1
* Any of those, really. Maybe some information on seniors in tech?
  -> Suggestion2

==Suggestion1==
Rashad?Smiling "Well, we actually have free tech classes in Spanish and Tagalog. You can sign up at the front desk. They aren't specifically for seniors, but they're small and hands on."  

~ notification = "Rashad_Day 3_The Library offers small free tech classes in Tagalog and Spanish but they aren't senior specific._Mrcalindas3"
# notification

* That's great to know! Is there anything else I should think of?
  -> Suggestion2
* That's perfect, Rashad, thanks!
  -> Goodbye

==Suggestion2==
Rashad?Smiling "Well, you know new tech can be really difficult for seniors. The internet can be really overwhelming."
Rashad?Smiling "However, it's great to keep families talking to each other and keep up strong bonds." 

~ notification = "Rashad_Day 3_Seniors can use technology to connect with family and keep bonds strong"
# notification
~ notification = "Rashad_Day 3_The internet and new tech can be overwhelming for seniors"
# notification

* Hmm. That sounds wonderful. does the library offer any programs to help?
  -> Suggestion1
* This is great information to keep in mind. Thanks.
  -> Goodbye

==Goodbye==

Rashad?Smiling "Happy to help out. Now if you'll excuse me, I'm going to go get a presentation ready for the Board."
Rashad?Smiling "There's a couple programs for seniors I think we could improve. Be good, {player_name}" 

* Good Luck Rashad! Take care.
  ->END
* Bye Bro! Good luck!
  ->END
