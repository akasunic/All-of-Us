VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===
Mrslee?Smiling "{player_name}! Happy to see you."

* Mrs. Lee! You have been <a>glittered</a>! Are you okay?
  -> Chat1
* I'm happy to see you, too. Evidently the kids were too. 
  -> Chat1

==Chat1==

Mrslee?Smiling "We make art today! I shower before I go home."

* You seem so happy! I love this for you, Mrs. Lee.
-> Chat2
* You help parents with the paperwork when they sign their kids up for daycare, right? 
  -> Explain1

==Chat2==

Mrslee?Smiling "Every week, something new. I feel happy, too. So many smart, creative little people. They teach me to make art. Always shout "More glitter!" so, we always add more glitter!  

* I think you're a very brave woman. 
  -> Chat3
* Can I ask about your experiences with something?
  -> Explain1

==Chat3==

Mrslee?Smiling "Rashad tell me glitter is an infestation. That it spread and multiply like something from his movies. I say he need to make more art. Become one with the sparkle, like Lila say."

Mrslee?Smiling "I like art days, and I like the days I help in the office. I like it all." 

* I want to hear more about the art, but today, I'm here to ask office questions.
  -> Explain1

==Explain1==

Mrslee?Neutral "Tell me how I help." 

* I'm helping a friend replace her <a>immunization records</a> for school.
  -> Suggestion1

==Suggestion1==

~ notification = "Mrslee_Day 2_Keep your vaccine records with important paperwork like your passport_Elisa2-1"
# notification Mrslee_Day 2_Keep your vaccine records with important paperwork like your passport_Elisa2-1 


Mrslee?Neutral "Immunization records are very important; I make copy for new students to keep in records here. Vaccines keep us safe."

Mrslee?Neutral "When we move to America, Dr. Lee and I both need more vaccines. When Eddie travel, some countries require new ones." 

Mrslee?Neutral "Did you know many records exist on internet now? When I was a girl, it was all paper. When Eddie was born, it was all paper. Now? I get some records, like my COVID vaccine, on my phone!"

* What happens if a parent can't find their children's records? 
  -> Suggestion2
* How do you find those records online?
  -> Suggestion2


==Suggestion2==

~ notification = "Mrslee_Day 2_Your doctor or school should be able to provide you with at least partial records; contact them and ask what the process is for obtaining a copy_Elisa2-2"
# notification Mrslee_Day 2_Your doctor or school should be able to provide you with at least partial records; contact them and ask what the process is for obtaining a copy_Elisa2-2 

Mrslee?Neutral "Sometimes, parents ask the <a>pediatrician</a>. The doctor office keep many records. Fill out a form, get a copy."

Mrslee?Neutral "The last school somebody attend might be able to help. If everybody submit records, the school has records. It might take a phone call or email. And sometimes they even <a>fax</a> them to me here!" 

Mrslee?Neutral "The <a>CDC</a> has resources, too. Look it up on the internet. Students moving in from different places might need to do different steps to get their records." 
Mrslee?Smiling "Different states and different countries use different systems, but we often find help online."


* Mrs. Lee, this is super helpful! Thank you.
  -> Goodbye

==Goodbye==

Mrslee?Smiling "I learn so much helping Lila and the kids. Happy to share."

* Farewell to you too!
  ->END
