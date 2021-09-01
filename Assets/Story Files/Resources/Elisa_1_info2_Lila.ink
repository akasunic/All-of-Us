VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
~ new_contact = "Lila"
# new_contact
Lila?Smiling "Oh hey, {player_name}. What's up?"

+Not much, I'm just here to do some research on career fairs.
    ->LilaIntro
+You wouldn't happen to know anything about career fairs, would you?
    ->LCareer1
    
===LilaIntro===

Lila?Smiling "A career fair, huh? Maybe I can help you out- I went to a few career fairs myself back when I was in school."

+That'd be great! Do you know if she should be preparing anything before the fair?
   ->LElevatorPitch
   
   
===LElevatorPitch===

Lila?Smiling "She'll probably want to practice an elevator pitch for when she goes up to people. It should be short and to the point."
Lila?Smiling "The major points to hit would be a personal introduction, what her career goals are, what her experience is, and what she would bring to the company."

~ notification = "Lila_Day 1_Prepare an elevator pitch_Elisa1"
# notification Lila_Day 1_Prepare an elevator pitch_Elisa1

+Elevator pitch, got it. Do you know what she should bring to the fair?
     ->LCareer2

===LCareer1===

Lila?Smiling "A little! I had to go to a few back when I was in school, but internships and everything were much less common."
Lila?Smiling "I only was expected to do one internship after my third year. Now I know students start small internships after their first year!"

~ notification = "Lila_Day 1_Internships used to be less common"
# notification Lila_Day 1_Internships used to be less common

+Gotcha. Well, do you remember anything about what to prepare?
    ->LElevatorPitch
    
===LCareer2=== //want to take this part out of either Rashad's or Lila's

Lila?Smiling "Oh yeah, sure! Usually you want to bring printed copies of your resume to the fair, that way you can hand them to potential employers."
Lila?Smiling "It's really helpful so that they can get a sense of how you might fit in their company, and sometimes they even hand the paper copies off to their higher-ups at the end of the day."


~ notification = "Lila_Day 1_Bring copies of your resume to the career fair_Elisa1"
# notification Lila_Day 1_Bring copies of your resume to the career fair_Elisa1

+Awesome! Do you have any tips on conversation with the hirers?
    ->LConvoTips
    
===LConvoTips===

Lila?Smiling "It's important to have questions to ask them, too!"
Lila?Smiling "Part of it is about knowing you, but a big part of it is also showing that you're interested or making a personal connection with the recruiter."
Lila?Smiling "Get creative with your questions! Intriguing them is memorable and they'll think of you later."

~ notification = "Lila_Day 1_Be sure to prepare questions to ask the recruiters_Elisa1"
# notification Lila_Day 1_Be sure to prepare questions to ask the recruiters_Elisa1

+Great! Any more general tips for success?
    ->LGenTips

===LGenTips===

Lila?Neutral "Hmm... I guess just make sure to follow up with the recruiters after the fair, especially if you end up applying to the job afterwards!"
Lila?Neutral "Might help the hirers remember you better when they end up looking over your real application."

~ notification = "Lila_Day 1_Follow up with new contacts after the career fair_Elisa1"
# notification Lila_Day 1_Follow up with new contacts after the career fair_Elisa1

+Great, thanks Lila!
    ->LsegueOut

===LsegueOut===

Lila?Smiling "Yeah, no problem!  Oh, and one other thing- confidence is huge for stuff like this."
Lila?Smiling "I know it gets overwhelming with the crowds and the long wait times, but tell your friend that she's got this."
Lila?Smiling "Plus, doing some positive self-talk before and during the event can really help keep your spirits high!"

~ notification = "Lila_Day 1_Practice positive self-talk during the event_Elisa1"
# notification Lila_Day 1_Practice positive self-talk during the event_Elisa1
~ notification = "Lila_Day 1_It can get overwhelming with all the people in the auditorium"
# notification Lila_Day 1_It can get overwhelming with all the people in the auditorium

+What's positive self-talk?
    ->LselfTalk
+Got it, makes sense!
    ->Lvisual

===LselfTalk===

Lila?Smiling "Self talk is like being your own cheerleader. Instead of worrying that you don’t belong, you try to keep a positive outlook."
Lila?Smiling "When I was in college, I used to tell myself, “You eat challenges like this for breakfast!” "

~ notification = "Lila_Day 1_Telling yourself 'You eat challenges like this for breakfast!' is very positive"
# notification Lila_Day 1_Telling yourself 'You eat challenges like this for breakfast!' is very positive

+Wow, that's awesome!
    ->Lvisual
+And that stuff works?
    ->LselfTalk2

===Lvisual

Lila?Smiling "Oh, and tell her that for another confidence boost, she could try visualizing herself as one of her role models!"

~ notification = "Lila_Day 1_Visualize your role models for a confidence boost during the event_Elisa1"
# notification Lila_Day 1_Visualize your role models for a confidence boost during the event_Elisa1

+Visualizing herself?
    ->Lvis2
+Oh, interesting!
    ->Lvis3

===Lvis2===

Lila?Smiling "Yeah! Research shows that if you picture a role model or a strong leader before an event, it'll help you feel more confident during it."
Lila?Smiling "She could picture her role model before the fair, or even before she approaches a booth!"

+I'll be sure to pass that along! Thanks Lila!
    ->LilaEnd
+Sounds good! I'll go tell Elisa- thanks for all your help.
    ->LilaEnd


===LselfTalk2===

Lila?Smiling "Absolutely! It's proven to up people's confidence. Oh, and tell her that for another confidence boost, she could try visualizing herself as one of her role models!"

~ notification = "Lila_Day 1_Visualize your role models for a confidence boost during the event_Elisa1"
# notification Lila_Day 1_Visualize your role models for a confidence boost during the event_Elisa1

+Visualizing herself?
    ->Lvis2
+Oh, interesting!
    ->Lvis3
    
===Lvis3===

Lila?Smiling "Yeah! All she'd have to do is picture her role model before the fair, or before she approaches a booth."
Lila?Smiling "Research shows that imagining yourself as someone you see as successful goes a long way in terms of boosting your confidence."
    
+I'll be sure to pass that along! Thanks Lila!
    ->LilaEnd
+Sounds good! I'll go tell Elisa- thanks for all your help.
    ->LilaEnd

===LilaEnd===

Lila?Smiling "No problem! See you around!"

+See ya!
    ->END
