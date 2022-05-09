
VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

== intro ==
Lila?Smiling "Hey, {player_name}! I hear my glitter made its way into the YA section of the library. Can’t say I didn’t warn you!"

* Let me guess. You got an earful from Rashad...
  -> Chat1
* Hah! If it's your glitter, why do I feel blamed for where it ended up?
  -> Chat1

==Chat1==
Lila?Smiling "I can’t browse for books in peace without Rashad following me with a vacuum. Did you know someone gave him a dust buster?"
Lila?Smiling "I asked about noise in the library and all he did was laugh."

* I did not. That sounds like something Cheryl got him.
  -> Chat2
* No way! He’s a riot - I love that guy.  Lila, can I ask you for some advice?
  -> Explain1

==Chat2==
Lila?Smiling "Right? I couldn’t help but laugh when I saw him creeping on me like I was up to no good with a glitter agenda. Sometimes I worry that Rashad is way too stressed, though."
Lila?Smiling "He cracks jokes and whatnot, but you can just tell that he’s burned out and I feel awful."

* And with all of that stress, he still manages to put a smile on our faces.
  -> Chat3
* That reminds me, I could use some advice.
  -> Explain1

==Chat3==
Lila?Smiling "Exactly. It’s hard to watch, and I wish there was something I could do to help but I don’t want to overstep. Anyway, what are you up to?"

* I could use your advice. Remember when I asked about therapy?
  -> Explain1
  

==Explain1==
Lila?Neutral "Of course! What do you need?"

* I’d like to learn more about the therapy process.
  -> Explain2
* What can you tell me about the process of finding a therapist?
  -> Explain2


==Explain2==

Lila?Neutral "Okay, sure. I'm happy to help. Finding therapy resources can be a bit of a pain if you haven't done it before. Especially if you're looking for a Black therapist - which I was."
Lila?Neutral "The same racism that keeps us out of other medical professions come into play for therapists too." 
Lila?Neutral "When you add in the historic stigmas against mental healthcare in Black communities, it creates a situation that perpetuates itself." 
Lila?Neutral "With patience, though, I've had luck in the past. I've even helped friends find therapists of their own." 

* What do you recommend for someone who has never gone through the process?
  -> Suggestion1


==Suggestion1==
~ notification = "Lila_Day 3_Not all therapists accept every insurance plan. Check to confirm that a therapist accepts your plan before setting up an appointment_Rashad3-1"
# notification Lila_Day 3_Not all therapists accept every insurance plan. Check to confirm that a therapist accepts your plan before setting up an appointment_Rashad3-1

Lila?Smiling "The hardest thing to wrap my head around is that a therapist is like a doctor."
Lila?Smiling "You tell them things so they can help you be well. This isn't picking a friend; it's picking a..."
Lila?Smiling "Well, it's like picking a service professional, or a contractor." 
Lila?Smiling "It also blows my mind that not every therapist takes every insurance plan. So, honestly? I start by asking that question first."
Lila?Neutral "It sucks to find someone you might vibe with and hit the <a>insurance</a> wall. Have your <a>insurance card</a> ready so you can give them your information."
Lila?Neutral "Most offices can tell you right then if they accept your plan."

* Interesting. Any advice about how to get started?
  -> Suggestion2
* There's a lot to consider! What else did you think about?
  -> Suggestion2


==Suggestion2==
~ notification = "Lila_Day 3_Online tools can help narrow down possible therapists with information about styles of therapy, availability, location, and affordability_Rashad3-2"
# notification Lila_Day 3_Online tools can help narrow down possible therapists with information about styles of therapy, availability, location, and affordability_Rashad3-2

Lila?Smiling "When I looked for a Black therapist, I used an online tool to search in our area. The tool allows you to filter options based on <a>therapy method</a>, insurance, or <a>out-of-pocket</a> cost."
Lila?Smiling "Also, sometimes they include other information, like religious background, if their practice is faith-influenced."
Lila?Smiling "In some circumstances, it might matter that some therapists charge based on a <a>sliding scale</a>, meaning the cost of the session is based on your income to make it affordable."
Lila?Smiling "When I called, we set up an <a>intake appointment</a> to get to know each other. I asked questions about race-based stress to know that she was actually prepared to help me."
Lila?Neutral "I did a bunch of reading so I was able to ask about different types of therapy."
Lila?Neutral "I wrote down questions because I knew I'd be nervous, but a good therapist knows this isn't easy."

* This is awesome! Thank you for sharing your experience.
 ->Goodbye

==Goodbye==
Lila?Smiling "Hey, mental health affects all of us, right? If you ever need anything else, {player_name}, I'm happy to help. Now I'm off to pick up Charlie from his weekly doggie daycare!"

* Aww! Text pics! See you soon!
  ->END












