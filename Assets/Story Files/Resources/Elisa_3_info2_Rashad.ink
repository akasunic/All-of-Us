VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Rashad?Smiling "What’s good, {player_name}?"

* Is that … a Jello cup? 
  -> Chat1
* It looks like I caught you on a snack break! 
  -> Chat1

==Chat1==

Rashad?Smiling "Octavia has been really keen on helping pack lunches this week. So I’ve gotten some real treats. Yesterday, she insisted my apple needed to be cut into slices."

Rashad?Smiling "The day before, I got bugs on a log – you know, peanut butter and raisins on celery. I think it had been 20 years since last I last ate bugs." 

* That’s so sweet. I love it!  
  -> Chat2
* She’s such a good kid. Hey – I have a question about ADHD.  
  -> Explain1

==Chat2==

Rashad?Smiling "Literally sweet, in this case! Today, we all got Jello cups. I asked what flavor mine was, and she said "red!" So, I raise my red Jello in your honor, friend."

Rashad?Smiling "I’m having so much fun watching the kids learn things; sure, packing lunches takes three times longer, but she’s so proud of herself. You know?" 


* Rashad, this is all so wholesome! 
  -> Chat3
* Brains – and learning – are so cool! I have a brain-related ADHD question…
  -> Explain1

==Chat3==

Rashad?Smiling "If I knew you were coming by, I would have had her pack you a color. Sorry about that, buddy."

Rashad?Smiling "Since I don’t have enough to share, this will wait.  What can I do for you?"

* Well, I’m on a mission to find out more about ADHD.
  -> Explain1


==Explain1==

Rashad?Smiling "Did you come to the right place! I’ve worked really hard to build tools for my <a>ADHD</a> – did you know that stands for Attention Deficit/Hyperactivity Disorder?." 

Rashad?Neutral "It runs in my family, so my mom knew what to look for. When I knew the material, but tested poorly, she asked some questions." 

Rashad?Smiling "Then, as homework became more of a thing, and I was terrible about doing and turning in homework, without a lot of support, she really pushed the school for an <a>assessment</a>."

Rashad?Smiling "We spent a lot of time finding the right tools and treatment for me." 

* Wait. You have ADHD? But you have a Master’s Degree, Rashad!
 -> Explain2
* What did that process look like? 
  -> Suggestion1

==Explain2==

Rashad?Smiling "You seem shocked. I guess this doesn’t come up very often, does it? I do have a <a>Master's Degree</a>."

Rashad?Smiling "ADHD doesn’t mean you can’t be a good student." 

Rashad?Smiling "It just means your path is going to be a little different from that of someone without ADHD."  

Rashad?Neutral "The fact is that there’s a lot of cool things that go along with having what they call a "<a>neurodivergent</a>" brain. Like my ability to <a>hyperfocus</a> – I can get lost in a project for days if I let myself."

* You mentioned tools What sort of tools are we talking?
  -> Suggestion1
* So what types of coping mechanisms have you tried? 
  -> Suggestion1

==Suggestion1==

~ notification = "Rashad_Day 3_Different treatments for ADHD might be effective at different points in your life_Elisa3-3"
# notification Rashad_Day 3_Different treatments for ADHD might be effective at different points in your life_Elisa3-3 


Rashad?Neutral "I have what’s called mixed-type ADHD. That basically means that I had to learn how to channel my <a>impulsive behavior</a>, and how to compensate for the inattentive side. 

Rashad?Smiling "Ask me how many times my lunchbox ended up in lost-and-found because I finished lunch and it just ... disappeared from my mind." 

 Rashad?Smiling "The sorts of treatments that work for an individual might change over time, so the first thing I tell anyone who asks me is to stay flexible, and always be learning."
 
 Rashad?Smiling "What works today might not work in a month."

* Do you mind telling me a little bit about the treatment path you’ve taken? 
  -> Suggestion2


==Suggestion2==

~ notification = "Rashad_Day 3_ADHD treatment can include a combination of medication, therapy, behavioral changes and lifestyle adjustments_Elisa3-4"
# notification Rashad_Day 3_ADHD treatment can include a combination of medication, therapy, behavioral changes and lifestyle adjustments_Elisa3-4 


Rashad?Smiling "My personal path is less important than the broad brushstrokes to explore! Treatment can include a combination of medication, therapy, behavioral changes and lifestyle adjustments." 

Rashad?Smiling "There are two different categories of medication used to treat ADHD. This is going to sound super basic, but they fall into "stimulant" and "non-stimulant" as the categories."

Rashad?Smiling "I told you it was going to sound basic. Non-stimulant drugs focus on helping improve cognition and impulse control." 
Rashad?Smiling "Generally, these drugs are taken once a day, and might take a while to build up in the bloodstream enough to be helpful."

Rashad?Neutral "<a>Stimulants</a> are a little different. A brain with ADHD doesn’t react to "<a>uppers</a>" the way a brain without ADHD does. We don’t get buzzed or hyper; in many cases, we get calmer and clearer."

*You mentioned other options?
  -> Suggestion3
*What about people who maybe don’t want to use medications?
 ->Suggestion3

==Suggestion3==

Rashad?Smiling "I feel like a lot of mental wellness conversations start with the same basics. Exercise, therapy, good sleep practices, a balanced diet." 

Rashad?Smiling "<a>Mindfulness</a> – being aware of what’s going on with you and how you impact your surroundings is a big one in the ADHD toolkit." 

Rashad?Neutral "I really recommend ADHD specific counseling – behavioral therapies really help people learn how to work with their brain, not against it."
Rashad?Neutral "ADHD isn’t about "just try harder" or "If you only applied yourself" and IS about accepting the differences.That can really affect self-esteem and long-term outcomes."

Rashad?Smiling "ADHD is one aspect of a whole person, but remember that it affects the whole you. Build a team and a toolkit that supports your best efforts to be your best self." 

* Rashad, I really appreciate you sharing!
  -> Goodbye

==Goodbye==

Rashad?Smiling "Anytime, {player_name}. And now, back to my Jello!"

* Enjoy your "red!"
  ->END

