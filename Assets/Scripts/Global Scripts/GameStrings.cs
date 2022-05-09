using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;

public static class GameStrings {

    private static Dictionary<string, Dictionary<string, string>> strings = new Dictionary<string, Dictionary<string, string>>
    {
        {"English", new Dictionary<string, string>
            {
                // Phone scene
                {"journal_updated", "MyJournal Updated"},
                {"todo_updated", "MyTodo Updated"},
                {"phone_settings_app", "Settings"},
                {"phone_contacts_app", "Contacts"},
                {"phone_todo_app", "To-Do List"},
                {"phone_notes_app", "My Journal"},
                {"phone_dictionary_app", "Dictionary"},
                {"home_screen", "Home Screen"},
                {"no_journal_entries", "No journal entries yet!"},
            
                // Days and Weeks
                {"day", "DAY"},
                {"week", "Week"},
                {"week_all_caps", "WEEK"},
                {"monday", "Monday"},
                {"tuesday", "Tuesday"},
                {"wednesday", "Wednesday"},
                {"thursday", "Thursday"},
                {"friday", "Friday"},
                {"saturday", "Saturday"},
                {"sunday", "Sunday"},

                {"monday_short", "MON"},
                {"tuesday_short", "TUE"},
                {"wednesday_short", "WED"},
                {"thursday_short", "THU"},
                {"friday_short", "FRI"},
                {"saturday_short", "SAT"},
                {"sunday_short", "SUN"},
                {"party", "PARTY!"},

                // Menus, Buttons, and Map
                {"day_summary", "Day Summary"},
                {"continue", "CONTINUE"},
                {"new_game", "NEW GAME"},
                {"credits", "CREDITS"},
                {"skip", "SKIP STORY"},
                {"next", "NEXT"},
                {"back", "BACK"},
                {"exit_game", "EXIT GAME"},
                {"save", "SAVE"},
                {"go_to_sleep", "GO TO SLEEP"},
                {"current_task", "Current Task"},
                {"visit", "Visit"},
                {"good_morning_message", "Good morning! Another beautiful day in Bloomwood."},
                {"search_term", "Search a term..."},
                
                // Saved Games
                {"saved_games", "Saved Games"},
                {"chat_with", "Please pick someone to help during this week!"},
                {"completed", "Completed"},

                // Saving game
                {"please_note", "Please Note!"},
                {"progress_wont_save", "Unfortunately, your progress made in the current task will not be saved."},
                {"saving_progress", "Saving Progress..."},

                // NPC info
                {"rashad_name", "Rashad Williams"},
                {"rashad_first_name", "Rashad"},
                {"rashad_age_pronouns", "42 years old | He/Him/His"},
                {"rashad_pronouns", "He/Him/His"},
                {"rashad_age", "42"},
                {"rashad_title", "Head Librarian, Bloomwood Library"},
                {"rashad_description", "Rashad was born in Bloomwood.  He moved back after getting his Master’s Degree in Library Science. He is married with 2 children (Wife Cheryl, children Octavia and Charles). He enjoys comic books, science fiction, and is an avid runner."},

                {"lila_name", "Lila Morgan"},
                {"lila_first_name", "Lila"},
                {"lila_age_pronouns", "26 years old | She/Her/Hers"},
                {"lila_pronouns", "She/Her/Hers"},
                {"lila_age", "26"},
                {"lila_title", "Head Start Teacher, Community Center"},
                {"lila_description", "Lila Morgan moved to town when she was 17; her mom worked with the Head Start program. After college, Lila returned to Bloomwood with her partner, Trisha. She is close with Mrs. Lee, and loves teaching her border collie, Charlie, tricks."},

                {"elisa_name", "Elisa Ramirez"},
                {"elisa_first_name", "Elisa"},
                {"elisa_age_pronouns", "19 years old | She/Her/Hers"},
                {"elisa_pronouns", "She/Her/Hers"},
                {"elisa_age", "19"},
                {"elisa_title", "College Student, Bloomwood Library"},
                {"elisa_description", "Elisa Ramirez grew up in Bloomwood, where her parents moved after leaving El Salvador. She will graduate this June with her Associate’s degree in Finance from Bloomwood College. Elisa loves reading, spending time with friends, physical activity, and the outdoors."},

                {"mrcalindas_name", "Mr. Calindas"},
                {"mrcalindas_first_name", "Mr. Calindas"},
                {"mrcalindas_age_pronouns", "58 years old | He/Him/His"},
                {"mrcalindas_pronouns", "He/Him/His"},
                {"mrcalindas_age", "58"},
                {"mrcalindas_title", "Head Nurse, Bloomwood Health Clinic"},
                {"mrcalindas_description", "Mr. Calindas moved to Bloomwood 20 years ago, when his wife, Paz took a job teaching Biology at Bloomwood Highschool. Mr. Calidas likes  to unwind by running or cooking with his daughter, Jessica."},
                
                {"mrslee_name", "Mrs. Lee"},
                {"mrslee_first_name", "Mrs. Lee"},
                {"mrslee_age_pronouns", "65 years old | She/Her/Hers"},
                {"mrslee_pronouns", "She/Her/Hers"},
                {"mrslee_age", "65"},
                {"mrslee_title", "Elder, Community Center"},
                {"mrslee_description", "Mrs. Lee and her husband, Dr. Lee, emigrated from South Korea with their grandson Eddie. Together, they raised Eddie in Bloomwood. Since the recent passing of her husband, Mrs. Lee has become a regular at the fitness classes at the Community Center."},

                // PC Setup
                {"pc_setup_title", "Who are you?"},
                {"name_field", "Name"},
                {"code_field", "Code"},
                {"pronouns_field", "Pronouns"},
                {"language_field", "Language"},
                {"she_her", "She/Her"},
                {"he_his", "He/His"},
                {"they_them", "They/Them"},
                {"other", "Other"},
                {"first_name", "First Name"},
                {"choose_one", "Choose One"},
                {"welcome_title", "Welcome to Bloomwood"},
                {"welcome_text", "Congratulations! Before you start your new role as our Community Advocate, tell us a little bit about yourself"},
                {"name_taken", "Name is taken"},
                {"name_invalid", "Name is invalid"},
                
                // Languages
                {"english", "English"},
                {"spanish", "Spanish"},

                // Buildings
                {"home", "Home"},
                {"community_center", "Bloomwood Community Center"},
                {"health_clinic", "Bloomwood Health Clinic"},
                {"library", "Bloomwood Library"},

                // Start week
                {"startweek_text1", "Are you ready to start the week and help"},
                {"startweek_text2", "solve some problems?"},
                {"startweek_text3", "If not, you can select a different neighbor!"},

                // End of quest
                {"days_left", "DAYS\nLEFT!"},
                {"day_left", "DAY\nLEFT!"},
                {"to_block_party", "to block party for"},
                {"finish_day", "FINISH THE DAY"},

                {"talk_bubble_1", "Thanks for helping me! Check out what you learned today!"},
                {"talk_bubble_2", "These are some of the memories I cherish the most!"},

                {"end_of_quest_rashad_1_sticker1", "Elisa will polish up her resume and apply through the library website."},
                {"end_of_quest_rashad_1_sticker2", "Rashad could reach out to those he has helped at the Library and ask them to spread the word about the open position."},
                {"end_of_quest_rashad_2_sticker1", "A multi-focus approach might be necessary for managing stress and reducing its impact on quality of life."},
                {"end_of_quest_rashad_2_sticker2", "Rashad should find a therapist who shares his cultural background so he can safely engage with the impact of racial stress in his daily life."},
                {"end_of_quest_rashad_3_sticker1", "Online tools can help narrow down possible therapists with information about insurance plans, styles of therapy, availability, location, and affordability."},
                {"end_of_quest_rashad_3_sticker2", "Different therapists provide different types of treatment; ask questions to make informed decisions."},
                {"end_of_quest_rashad_4_sticker1", "Connections between teens and seniors provide vital support for both populations, including creating connections through common culture and skill-sharing."},
                {"end_of_quest_rashad_4_sticker2", "Intergenerational connections provide benefits for the entire community."},

                {"end_of_quest_lee_1_sticker1", "Mrs. Lee can take Lila to the pharmacy with Mrs Lee to help her ask clarifying questions."},
                {"end_of_quest_lee_1_sticker2", "Mrs. Lee can learn to use a secure online portal to look up drug information from a safe resource."},
                {"end_of_quest_lee_2_sticker1", "Mrs. Lee can go to the health programming workshop at the library and ask for help."},
                {"end_of_quest_lee_2_sticker2", "Mrs. Lee should make an appointment to meet a new primary care doctor and ask the new doctor about her headaches."},
                {"end_of_quest_lee_3_sticker1", "Mrs. Lee can call Eddie and use that phone call as practice for sharing with the doctor."},
                {"end_of_quest_lee_3_sticker2", "Mrs. Lee should track her symptoms daily."},
                {"end_of_quest_lee_4_sticker1", "Mrs. Lee can work with Eddie to setup a system for sharing health information online."},
                {"end_of_quest_lee_4_sticker2", "Mrs. Lee should talk to Eddie about family health history."},

                {"end_of_quest_calindas_1_sticker1", "Education can reduce the stigma faced by LGBTQIA+ community members."},
                {"end_of_quest_calindas_1_sticker2", "Free health and mental wellbeing classes are useful."},
                {"end_of_quest_calindas_2_sticker1", "Group exercise classes offer social physical, and mental benefits."},
                {"end_of_quest_calindas_2_sticker2", "Volunteering can combat isolation and loneliness."},
                {"end_of_quest_calindas_3_sticker1", "The library has bilingual tech classes in Tagalog and Spanish."},
                {"end_of_quest_calindas_3_sticker2", "Seniors can use technology to connect with family and keep bonds."},
                {"end_of_quest_calindas_4_sticker1", "Inclusive activities account for mealtimes, nap times, and other kid-centric concerns."},
                {"end_of_quest_calindas_4_sticker2", "It's important to understand that different processing styles aren't 'misbehaving'. Including children means including noise and sometimes mess."},

                {"end_of_quest_lila_1_sticker1", "Lila might find low or no cost solutions for launching the mentorship group within the community."},
                {"end_of_quest_lila_1_sticker2", "By being vulnerable herself, Lila is making it possible for other people to connect with vital resources."},
                {"end_of_quest_lila_2_sticker1", "Connecting with other Black women might give Lila the support she's looking for."},
                {"end_of_quest_lila_2_sticker2", "Utilize online resources, including provider biographies and community directories of care providers."},
                {"end_of_quest_lila_3_sticker1", "Community institutions like libraries host affinity groups and free community events."},
                {"end_of_quest_lila_3_sticker2", "Connecting with community can include deepening existing relationships."},
                {"end_of_quest_lila_4_sticker1", "Learn to listen to your body, and give yourself permission to rest when needed Medical innovations come along all the time -- find a specialist you trust and stay up to date on the latest development."},
                {"end_of_quest_lila_4_sticker2", "When recording your family medical history, always document the diseases, allergies, ethnicity and death information for relatives if known."},

                {"end_of_quest_elisa_1_sticker1", "Work with your doctor to create a plan that combines diet, exercise, monitoring, and medicine to control your blood sugar and manage your diabetes."},
                {"end_of_quest_elisa_1_sticker2", "You can learn more about managing diabetes by accessing library resources, such as health workshops and cookbooks."},
                {"end_of_quest_elisa_2_sticker1", "Your doctor or school should be able to provide you with at least partial records; contact them and ask what the process is for obtaining a copy."},
                {"end_of_quest_elisa_2_sticker2", "If your immunization records are lost, you might need to repeat vaccines. There are also blood tests that can confirm immunity to certain diseases, proving that you are protected."},
                {"end_of_quest_elisa_3_sticker1", "The key to determining whether to pursue assessment or not is to ask “is this trait interfering with this person’s success?”"},
                {"end_of_quest_elisa_3_sticker2", "ADHD treatment can include a combination of medication, therapy, behavioral changes and lifestyle adjustments."},
                {"end_of_quest_elisa_4_sticker1", "Ask your doctor for a rundown of all the potential options for birth control, including potential side effects and other possible pros and cons."},
                {"end_of_quest_elisa_4_sticker2", "Family counseling can help families learn communication skills together; counseling doesn’t need to wait until there is a problem."},

                // Can't Talk Dialog
                {"cant_talk_dialog_sorry", "Sorry "},
                {"cant_talk_dialog_rashad", ", I’m busy at the moment, let’s catch up later?"},
                {"cant_talk_dialog_elisa", ", I’m busy at the moment, let’s catch up later?"},
                {"cant_talk_dialog_calindas", ", I’m busy at the moment, let’s catch up later?"},
                {"cant_talk_dialog_lila", ", I’m busy at the moment, let’s catch up later?"},
                {"cant_talk_dialog_lee", ", I’m busy at the moment, let’s catch up later?"},

                // Tutorial
                {"tutorial_startweek_yellowtitle", "What should I do?"},
                {"tutorial_startweek_whitetitle", "Who should I chat with first?"},
                {"tutorial_startweek_whitetext_1", "Welcome, "},
                {"tutorial_startweek_whitetext_2", ", New Community Advocate! \n Click on one of our Bloomwood Residents to learn more about them. You will spend the next week really digging into what they need, and figuring out how best to help them solve their problems."},
                {"tutorial_startweek_buttontext", "GOT IT"},

                {"dictionary_vn_yellowtitle", "Tools and Resources"},
                {"dictionary_vn_whitetitle", "Search in Dictionary"},
                {"dictionary_vn_whitetext_1", "You are about to meet "},
                {"dictionary_vn_whitetext_2", "! \n If you see words or phrases that you are not familiar with, you can try to search it using the dictionary here. Blue text in the dialogue boxes are included in the dictionary."},
                {"dictionary_vn_buttontext", "NEXT"},

                {"speed_vn_yellowtitle", "What should I do?"},
                {"speed_vn_whitetitle", "Wanna speed up?"},
                {"speed_vn_whitetext_1", "You’re about to have your first conversation with "},
                {"speed_vn_whitetext_2", ". To start chatting, click inside the white box. Select a response to keep the dialogue going!"},
                {"speed_vn_whitetext_3", "Click the text box or hit your enter key"},
                {"speed_vn_buttontext", "GOT IT"},

                {"task_map_yellowtitle", "What Next?"},
                {"task_map_whitetitle", "Stay On Task!"},
                {"task_map_whitetext", "That was a great conversation! Now you will go gather more information and help them out."},
                {"task_map_buttontext", "NEXT"},

                {"neighbors_map_yellowtitle", "What should I do?"},
                {"neighbors_map_whitetitle", "Talk to your Neighbors"},
                {"neighbors_map_whitetext", "The map shows you all the important places around town. Hover over a location to see who is there right now.\n\nClick on a neighbor to start a conversation.\n\nEach neighbor has specific expertise, and will be able to help with specific questions. Talk to people around town for advice and ideas."},
                {"neighbors_map_buttontext", "NEXT"},

                {"phone_map_yellowtitle", "What should I do?"},
                {"phone_map_whitetitle", "Jot It All Down"},
                {"phone_map_whitetext", "Click on your phone to see what you have learned and check your To-Do List. This will help you figure out your next steps."},
                {"phone_map_buttontext", "GOT IT"},

                {"todolist_phone_yellowtitle", "Tools and Resources"},
                {"todolist_phone_whitetitle", "To-do List"},
                {"todolist_phone_whitetext", "You’ll be collecting solutions to problems your neighbors are facing. Collect all the available information to solve their dilemmas. Your To-Do List on your phone will help you keep track of what you’ve learned, and what your next steps might be.  "},
                {"todolist_phone_buttontext", "GOT IT"},

                {"myjournals_phone_yellowtitle", "Tools and Resources"},
                {"myjournals_phone_whitetitle", "My Journal"},
                {"myjournals_phone_whitetext", "Each conversation you have provides information that might help your neighbors. Useful facts are saved in your journal. \n You can also see what you’ve learned already for other neighbors."},
                {"myjournals_phone_buttontext", "GOT IT"},

                {"tutorial_help", "Help"},


            }
        },
        {"Spanish", new Dictionary<string, string>
            {
                {"new_game", "new_game"},
            }
        }
    };

    public static string getString(string str) {
        return strings[GlobalGameInfo.language][str];
    }

}