VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Lila?Smiling "Ah! {player_name}, do you mind holding this ladder so I can finish hanging up the childrens’ projects?"

* Lila! You’re supposed to wait until someone’s holding the ladder to climb up!
  -> Chat1
* Looks like I got here just in time!
  -> Chat1

==Chat1==

Lila?Smiling "Yeah, yeah. I got impatient – Mrs. Lee was going to help, but one of the parents is running late, so Mrs. Lee is with two of the kids outside."

Lila?Smiling "I just want to make sure everyone’s planets are up so they can feel proud of them tomorrow morning." 

* Planets? Oh, now I see it!  
  -> Chat2
* Oh, hey! These are pretty cool! Hey, can I ask a question about ADHD? 
  -> Explain1

==Chat2==

Lila?Smiling "Everyone made their own little world full of the things they like best. As you can see, each of the children has their own idea of what the world should be."

Lila?Smiling "So many cats, baby brothers, and unicorns. Also, look. Books, Mrs. Lee, and the library." 


* Hey, Lila, these are pretty cool! 
  -> Chat3
* I would love to ask you questions about ADHD, if you have a moment.
  -> Explain1

==Chat3==

Lila?Smiling "Sadly, the Health Clinic didn’t make the cut; everyone said that’s where you go for shots, and that’s not a big hit with the preschool crowd."

Lila?Smiling "Thanks. I think I’m done now. What can I do for you?"

* You work with kids who have ADHD, right?
  -> Explain1


==Explain1==

Lila?Neutral "<a>ADHD</a> is more common than most people would guess, though it doesn’t come up often in preschool; the official estimate is something like 2.5% of the world’s population has it."

Lila?Neutral "ADHD stands for Attention Deficit/Hyperactivity Disorder." 

Lila?Neutral "When I was a kid, there were a lot of stereotypes. Everyone thought ADHD was the kid who couldn’t sit down and kept acting up even when it got him in trouble."

Lila?Neutral "I think that stereotype was harmful in several ways."

Lila?Smiling "We know more now. More people who could benefit from treatment are being diagnosed, because we’ve developed a more nuanced understanding of the disorder."

* You said "him" ... is this something that primarily affects young men?
 -> Explain2
* A more nuanced understanding? Tell me more! 
  -> Suggestion1

==Explain2==

Lila?Smiling "That’s what we used to think. The whole "boys will be boys" way of thinking. like I said, we’ve developed a more nuanced understanding."

Lila?Smiling "More girls and women are getting access to treatment too!"

Lila?Neutral "Trisha was diagnosed last year; you can’t imagine how much she wishes she’d been diagnosed younger."

Lila?Neutral "There was a lot of self-doubt that could have been eliminated if she’d known what she was dealing with.."

Lila?Neutral "Not to say boys aren't affected - again, the stereotype used to be that <i>only</i> boys were affected. And now we know that people of all genders can have ADHD."

* What does ADHD actually look like, if not "boys will be boys?"
  -> Suggestion1
* Tell me more about the nuance, please! 
  -> Suggestion1

==Suggestion1==

~ notification = "Lila_Day 3_The key to determining whether to pursue ADHD assessment or not is to ask is this pattern interfering with this person’s success?_Elisa3-1"
# notification Lila_Day 3_The key to determining whether to pursue ADHD assessment or not is to ask is this pattern interfering with this person’s success?_Elisa3-1 


Lila?Neutral "Well, we know now that ADHD has three different <a>manifestations</a>. There’s the "classic" hyperactive  or impulsive type, there’s inattentive type."

Lila?Neutral "Then there’s mixed – someone who manifests aspects of both." 

Lila?Neutral "One of the things Trisha didn’t know until recently is that young women who are labeled "<a>chatterboxes</a>" or "<a>social butterflies</a>" might actually be demonstrating <a>hyperactivity</a>."

Lila?Neutral "It’s not good for anyone when a behavior that gets in the way of learning or feeling comfortable with yourself gets chalked up to being just one aspect of a specific gender!" 

Lila?Neutral "Again, in the last little while, we have started challenging a lot of the old stereotypes. We no longer consider hyperactivity a "boy trait"."

Lila?Neutral "And calling girls "social butterflies" undercut the seriousness of their struggles to regulate their attention. They were overlooked and struggled unnecessarily." 

Lila?Smiling "One key to identifying hyperactive ADHD is seeing that someone struggles to <a>self-regulate</a> their <a>impulsiveness</a> and it creates a pattern that is an obstacle to their success." 

* That’s hyperactive type – what about inattentive type? 
  -> Suggestion2


==Suggestion2==

~ notification = "Lila_Day 3_Distractedness is a trait that might lead someone to being assessed for ADHD_Elisa3-2"
# notification Lila_Day 3_Distractedness is a trait that might lead someone to being assessed for ADHD_Elisa3-2 


Lila?Smiling "Again, the key to whether or not to pursue <a>assessment</a> is to ask ‘is this a pattern and is it interfering with this person’s success?’" 

Lila?Smiling "Inattentive type ADHD manifests as an inability to properly regulate attention or to keep track of things or ideas."

Lila?Smiling "Remember what I said about the social butterflies stereotype being a possible manifestation of hyperactivity? Inattentive ADHD has similar stereotypes."

Lila?Smiling "Think about the brilliant, but distracted, mad scientist – that’s one character type that might be based off someone with inattentive-type ADHD."
Lila?Smiling "The sort who burns her toast and can only find one shoe because she’s thinking about something else entirely." 

Lila?Smiling "The other side of that coin is the daydreamer who can’t find his keys. Or who regularly gets scolded for not "applying" themselves."

Lila?Neutral "Distracted kids who can’t keep their attention in one place should be observed. If their distractedness is tripping them up, as a teacher, I’d suggest assessment." 


* This is such a good starting point. Thank you, Lila! 
  -> Goodbye

==Goodbye==

Lila?Smiling "And thank you for helping me hang the planets, {player_name}."

* Stay off ladders without a spotter! Bye, Lila!
  ->END

