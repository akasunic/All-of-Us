VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrcalindas?Smiling "Hello, {player_name}. How are you today?"

* Hi Mr. Calindas! I'm doing well, how are you?.
  -> Chat1
* So far, so good! How are things with you?
  -> Chat1

==Chat1==

Mrcalindas?Smiling "I am doing well. I am looking forward to trivia night at the Community Center this week." 

Mrcalindas?Smiling "What brings you to the Health Clinic today?"

* Wow, one win and you become single-minded!
  -> Chat2
* I'm looking for information about diabetes.
  -> Explain1

==Chat2==

Mrcalindas?Smiling "I'm not going to apologize that I've found a new joy in life! I will admit that I was as shocked as everyone else when I won."

Mrcalindas?Smiling "I want to defend my title at least once. I promise not to take it too seriously, though!"

* I wasn't surprised! You know a lot about many things!
  -> Chat3
* I was just messing with you! I'm actually here to try and learn more about diabetes.
  -> Explain1

==Chat3==

Mrcalindas?Smiling "You made a good showing, my friend. And don't discount the things you know; you are quite a resource for our community."

* Thanks! Speaking of which, I was wondering if I could ask you some questions about diabetes?
  -> Explain1
* I appreciate it. I'm actually here for my friend, though - they have a parent recently diagnosed with diabetes.
  -> Explain1

==Explain1==

Mrcalindas?Neutral "Diabetes is a long-term health condition that requires ongoing <a>monitoring</a>. Outcomes can be quite good, and managing the condition can be quite successful with the right tools."

Mrcalindas?Neutral "I am guessing that we are discussing Type 2 diabetes - which is sometimes referred to as "adult onset diabetes"." 

Mrcalindas?Neutral "As we age, sometimes our bodies produce less <a>insulin</a> than we need. Or they become less effective at using the insulin we do create." 

Mrcalindas?Neutral "Does that help?"

* Sort of. Can you tell me more?
 -> Explain2
* Yes! But what are the next steps after diagnosis?
  -> Suggestion1

==Explain2==

Mrcalindas?Neutral "Insulin is created by an organ called the <a>pancreas</a>. Much of the food we eat is broken down into sugars, which our body uses as fuel. Insulin is like a key that allows our cells to use that fuel."

Mrcalindas?Neutral "If there isn't enough insulin, or your body doesn't know what to do with the insulin that is created, too much blood sugar stays in your bloodstream, where it can cause harm over the long-term."

* What are the common treatments?
  -> Suggestion1
* Is it difficult to treat? What are the next steps?
  -> Suggestion1

==Suggestion1==

~ notification = "Mrcalindas_Day 1_Healthy Diet and Exercise can help manage diabetes_Elisa1-1"
# notification Mrcalindas_Day 1_Healthy Diet and Exercise can help manage diabetes_Elisa1-1 


Mrcalindas?Smiling "The biggest things to focus on are a diverse, nutrient-rich diet and regular exercise."

Mrcalindas?Smiling "We have specialists at the Health Clinic who help people learn about basics like portion control, what a 'balanced diet' looks like, and so on. 

Mrcalindas?Smiling "To summarize, though, eat small portions, make sure you do some light activity every day, and do more moderate activity a few times a week."

* But how do you know if your blood sugar is getting better or not?
  -> Suggestion2


==Suggestion2==

~ notification = "Mrcalindas_Day 1_Work with your doctor to create a plan that combines diet, exercise, monitoring, and medicine to control your blood sugar and manage your diabetes_Elisa1-2"
# notification Mrcalindas_Day 1_Work with your doctor to create a plan that combines diet, exercise, monitoring, and medicine to control your blood sugar and manage your diabetes_Elisa1-2 


Mrcalindas?Smiling "Well, it's fairly simple. Other than looking after your diet and exercising regularly, you'd be monitoring your blood sugar levels at home via a <a>blood glucose meter</a>."
Mrcalindas?Smiling "How often you have to monitor those levels varies from person-to-person, but it's usually once a day."
Mrcalindas?Smiling "Otherwise, treatment can include oral medications or insulin therapy via injections."
Mrcalindas?Smiling "Find a doctor - an endocrinologist - you feel comfortable with. They will be your partner in navigating those choices."


* This has been really helpful, thank you Mr. Calindas!
  -> Goodbye

==Goodbye==

Mrcalindas?Smiling "No problem. Have a good day, {player_name}."

* You too!
  ->END
* See you later!
  ->END
