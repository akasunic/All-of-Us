VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro == 

Rashad?Smiling "What's up, {player_name}? I'm glad I ran into you. Octavia heard a rumor through the grapevine that you're making ensaymadas. She would like to reserve two, please." 

* Word travels fast! I still depend on my pastry hookup though! 
  -> Chat1
* Once I've actually learned the secrets of ensaymadas, I'll gladly share! 
  -> Chat1

==Chat1==

Rashad?Smiling "Oh,  man. The grapevine got ahead of itself, or my kid heard what she wanted to..."

Rashad?Smiling "I bet it was wishful thinking - Cheryl got her to swear off solo baking projects after we spent a week vacuuming... and wiping ... and dusting... up flour."

Rashad?Smiling "All baking requires a buddy, and I bet Olivia would be thrilled to be your buddy."


* I remember. At least it wasn't honey, right?
  -> Chat2
* Well, that's a mood. Oh, you know what. I have a question for you.
  -> Explain1

==Chat2==

Rashad?Smiling "Ohhh I forgot about your jar of honey incident. Poor Mr. Calindas almost took back his offer to let  you into his kitchen!" 

* ...Changing the subject... I could use your help.
  -> Explain1
* He nearly did! Speaking of Mr. Calindas, I have a question for you.
  -> Explain1

==Explain1==

Rashad?Neutral "I'm not matching off against him at trivia again; one humiliation was enough." 

* No, no. Does the library offers bilingual classes? Or senior tech classes?
  -> Explain2

==Explain2==

Rashad?Neutral "Hmm. Tech classes, or classes for seniors, or bilingual tech classes?" 

Rashad?Smiling "Or bilingual tech classes for bilingual seniors?"

* I'm looking for a tech class for seniors taught in Tagalog or Spanish.
  -> Suggestion1
* Maybe information about helping bilingual seniors learn to use a tablet?
  -> Suggestion1

==Suggestion1==
~ notification = "Rashad_Day 3_Free tech classes can help users interact with government agencies and important businesses_Mrcalindas3-3"
# notification Rashad_Day 3_Free tech classes can help users interact with government agencies and important businesses_Mrcalindas3-3 


Rashad?Smiling "Well, we actually have free tech classes in Spanish and Tagalog. You can sign up at the front desk. They aren't specifically for seniors, though." 

Rashad?Neutral "It's really important for people to get to practice workshop skills, so the classes are small and hands-on."

Rashad?Smiling "I really want everyone to leave one of our classes feeling like they can do something new."

Rashad?Neutral "As more government agencies and businesses move towards doing business over the internet, being afraid or ignorant of technology becomes a bigger barrier."

Rashad?Neutral "Seniors, especially, can struggle with filing taxes, filling out forms. Ya know...the stuff nobody likes doing."

* That's great to know! Is there anything else I should think of?
  -> Suggestion2


==Suggestion2==

~ notification = "Rashad_Day 3_Seniors can use technology to stay connected with their families_Mrcalindas3-4"
# notification Rashad_Day 3_Seniors can use technology to stay connected with their families_Mrcalindas3-4 


Rashad?Smiling "The internet can be really overwhelming. I think it's important to focus on the good stuff when urging people to learn tech literacy."

Rashad?Smiling "The internet gives us opportunities to stay connected that never existed before. For example, my kids video chat with their grandparents or my siblings."

Rashad?Smling "Not going to lie - it feels like something from one of my movies when I realize my kid is getting math help from three states away."

Rashad?Smiling "I don't mind not being the long division tutor, really."

* This is great information to keep in mind. Thanks, Rashad.
  -> Goodbye

==Goodbye==

Rashad?Smiling "Happy to help out. Now if you'll excuse me, I'm going to go get a presentation ready for the Board."
Rashad?Smiling "There's a couple programs for seniors I think we could improve. Be good, {player_name}" 

* Good luck Rashad! Take care.
  ->END

