VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

==intro== 

Rashad?Neutral "Hey {player_name} what's up? How are you feeling?" 

* Hi Rashad! I'm doing well, I'm thinking about kids in the community. You?
  -> Chat1
* I'm alright. What are you up to?
  -> Chat1

==Chat1==

Rashad?Smiling "Actually I started playing a little pick-up basketball on my lunch break. My doctor suggested I try it. You know, for stress relief."

Rashad?Smiling "Speaking of which, <i>you</i> look a little stressed. What's going on?" 

* I'm realizing how much I don't know about supporting neurodivergent kids.
  -> Chat2


==Chat2==

Rashad?Neutral "<a>Neurodivergent</a> kids? What about them?" 

* I want to figure out how to support children with sensory needs.
  -> Explain1
* Maybe you can help. What resources already exist in Bloomwood for kids?
  -> Explain1

==Explain1==

Rashad?Smiling "I'm actually really happy you're thinking about this. I think it's really important to build systems to help all kids succeed, whether or not they have disabilities."

Rashad?Smiling "Having my own kids has really shown me how unfriendly some settings can be for families. We work hard to be as friendly as possible at the Library."

Rashad?Smiling "I can still tell you every location in town that had changing tables available in the men's room. Things like that stick with you after your first angry, wet baby meltdown."

Rashad?Neutral "Libraries expect kids to make noise and mess, and sometimes to have a hard time with things. We're prepared. When we say that an event is kid-friendly, we really mean it."

Rashad?Neutral "Children with <a>sensory needs</a> can have a great time doing regular social activities if we set them up for success." 

* What steps do you take to set them up for success?
  -> Suggestion1
  
 * What do you mean, when you say "We're prepared"? That sounds intense.
  -> Suggestion1


==Suggestion1==

~ notification = "Rashad_Day 4_Inclusive activities account for mealtimes, nap times, and other kid-centric concerns_Mrcalindas4-1"
# notification Rashad_Day 4_Inclusive activities account for mealtimes, nap times, and other kid-centric concerns_Mrcalindas4-1 


Rashad?Smiling "<a>Inclusive</a> activities take into account that little people have big needs. We don't schedule over mealtime."

Rashad?Smiling "We keep our events short enough to hold their attention span." 

Rashad?Smiling "If the kids are young enough to nap, we offer morning sessions and afternoon sessions so parents can pick the time best suited for their situation." 

Rashad?Smiling "Like I said, we expect a reasonable, kid-appropriate amount of noise and mess. If there's an activity, we expect things to get spilled or dropped."

Rashad?Smiling "I don't schedule <a>guided meditation</a> workshops during a crafting hour; that would be unfair to everyone involved."

Rashad?Smiling "I think some people still think of libraries as silent and <a>stuffy</a>. They don't know that we understand kids, and want them to participate in our programs."

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

Rashad?Smiling "Sometimes an activity is just too <a>stimulating</a>. I don't know what's going to be hard for a specific kid; my job is to provide the pressure valve if they need it."

Rashad?Smiling "We have plenty of "young children welcome" and "families included" events and workshops."

Rashad?Smiling "Everything is clearly labeled on our schedule, so someone looking for 'safer' events can make wise choices." 


* Thank you so much Rashad. I really appreciate you helping me think about this.
  -> Goodbye

==Goodbye==

Rashad?Smiling "No problem, {player_name}. You know making an inclusive space for children and their families is something we should all do."
Rashad?Smiling "Families need this support, and it's not that hard to give it to them." 

* Take care, Rashad!
  ->END

