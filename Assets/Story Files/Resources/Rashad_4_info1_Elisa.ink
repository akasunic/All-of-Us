
VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==


Elisa?Smiling "Hi {player_name}! How have you been? Are you curious to hear how my succulent plants are doing? If not, I'm going to tell you anyway."

* Hey Elisa! I’m doing well. Tell me about the succulents. 
-> Chat1
* It's nice to see you! Wait. Succulents? Is this a self-care thing?
-> Chat1

==Chat1==
Elisa?Smiling "My late grandma loved houseplants, so her love for gardening rubbed off on me. It's so therapeutic, and you can give your plants cute names.
Elisa?Smiling "I can't have pets, so plants <i>are</i> my self-care alternative! Mom gardens outside; I garden on my window sill so they can go to school with me." 

* Wow, that sounds super relaxing!
-> Chat2
*That sounds lovely. Wait, Elisa, there’s actually something I wanted to ask you
-> Explain1

==Chat2==
Elisa?Smiling "I know, right? Caring for plants is a great stress buster. This year, we had a stress reliever fair during finals week and I spent hours making a terrarium - it was perfect."
Elisa?Smiling "It’s a relaxing activity that makes me remember my abuela, and the fun times we shared. She loved making terrariums." 

* Your passion is really great to see, and your grandma would be so proud! 
-> Chat3
* That’s lovely! On another note, I need your help.
-> Explain1

==Chat3==
Elisa?Smiling "I really miss my abuela, I learned so much from her. I remember when I taught her how to use her first iPhone. Tech duty with the grandparents, you know how it is. Her first selfie was fire, honestly.”


* Speaking of selfies, Elisa, I think you might be the person I need. 
-> Explain1


==Explain1==
Elisa?Neutral "Oh? How can I help?"  

* There's a new initiative at the library to connect seniors and teens. 
-> Explain2
* I'm trying to help Rashad connect students and seniors for a new program. 
-> Explain2

==Explain2==
Elisa?Neutral "That sounds like a cool way to get seniors and teens to learn from each other. My schedule is kinda hectic, so I may not be able to volunteer."
Elisa?Neutral "If Rashad is looking for input, I can share what teens are generally interested in if you think that would be helpful?"

* Awesome. That would be super valuable!  
-> Suggestion1

It might also be helpful to hear about a relationship you've had with an elder.
-> Suggestion1


~ notification = "Elisa_Day 4_Teens and seniors can learn from each other_Rashad4-1"

# notification Elisa_Day 4_Teens and seniors can learn from each other_Rashad4-1
==Suggestion1==
Elisa?Smiling "I honestly learned a lot about my culture and heritage from my abuela, plus I think socializing with her was good for her mental health in a way."

Elisa?Smiling "My abuela always supported me when I needed her most, and that was so good for me. I learned a lot about how to cope from her; she was just so gentle and resilient, despite everything she lived through."

Elisa?Smiling "It’s also nice to have someone besides your parents to lean on for support. Plus, we taught each other a lot of interesting skills. My pupusas would not be what they are today, without her."

* Oh, Elisa! I'm so glad you had that bond!
-> Suggestion2
* Other than connecting with her amazing grandkid, how did she benefit?
 ->Suggestion2

~ notification = "Elisa_Day 4_Connections between teens and seniors provide vital support for both population, including creating connections through common culture and skill-sharing_Rashad4-2"

# notification Elisa_Day 4_Connections between teens and seniors provide vital support for both population, including creating connections through common culture and skill-sharing_Rashad4-2

==Suggestion2==

Elisa?Smiling "I think it's important to remember that elders and teens are both ... I dunno. Vulnerable? My parents are out in the world making ends meet and holding the household together. We were like bookends banding together for mutual support." 

Elisa?Smiling "My abuela admitted to me that she felt like the world was passing by so fast she was going to get left behind. I was able to help her combat that, and she made me feel like the smartest chica ever." 

Elisa?Smiling "She really valued her independence, so helping her with technology really gave her a sense of agency. Plus, I could tell she was happy to spend time with me, and taught me so many random skills."


* You’re pulling my heartstrings, Elisa. What a great way to build a bond.
-> Goodbye

==Goodbye==
Elisa?Smiling "I know I'm pretty swamped, but tell Rashad that I could help with this at work if he wants."
Elisa?Smiling "This program sounds super promising. I really miss my abuelita and I would love to be able to connect with another senior. I’m sure other teens feel the same. I’ve gotta go pick up a tray of fresh baby cacti. Catch you later!"

* Be careful with that cacti! See you soon. 
->END
* Thanks for your help, Elisa. I'll catch you later! 
->END







