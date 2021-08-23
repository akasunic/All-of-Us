VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_quest = "Lila1.txt"
# new_quest
~ new_contact = "Lila"
# new_contact

Lila?Smiling "Hi {player_name}! How are you doing today?"

+ I'm doing well Lila, how are you? What are you working on? 
    -> project
+ Not too bad, working hard on the upcoming block party. How about you?
    Lila?Neutral "Oh, the block party! I haven't heard too much about it yet. "
    -> project

=== project ===
Lila?Smiling "I'm doing pretty well, spring is definitely my favorite season, even though it makes the kids crazy."
Lila?Smiling "They're outside with Mrs. Lee right now, which means I have some personal time. I'm actually setting up the kick off event for a new club at the community center."

+ That sounds really interesting! What's the event? 
    Lila?Neutral "Well, for background, "
    -> eventdescription
+ What's the new club?
    -> eventdescription

== eventdescription ==
Lila?Smiling "I'm starting an LGBTQ+ Mentoring Group for LGBTQ+ youth in our community."
Lila?Smiling "When I was younger, I wished I could have had something like this,"
Lila?Smiling "and after working with my friend Eddie when we were younger on similar issues, I thought I might try to start a group to work with others."
Lila?Smiling "Usually I try to stray away from adding more work on my plate outside of my job so I can focus on my personal hobbies, but this is important to me."

+ Wow, this sounds like a really good initiative. Would you be interested in having the kick off event at the block party? 
    -> clinic
+ It's always good to focus energy into causes that inspire you. 
    Lila?Neutral "I wholeheartedly agree, this one hits close to home. I was honestly thinking about having the first event at the block party."
    -> clinic


== clinic == 
Lila?Smiling "I'm working a childcare booth during the day to help out Rashad, but I could probably host the event at night."
Lila?Smiling "That might be a good way to get more kids to come too, since the daytime activities would be wrapped up!"

+ Yeah! This initiative is wonderful. What do you need to do to make it happen this weekend?
    Lila?Neutral "Well, "
    -> needsdescription
+ That's true, and if it's at night hopefully people will be off work as well.
    Lila?Neutral "Exactly. In fact, "
    -> needsdescription

== needsdescription ==
Lila?Neutral "right now I was just hoping to book this speaker, and start researching the equipment I need to rent."
Lila?Neutral "I'm also a little worried about the first event being just a speaker,"
Lila?Neutral "since I definitely want it to be a mentoring group that also hosts events for community exposure and learning opportunities."
Lila?Neutral "I guess I'll also need to find people who are interested in joining the group. Hmmm. This is a lot of work."

+ It does sound that way. What about the speaker you're looking at right now?
    -> speakeravailable
+ It is, but let me ask around, I'll see if I can find some solutions to these issues!
    -> bye


== speakeravailable ==
Lila?Neutral "Well, she looks great, but I emailed her earlier and the first time she is available is a couple weeks from now. So she wouldn't be able to make the event this weekend."

+ That's too bad. Is there any type of speaker you are looking for in particular?
    -> speakerexplain
+ Okay, I'll try to find another speaker who is available for this weekend for you.
    Lila?Smiling "Amazing! "
    -> engage


== speakerexplain ==
Lila?Neutral "Yeah! Aside from their topic being LGBTQ+ related, I definitely was hoping to kick off with an inspirational speaker,"
Lila?Neutral "maybe someone who has an inspiring story or could really show people that their identity is valid and worth exploring and understanding."
Lila?Neutral "You know, someone to get people excited about the group, and feeling welcome!"

+ Oh, that's true! You said you wanted to focus on engagement for this first one. 
    Lila?Neutral "Definitely. "
    -> engage
+ I think I have enough information to get started.
    -> bye


== engage == 
Lila?Neutral "I do need to focus on engagement in multiple ways."
Lila?Neutral "I want to both attract the right people – the people who need mentors – to the event as well as those who could benefit to learn more about what LGBTQ+ issues are,"
Lila?Neutral "and how you can always learn and support as an ally."

+ People should definitely be as involved as possible during the event. Do you think the speaker will bring their own equipment?
    -> equipment
+ Hmm, do you have any ideas you were already thinking about I might be able to pursue?
    -> engagementexplain


== engagementexplain ==
Lila?Neutral "I was thinking about a group activity where people write about themselves and share anonymously."
Lila?Neutral "That way, the audience can begin that process of engaging with the material and will be motivated to come to the next group session."
Lila?Neutral "I should also write a short MC script for myself so I can introduce myself and the group..."

+ You'd probably need a mic for that, actually, for the speaker as well anyway!
    -> equipment
+ Lots to do. Say, I'll get started on what we've talked about and we can check in later, okay?
    -> bye


== equipment ==
Lila?Neutral "Maybe, but I actually don't know whether I would be able to discuss with the speaker in time to get the equipment they need for event."
Lila?Neutral "Could you see if anyone has at least a projector available for slides?"

+ Yes! No problem. I should probably go start searching.
    -> bye
+ I can do that. I'm pretty sure the library has some tech available I could snag. I'll get started on this now.
    -> bye

=== bye
Lila?Smiling "Wow, thank you so much! I would love to have the event this weekend if it works out."
Lila?Smiling "I'll be at the community center all day every day this week. I have a lot of work to do if we're going to pull this off. I'll see you soon!"

+ See you soon, Lila! 
    -> END
+ No problem, I'll let you know as soon as I find what you need. 
    -> END