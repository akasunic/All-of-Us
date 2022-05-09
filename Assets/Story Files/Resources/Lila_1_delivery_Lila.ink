VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Lila1.txt"
# new_quest

Lila?Smiling "Hey {player_name}! How are you doing today?"

* Hi Lila! Just enjoying the good weather. What are you up to?
-> Chat1
* Hi Lila! What are you up to today?
-> Chat1

== Chat1 ==
Lila?Smiling "Hey {player_name}! Me too, actually! I’m enjoying some downtime and getting some knitting done."

Lila?Smiling "I’ve been pretty busy lately working on a new project so I’m trying to take it easy when I can."

* It’s good to take a break. What are you knitting?
-> Chat2
* What’s been keeping you so busy?
->QuestDescription

== Chat2 ==
Lila?Smiling "I’m making a hat for Mrs.Lee! I never made one before, so I'm learning as I go."
Lila?Smiling "It’s cold in the mornings when she comes to her exercise class. I thought this would be nice, especially in the pink she loves so much." 
Lila?Smiling "This seems like a good stopping place, though. I'm about halfway. I should probably get back to work; I have a lot of things to sort out."

* She's going to love it! It sounds like you’ve got a lot on your plate. 
-> QuestDescription
* Sort out? Is everything okay?
-> QuestDescription

== QuestDescription ==

Lila?Neutral "So..."
Lila?Smiling "I’m creating an LGBTQIA+ <a>Mentorship Group</a> for LGBTQIA+ youth in our community."
Lila?Neutral "Growing up, I always wanted something  where I could meet other people like me who had been through similar struggles."
Lila?Neutral "I really wish I had known older <a>LGBTQIA+</a> people to help me work through things."
Lila?Smiling "I wasn't alone, exactly. I had good friends, like Eddie, but I was thinking that maybe a community group with others might be a nice space for young LGBTQ+ people to have."
Lila?Smiling "My mom did her best, but she's so <a>straight</a>. There's a lot she didn't understand."

* LGBTQIA? That's quite a mouthful. I know what parts mean, but not all of it
->ExtraDetail

==ExtraDetail
Lila?Smiling "<a>Lesbian<a>, <a>Gay</a>, <a>Bisexual</a>, <a>Transgender</a>, Questioning/<a>Queer</a>, <a>Intersex</a>, <a>Assexual</a>, and others."
Lila?Smiling "It's a big umbrella and the acronym gets longer as we build better language to support people in their experience."
Lila?Smiling "When I was younger, it was just LGBT. We've gotten so much more inclusive and aware!"

* Lila! This sounds like such a big undertaking! 
->QuestOverview
* That sounds like a great idea, Lila! 
 -> QuestOverview

== QuestOverview ==
Lila?Neutral "Right now, I’m trying to keep my focus limited, so I don’t disappoint anyone."
Lila?Neutral "I’m feeling a little nervous about the first event. My overall goal is to encourage mentorship and build support systems within the local LGBTQIA+ community."
Lila?Neutral "So many of us face similar struggles, and if this project can support just one teenager, this will be worthwhile."

* What is your vision for the first event?
-> Interaction
* Lila! I can't imagine you disappointing anyone!
-> Interaction

==Interaction==
Lila?Neutral "I was thinking an ice-breaker event and a guest speaker to kick us off."
Lila?Neutral "I’d like to do a group activity where people write down special things about themselves and we share anonymously to make the point that we aren't alone."
Lila?Neutral "Hopefully seeing that, participants will feel safe to engage with the material and begin to open up."

* Can I help in any way?
-> Equipment
* Do you know what support you need?
-> Equipment

==Equipment==
Lila?Neutral "I have a list! I feel like what I need most is help in two areas - general presentation tech, and securing a backup speaker." 
Lila?Neutral "I’m so busy worrying about the activities for during the meeting that if you could help with those two things, I’d feel worlds better."

* This sounds fun! Did you have someone in mind for the speaker?
-> Speaker
* Sure! What else should I know before I start asking around?
-> Speaker

==Speaker==
Lila?Neutral "I found someone who works with the local <a>PFLAG</a> chapter, who I like a lot, but they’re really busy for the next few weeks."
Lila?Neutral "PFLAG is a national group that supports the LGBTQIA+ community - and their friends and families."
Lila?Neutral "I won't know until next week if this person can help. If they aren’t available, I’ll need a backup." 
Lila?Neutral "I’m looking for someone who can talk about the current state of LGBTQIA+ rights." 
Lila?Neutral "I’d also like to discuss how our families can support us and what it looks like to be an <a>ally</a> - to treat ally as a verb, not an identity."
Lila?Neutral "I want to emphasize how important it is to have a community around you who cares for you - we all need people we can rely on."
Lila?Neutral "A lot of LGBTQ+ youth don’t have that, but I think this space could become that. I’d like to work with the speaker to make a great first event that will bring people in!"
Lila?Neutral "Do you think you can help?"

* Absolutely! I’ll start looking around immediately.
-> Goodbye
* Of course. It’s so important to create ways for us to connect. I’ll see what I can do.
-> Goodbye

==Goodbye==
Lila?Smiling "Thanks again, {player_name}!"
Lila?Smiling "If you need anything, I'll be at the Community Center most days this week working on some extra details for this so everything turns out perfect."

* Take care, Lila!
-> END
* See you later, Lila! I’m really excited for this, I’ll see what I can find out for you.
-> END
 
