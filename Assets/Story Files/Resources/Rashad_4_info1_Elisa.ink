VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro==

Elisa?Smiling "Hey {player_name}! How are you? Come to check up on my plans for the succulent planting station? If not, I'm going to tell you anyway."

* Hi, Elisa it's good to see you too. Sure, tell me about the succulent station of doom, I'm all ears.
  -> Chat1
* Hi Elisa! It's good to see you. I'm not surprised you're this amped about the succulent station. 
  -> Chat1

==Chat1==
Elisa?Smiling "I am so excited about it! My grandma loved houseplants, so I love gardening. It's soooo relaxing, and you can give your plants cute names, and put them in tiny cute pots."
Elisa?Smiling "If you can't have pets, plants are great company."

*Wow. So, taking care of plants can be stress relieving? I didn't know that.
  -> Chat2
*Plants can do that? Wait, Elisa, you may be the person I need.
  -> Explain1

==Chat2==
Elisa?Smiling "Yes! Doing activities like this is a great stress buster. We had a stress reliever fair during finals this year, and I spent hours making a terrarium."
Elisa?Smiling "It made me miss my grandma, a lot, but I just loved spending time doing it. We're going to make terrariums at the Block Party."

* Ooo. That sounds really fun, Elisa. Your passion for nature is really great to see.
  -> Chat3
* Elisa, you just gave me an idea. I think you may be the person I need.
  -> Explain1

==Chat3==
Elisa?Smiling "I really miss hanging out with my abuela, I learned so much from her. I mean, I had to do tech duty, too. Her first selfie though? It was fire, honestly. The lighting? So. Good."

* Selfies? You managed a selfie? Elisa, I think you could have what I'm looking for.
  -> Explain1
* If you could get a selfie to happen, then I think you may be the perfect person to help me think through something.
  -> Explain1

==Explain1==
Elisa?Neutral "Oh? How can I help?"

* Rashad is looking to start a new initiative to help build bonds between teens and seniors and I want to get teens on board.
  -> Explain2
* Well, I'm trying to figure out how to help Rashad connect students and seniors.
  -> Explain2

==Explain2==
Elisa?Smiling "That sounds like a great idea. My schedule is pretty full, but I know a lot about what teens can get from a relationship with seniors. I'd love to help."

* Awesome. I'll take anything you know.
  -> Suggestion1
* I knew you were perfect for this, Elisa! Can you tell me what can teens gain from relationships this?
  -> Suggestion2

==Suggestion1==
Elisa?Smiling "Well, older people often have problems with tech, so we can help with that. Like, I helped my abuelita with her medical appointments."
Elisa?Smiling "The doctor said it really helped my grandma's cognitive skills to have someone to talk to. Plus, I really started to understand her more. She also taught me so many random skills."

~ notification = "Elisa_Day 4_Teens can help teach older people how to use new technology_Rashad4"
# notification Elisa_Day 4_Teens can help teach older people how to use new technology_Rashad4
~ notification = "Elisa_Day 4_Talking to other can improve senior cognitive health_Rashad4"
# notification Elisa_Day 4_Talking to other can improve senior cognitive health_Rashad4
~ notification = "Elisa_Day 4_Teens can learn random skills"
# notification Elisa_Day 4_Teens can learn random skills

* Elisa, that sounds wonderful. Can you tell me more about what you learned?
  -> Suggestion2
* That got me right in the heart, Elisa. What a great way to build a bond.
  -> Goodbye

==Suggestion2==
Elisa?Smiling "I honestly learned a lot about our culture and heritage, but besides that? Hanging out with seniors is great for mental health because it fosters positive relationships."
Elisa?Smiling "My abuelita always supported me when I needed her, and that was so good for my mental health."
Elisa?Smiling "Like, just having someone besides your parents to ask questions to, or get help is so useful. Plus, we taught each other a lot. My pupusas would not be what they are today, without her."

~ notification = "Elisa_Day 4_Seniors can share culture and preserve heritage_Rashad4"
# notification Elisa_Day 4_Seniors can share culture and preserve heritage_Rashad4
~ notification = "Elisa_Day 4_Having people other than parents to talk to is helpful_Rashad4"
# notification Elisa_Day 4_Having people other than parents to talk to is helpful_Rashad4
~ notification = "Elisa_Day 4_Teens can learn how to make pupusas"
# notification Elisa_Day 4_Teens can learn how to make pupusas

* {not Suggestion1} Really? That sounds amazing. Is there anything else? -> Suggestion1
* Elisa, this info is perfect. I knew you'd have some great ideas.
  -> Goodbye

==Goodbye==
Elisa?Smiling "I know I'm really busy, but tell Rashad, that I could help with this at work if he wants."
Elisa?Smiling "I would love to be able to connect again, with a senior. I miss my grandparents and this sounds great. Okay, I need to go pick up a tray of fresh baby cacti for the party. See you!"

* Don't prick yourself. I'll catch you soon, okay?
  ->END
* Thanks for being so helpful, Elisa. See you soon!
  ->END
