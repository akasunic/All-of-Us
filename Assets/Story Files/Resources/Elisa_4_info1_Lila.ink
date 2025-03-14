VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
Lila?Smiling "{player_name}! Can I tell you how happy the children were to see their planets safely hung from the ceiling?"

* Oh, I’m so glad. How are you?
  -> Chat1
* The kids are so lucky to have someone who really gets it! 
  -> Chat1

==Chat1==

Lila?Smiling "Oh, I think I’m lucky to have them to keep me on my toes. Today, one of them found a frog outside."

Lila?Smiling "Next thing I knew, it was inside participating loudly in storytime."

* A frog? What did you do? 
-> Chat2
* With all that excitement, do you have time for a question?  
  -> Explain1

==Chat2==

Lila?Smiling "I stopped story time. It took some careful questions, but I established that our guest came in from the yard, and I returned them to the yard." 
Lila?Smiling "We had a conversation about observing wildlife at a respectful, safe distance. We went back to story time, then we went outside to frog-watch."  

Lila?Smiling "If I know anything about kids, I know that if I’d just banned pocket-frogs, there would have been backpack frogs, or worse."

* Goodness, Lila! They really do test you, don’t they? 
  -> Chat3
* If you have time for something entirely different, I have a question.
  -> Explain1

==Chat3==

Lila?Smiling "I love them so. They test me, but they teach me so much too. We ended up reading up on the difference between frogs and toads."

Lila?Smiling "That turned into an entire debate – would it be better to be an amphibian like a frog or a reptile like a snake." 

Lila?Smiling "I bet you came in on a mission, though. You always have great questions." 

* I am, actually!
  -> Explain1

==Explain1==

Lila?Neutral "Alright. What’s today’s mission, friend?" 

* I’m helping a friend who has an appointment to discuss birth control.
  -> Suggestion1

==Suggestion1==
~ notification = "Lila_Day 4_Current guidelines recommend a pelvic exam and pap smear every 3 years unless there is reason for more frequent screenings_Elisa4-1"
# notification Lila_Day 4_Current guidelines recommend a pelvic exam and pap smear every 3 years unless there is reason for more frequent screenings_Elisa4-1 


Lila?Neutral "Oh, that’s big! I feel like the Health Clinc offering judgment free support for everybody's reproductive health is such a positive thing for the community!"

Lila?Smiling "They offer reproductive and sexual health care for people of all genders, not just women."  

Lila?Smiling "I’ve seen my <a>gynecologist</a> at the clinic for testing for <a>Sexually Transmitted Diseases</a> – or STDs, for <a>breast cancer screenings</a>, for birth control." 

Lila?Smilng "I even went with a guy friend who had a <a>vasectomy</a> done and needed a ride home."

Lila?Neutral "My doctor recommends a <a>pelvic exam</a> and a <a>pap smear</a> every 3 years, unless there’s a reason for more frequent screening."

Lila?Neutral "Do they know what sort of birth control they are asking about?"

* Oh! Her. She’s probably not sure. How do you decide that? 
  -> Suggestion2
* I think she’s a little unsure on that.
  -> Suggestion2


==Suggestion2==

Lila?Neutral "Birth control options are deeply personal. Your friend should be honest with the doctor about their sexual activity to date, their plans, their fears." 

Lila?Neutral "I grew up in a household where no question was off-limits, so my mom ended up answering a lot of questions for my friends."

Lila?Neutral "We always had pamphlets around the house about different birth control options."

Lila?Neutral "A frank conversation with their doctor will help your friend weigh the pros and cons of different types of birth control, including side effects.." 

Lila?Neutral "I tried a low-dose <a>pill</a> first, because they helped my mom with <a>migraines</a>. Turns out I’m terrible at taking a pill at the same time every day, which defeats the purpose."

* This is all really helpful. What else should she know?
  ->  Suggestion3


==Suggestion3==

~ notification = "Lila_Day 4_Ask your doctor for a rundown of all the potential options for birth control, including potential side effects and other possible pros and cons_Elisa4-2"
# notification Lila_Day 4_Ask your doctor for a rundown of all the potential options for birth control, including potential side effects and other possible pros and cons_Elisa4-2 

Lila?Smiling "I needed a hormonal solution because my periods were just terrible. There's no chance I will end up accidentally pregnant, but I needed to understand all of my choices."

Lila?Neutral "I recommend asking for a rundown of all the possible options. Then, decide what to try first with the advice of your doctor."

Lila?Neutral "Be prepared to try different options if the first one doesn’t work for whatever reason."

Lila?Smiling "Birth control comes in all varieties – everything from <a>barrier protection</a> – <a>condoms</a>, for example, which only come out when it matters..."
Lila?Smiling "...to long-term solutions like an IUD – an <a>intra-uterine device</a>, which is inserted once and lasts up to 7 years."

Lila?Smiling "Taking control of your reproductive choices means being clear-headed about what you want."

Lila?Smiling "and partnering with your doctor to make the choices that are best for you and your potential future family." 

* This is all really helpful. Thank you for your wisdom, Lila!
->Goodbye

==Goodbye==

Lila?Smiling " I’m grateful that my mom was open with this stuff. OK, back to protecting the amphibians of Bloomwood… see ya."

* See ya, Lila! 
  ->END
