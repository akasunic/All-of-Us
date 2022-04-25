VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro== 

Rashad?Neutral "Hey {player_name} what's up? How are you feeling?" 

* Hey Rashad! I'm doing well, I'm thinking a lot about kids in the community. You?
  -> Chat1
* I'm alright. Always thinking ten things at once. What are you up to?
  -> Chat1

==Chat1==

Rashad?Smiling "Actually I started playing a little pick-up basketball on my lunch break. My doctor suggested I try it. You know, for stress relief."

Rashad?Smiling "Speaking of which, <i>you</i> look a little stressed. What's going on?" 

* I'm realizing how much I don't know about creating accessible spaces for neurodivergent kids.
  -> Chat2


==Chat2==

Rashad?Neutral "Really? What makes you say that?" 

* Well, I could use some help figuring out how to support children with sensory needs.
  -> Explain1
* Actually, maybe you can help me out. What resources already exist in Bloomwood for kids?
  -> Explain1

==Explain1==

Rashad?Smiling "I'm actually really happy you're thinking about this. A lot of children can have a rough time without proper support. We see it at the library all the time."

Rashad?Neutral "Some families can feel embarrassed about their children's behavior, which is tough on everyone. Libraries expect kids to make noise and mess, and sometimes to have a hard time with things. We're prepared."

Rashad?Neutral "Children with sensory issues can have a great time doing normal social activities if we set them up for success." 


* What steps do you take to set them up for success?
  -> Suggestion1
  
 * What do you mean, when you say "We're prepared"? that sounds intense.
  -> Suggestion1


==Suggestion1==

~ notification = "Rashad_Day 4_Inclusive activities account for mealtimes, nap times, and other kid-centric concerns_Mrcalindas4-1"
# notification Rashad_Day 4_Inclusive activities account for mealtimes, nap times, and other kid-centric concerns_Mrcalindas4-1 


Rashad?Smiling "Inclusive activities take into account that little people have big needs. We don't schedule over mealtime. We keep our events short enough to hold their attention span." 

Rashad?Smiling "If the kids are young enough to nap, we offer morning sessions and afternoon sessions so parents can pick the time best suited for their situation." 

Rashad?Smiling "Like I said, we expect noise and mess. I think some people still think of libraries as silent and stuffy. They don't know that we understand kids, and want them to participate in our programs."

* Rashad, you're brilliant. I've never met a lunch meeting I liked.
-> Suggestion2

* OK. I've got all that. What else haven't I considered?
 -> Suggestion3

==Suggestion2==

Rashad?Smiling "I don't think kids and adults are that different; it's just a matter of scale."

Rashad?Smling "All kids - and most adults - are most successful when expectations are clearly communicated."

Rashad?Smiling "One thing you can do is make sure that any activities have clear signage with words and diagrams so that each participant knows what to do."


* That makes sense! I feel more comfortable if things are clearly communicated! What else?
  -> Suggestion3
* What does the library do, specifically, to support families and children?
  -> Suggestion3

==Suggestion3==

~ notification = "Rashad_Day 4_A separate quiet and calm space can help children who need a sensory break_Mrcalindas4-2"
# notification Rashad_Day 4_A separate quiet and calm space can help children who need a sensory break_Mrcalindas4-2 


Rashad?Smiling "This sounds silly for a library, but you'd be surprised how often it comes up. We offer quiet spaces that are near the activity, but not in the middle of things."

Rashad?Smiling "Sometimes an activity is just too stimulating. I don't always know what's going to be hard for a specific kid, so my job is to provide the pressure valve if they need it."

Rashad?Smiling "We have plenty of "young children welcome" and "families included" events and workshops. Everything is clearly labeled on our schedule, so someone looking for 'safer' events can make wise choices." 


* Thank you so much Rashad. I really appreciate you helping me think about this.
  -> Goodbye

==Goodbye==

Rashad?Smiling "No problem, {player_name}. You know making an inclusive space for children and their families is something we should all do."
Rashad?Smiling "Families need this support, and it's not that hard to give it to them." 

* Take care, Rashad!
  ->END

