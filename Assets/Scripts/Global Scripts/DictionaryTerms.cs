using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;

public static class DictionaryTerms {

    private static Dictionary<string, string> terms = new Dictionary<string, string>
    {
        // A
        {"A1C", "A1C is a test that determines your average blood glucose level of the last three months. This value will provide information about how well your body is producing or using insulin over time, which is different from a blood glucose test that shows your blood sugar levels in the moment."},
        {"abolished", "To put an end to something."},
        {"Abuela", "A spanish word meaning grandmother! "},
        {"accessibility", "The design of products, experiences, or environments to be usable by people with disabilities. "},
        {"accessibility feature", "A feature intended to make a device, product, or service usable by people with disabilities. "},
        {"accessible", "If something is accessible, it has been designed to be used by people who have disabilities. "},
        {"ADHD", "ADHD is a chronic neurological condition that includes attention difficulty, impulsive behavior, and hyperactivity."},
        {"admin", "Admin is short for administration or administrative."},
        {"advocating", "If someone is advocating for something, they are giving their public support for it. "},
        {"aerobics", "Aerobics is vigorous exercises designed to strengthen the heart and lungs."},
        {"agency", "A sense that you can influence your life and circumstances. "},
        {"agriculture", "The science and practice of farming. "},
        {"all ears", "Means to be listening closely."},
        {"allergic reaction", "An immune response to a substance such as pollen, fur, mold, or chemicals. The response might result in itching, sneezing, coughing, or other symptoms."},
        {"allergies", "An immune response to a substance such as pollen, fur, mold, or chemicals. The response might result in itching, sneezing, coughing, or other symptoms."},
        {"ally", "A supporter of those who are queer, and accepting of those with different sexualities. Also a supporter of other people from marginalized groups."},
        {"anxious", "To become nervous about a situation or issue."},
        {"articulate", "Being articulate is being well spoken. In this context, being articulate is a micro-aggression - a statement with racist implications."},
        {"ASL", "American Sign Language - the predominant language used by Deaf people in the United States. It is a visual language that uses the shape, placement, and movement of the speaker's hands, as well as facial expressions and body language, to convey meaning. "},
        {"assessment", "An assessment is an evaluation by a trained medical professional. "},
        {"at-home monitoring machines", "Medical devices used to collect data at home to help doctors provide advice regarding treatment and management of your medical conditions. These might measure blood pressure, weight, blood sugar, heart rate, or other physical traits. "},
        {"autistic", "Someone who is autistic has autism, which is a genetic condition characterized by challenges with social skills, repetitive behaviors, and speech conditions."},
        {"autoimmune diseases", "An autoimmune disorder is a disease in which the body's immune system attacks healthy cells. "},

        // B
        {"barrier protection", "A physical barrier used during sexual contact to prevent pregancy or the transmission of disease. This might include condoms or dental dams. "},
        {"bilingual", "Speaking or using more than one language"},
        {"biofeedback", "A technique you can learn to control some of your body's functions, including heart rate. By learning to recognize the physical signs of stress, patients can learn to relax their bodies and reduce the impact of stress on their physical well-being. "},
        {"birth control", "The act of preventing pregnancy."},
        {"blood glucose meter", "Also known as a glucometer. This device measures the amount of glucose present in a drop of blood. The patient pricks their finger using a tiny needle and inserts it into the machine on a special strip of paper. "},
        {"blood pressure", "Blood pressure is a way to measure the pressure in your arteries when your heart beats. It is a good indication of how helathy you are, and how stressed you are. "},
        {"blood sugar", "Blood sugar refers to the amount of glucose suspended between the cells in your bloodstream. "},
        {"bloodwork", "Bloodwork is a medical test where they draw blood from a person's vein and test it for various diseases. "},
        {"bookmobile", "A bookmobile is something on wheels (a car or truck) that has books in it. "},
        {"brainstorm", "To sit down for a period of time to think about different ideas on how to solve a problem."},
        {"brushed me off", "Means to avoid a conversation or not to take their concern seriously."},
        {"Buenos Dias", "A Spanish phrase meaning 'Good Day!'"},

        // C
        {"cardiovascular", "Anything related to your heart and blood vessels. "},
        {"careful", "If Eddie is not careful and takes the wrong medicine, he could fall very sick!"},
        {"CBT", "Cognitive Behavioral Therapy is a style of therapy focused on changing patterns of thinking and behavior. "},
        {"CDC", "CDC is also known as the Centers for Disease Control and Prevention, and it is the national public health agency of the United States"},
        {"chatterboxes", "A chatterbox is someone who talks a lot. "},
        {"childcare", "A person or organization that looks after children."},
        {"chronic illness", "Medical conditions that last a year or more, and require ongoing medical attention and/or limit activities of daily living."},
        {"cognition", "The processes involved in gaining knowledge and comprehension. "},
        {"Cognitive Behavioral Therapy", "Cognitive Behavioral Therapy (CBT) is a style of therapy focused on changing patterns of thinking and behavior. "},
        {"collective trauma ", "The shared experience of how a terrible event or circumstance impacts a community or society. "},
        {"community grants", "A grant is money given to a person or entity for a specific purpose linked to a community benefit. "},
        {"condoms", "A sheath-shaped device used during sexual contact to prevent pregnancy or the transmission of diseases. "},
        {"consultation", "A meeting with an expert or professional, such as a medical doctor, in order to seek advice."},
        {"culturally competent therapy", "It can be very beneficial to find a therapist who shares elements of your cultural background; shared experiences create a lens through which we understand our experiences, and if a therapist has that lens, it might make therapy more effective, and increase your comfort. "},

        // D
        {"DBT", "Dialectal Behavioral Therapy (DBT) is a type of Cognitive Behavioral Therapy (CBT), which is a style of therapy focused on changing patterns of thinking and behavior."},
        {"dementia", "A group of conditions characterized by impairment of brain function. Symptoms might include forgetfulness, cognitive impairment that interferes with daily function, or impaired social skills. "},
        {"dental cleaning", "The removal of dental plaque from your teeth to prevent oral diseases. "},
        {"depressed", "If someone is depressed, they struggle with depression, a mental health condition."},
        {"Diabetes", "Diabetes is a chronic (long-lasting) health condition that affects how your body turns food into energy. People with diabetes must control how much sugar they eat. "},
        {"diagnosis", "A diagnosis is when a doctor or professional examines you, maybe performs certain tests (like a blood or urine test) and identifies an illness or other problem you have. "},
        {"Dialectal Behavioral Therapy", "Dialectal Behavioral Therapy (DBT) is a type of Cognitive Behavioral Therapy (CBT), which is a style of therapy focused on changing patterns of thinking and behavior."},
        {"disability", "A physical or mental condition that limits a person's movements, senses, or activities"},
        {"diseases", "Medical conditions requiring monitoring or treatment. "},
        {"do me a solid", "Doing someone a favor, or going out of your way to help someone, usually a friend."},
        {"doctor", "A doctor is a professional who treats patients medically."},
        {"dove right into the books", "To study deeply."},
        {"drug information portal", "An online tool that provides information about medications, their usage, and their side effects. Drug information portals work with doctors to provide accurate information. "},

        // E
        {"embarass", "Mrs. Lee is embarassed to ask the pharmacist about the prescription because she does not know if the medicine is correct and is afraid to ask."},
        {"endocrinologist", "An endocrinologist is a doctor who specializes in the treatment of hormone-related diseases and conditions, such as diabetes. "},
        {"ensaymada", "A Spanish and Filipino spiral-shaped pastry made with sweet yeast dough and topped with powdered sugar."},
        {"ESL", "An abbreviation for English as a second language; might also refer to programs and services provided to immigrants whose first language is not English. "},
        {"eye exam", "An eye exam is when a doctor tests out how well you can see, to make sure you don't need glasses. "},

        // F
        {"fax", "A fax is one method of transmitting data between locations. It uses a telephone line and a specialized machine that scans a picture of a document and sends it to a similar machine in the second location. "},
        {"Financial Analysis", "'Financial Analysis' is a business class Elisa is taking which is teaching her how to read and interpret a company's financial statements."},
        {"first generation", "Those who are first generation are the first members of their family (hence, the first generation) to accomplish a certain milstone, such as graduating college or getting a corporate job."},
        {"fish out of water", "Being a 'fish out of water' means to be in an environment where you are not the most comfortable, possibly doing something that is new to them. In this case, Rashad feels unsure of himself. "},
        {"fostering", "To create."},

        // G
        {"gender-affirming", "Treatments and behaviors that affirm a transgender person's gender identity; therapies that help a person's outward traits match their internal identity."},
        {"genderqueer", "Someone who does not subscribe to conventional gender distinctions, but identifies with both, neither, or a combination of the traits commonly assigned to men or women. "},
        {"generations", "Recording medical histories for 3 generations means recording information on your grandparents, their offspring, and their grandchildren. This would be your parents, aunts and uncles, cousins and siblings. You should also include any information on your children and nieces and nephews."},
        {"genetic", "If something is genetic, it is passed from your parent to you from their genes."},
        {"gold mines", "To be a rich resource."},
        {"Google", "An online portal for finding information on the web."},
        {"grief counselor", "A mental health professional trained to help people deal with loss."},
        {"grinding", "When someone is 'grinding', they are working very hard to get something done."},
        {"grinding my teeth", "Tension and stress can cause one to clench their jaw. This can cause pain or tenderness, or damage to your teeth and the bones in your jaw."},
        {"group therapy", "A form of therapy where patients gather together to discuss their problems under the guidance of a therapist. Patients might benefit from the support of a group, or seeing that others share their problems. "},
        {"GSA", "Gay-Straight Alliance, also known as Genders & Sexualities Alliance. This is a student-organized group that focuses on supporting the LGBTIAQ+ community. "},
        {"guided meditation", "Meditation is a practice in which a person trains their attention on a concept or focus. Guided meditation is when a live or recorded person used words to help direct your attention towards the intended goal. "},
        {"gyn", "Short for gynecologist: a medical doctor who provides sexual and reproductive health services that include pelvic exams, pap smears, cancer screenings, and testing and treatment for various vaginal infections. They treat reproductive disorders involving ovaries and uteruses. "},
        {"gynecologist", "A medical doctor who provides sexual and reproductive health services that include pelvic exams, pap smears, cancer screenings, and testing and treatment for various vaginal infections. They treat reproductive disorders involving ovaries and uteruses. "},

        // H
        {"hashtag", "A hashtag is is a word or phrase preceded by the pound symbol. On social media, it serves as an indication that a piece of content relates to a specific topic or belongs to a category."},
        {"headache", "A headache is a painful sensation in any part of the head. Headaches have different causes, and could be symptoms of other health conditions. "},
        {"health insurance", "Health Insurance is a type of insurance coverage that pays for health and medical expenses."},
        {"health records", "These are documents that list a person's medical history (doctors appointments, surgeries, medications, etc.)."},
        {"healthcare professionals", "A person who is an expert and is licensed & educated to perform a medical service."},
        {"heart attack", "A medical emergency in which blood flow to the heart is blocked, resulting in a loss of oxygen and possibly tissue damage. Symptoms include chest pain or tightness, faintness, abnormal heartbeat, and anxiety. Women are more likely to suffer heart attacks that are not accompanied by the traditionally understood symptoms. "},
        {"heart disease", "Also known as cardiovascular disease which is: Heart conditions that include diseased vessels, structural problems, and blood clots."},
        {"high blood pressure", "A condition in which the force of blood against the walls of your arteries is too high and causes damage over time. "},
        {"hitting the books", "Means 'to study'."},
        {"HIV/AIDS", "Human immunodeficiency virus, or HIV, causes AIDS, acquired immunodeficiency syndrome. People with AIDS have such badly damaged immune systems that they get otherwise rare and hard to treat illnesses. "},
        {"hotlines", "A service enabling people to speak confidentially to someone about a problem or question, either by telephone or over the internet."},
        {"HR", "HR stands for Human Resources, and they are a team that focuses on the company or organization's employees—HR hires and fires employees, along with solving workplace issues with employees."},
        {"humiliation", "A state of embarrassment."},
        {"Hyperactivity", "Constantly active and sometimes disruptive behavior. "},
        {"hyperfocus", "A period of intense concentration during which your entire attention is absorbed by a single task or idea. "},
        {"hypertension", "A condition in which the force of blood against the walls of your arteries is too high and causes damage over time. "},

        // I
        {"identities", "An identity is an character trait you relate to, including sexuality, race, gender, even religion, and political status. With Lila, she identitfies herself as a queer woman and a black woman."},
        {"Immunization records", "A timeline of immunizations (also known as vaccinations) received.  "},
        {"immunizations", "An immunization, or vaccination, is the process in which a person's immune system is activated to protect them from a specific disease. Many immunizations are administered as needle injections, but some are inhaled or taken by mouth.  "},
        {"impulsive behavior", "Behavior that is without planning or forethought. Driven by a strong, sudden, often unpredictable urge. "},
        {"in the thick of it", "Means having a hard time, or going through something tough. "},
        {"inclusive", "Something that is inclusive is an event or place where people of different backgrounds, strengths, abilities, and skills feel safe, welcomed, and valued. "},
        {"infections", "The invasion and growth of germs in the body. The germs might be bacteria, virii, funguses, yeast, or other micro-organisms. "},
        {"initiative", "An initiative is a program that helps to solve a problem."},
        {"insomnia", "A condition where falling, and staying, asleep is difficult."},
        {"insulin", "A hormone produced in the pancreas which regulates the level of glucose (a type of sugar) in your bloodstream. "},
        {"insurance", "Insurance is a contract that requires the insurance company to pay some or all of your medical expenses. In the US, this system can be very complicated.  "},
        {"intake appointment", "Sometimes refered to as an 'intake', this is an inital appointment with a healthcare professional. This appointment is for collecting information, asking and answering questions, and making intial plans about the course of treatment. "},
        {"intake interview", "Sometimes refered to as an 'intake', this is an inital appointment with a healthcare professional. This appointment is for collecting information, asking and answering questions, and making intial plans about the course of treatment. "},
        {"intergenerational dialogue", "Discussions and conversations that are used to bring together younger and older generations, so they can understand each other's point of view and grow closer together. "},
        {"Intra-uterine device", "An intra-uterine device, or IUD, is a small plastic or copper device inserted by a medical professional into the uterus of a person to prevent pregnancy. They are long-term, reversible, and effective. "},
        {"isolated", "A state of being alone or feeling lonely, in a way that makes you unhappy. "},
        {"isolation", "A state of being alone or feeling lonely, in a way that makes you unhappy. "},

        // K
        {"kickstart", "To begin, to start. Often used to refer to something that might require a notable amount of energy to start."},
        
        // L
        {"lactose intolerance", "Lactose is a sugar present in milk. Some people lack the enzyme necessary to break down that sugar, which means that consuming dairy products causes digestive discomfort, including pain, bloating, and gas. "},
        {"lay it on me", "Means 'tell me'."},
        {"LGBTQIA+", "Lesbian, Gay, Bisexual, Transgender, Questioning/Queer, Intersex, Assexual, and others - this is an acronym that encompasses a diverse community of gender and sexuality minorities."},
        {"life hack", "A trick or tip found on the internet to improve your life or make a task easier. "},
        {"long division", "In math, long division is a method used for dividing large numbers into groups or parts."},
        {"low-power mode", "When Rashad says that he is in low-power mode, he is comparing himself to an electronic device that has entered an energy-saver mode to avoid running out of battery prematurely. He is saying that he feels depleted, but has energy to continue the conversation, as long as it doesn't become too taxing. "},
        {"lump", "One possible indicator of breast cancer is if a person has a lump in their chest/breast. People find these lumps by performing breast exams - external exams in which they squeeze the tissue of the chest to check for tissue that feels unusual. "},
        {"lupus", "An autoimmune disease - a disease in which the body attacks its own tissues. Lupus is chronic and can cause harmful inflammation and pain throughout your body. "},

        // M
        {"make gains", "if someone is making gains, they are becoming stronger and more muscular, usually by exercising at the gym or participating in a sport."},
        {"malnourished", "Lacking proper nutrition, caused by not having enough to eat, or not having access to the right kinds of foods. "},
        {"manifestations", "A symptom or sign of an illness, ailment, or condition. "},
        {"marginalized identities", "A category of people who experience relative disadvantages, based on shared characteristics such as race, religion, gender, sexuality or disability. "},
        {"Master's Degree", "A Master's Degree is a degree awarded after additional study following someone receiving a Bachelor's Degree. In this story, Rashad attended additional classes related to his work in the library, and received a Master's Degree. "},
        {"Mayo Clinic", "The Mayo Clinic is a nonprofit medical center with locations around the USA, focused on healthcare, along with medical treatment and education."},
        {"medicine", "Medicine is something you put in or on your body to cure an illness or disease. "},
        {"memes", "Memes are jokes, usually in the form of a picture, that spread and become popular through the internet"},
        {"mental cognition", "The processes involved in gaining knowledge and comprehension. "},
        {"mental health", "A person's psychological and emotional well-being. "},
        {"mental health care", "Health care focused on improving emotional and mental wellness. "},
        {"Mentorship Group", "A community based group designed to share knowledge between members."},
        {"microaggressions", "Everyday verbal or nonverbal actions that are insults. They can be both unintentional or intentional, and they are derogatory or negative messages to target persons based on a part of their identity, such as race or sexuality. "},
        {"mija", "An affectionate term in Spanish, meaning 'my dear' or 'honey'"},
        {"mindfulness", "A practice of becoming aware of our thoughts, feelings, and physical state. In a therapy context, this is accompanied by an attempt to acknowledge and accept those thoughts and feelings, and to stay in the current moment. "},
        {"mindfulness exercises", "A practice of becoming aware of our thoughts, feelings, and physical state. In a therapy context, this is accompanied by an attempt to acknowledge and accept those thoughts and feelings, and to stay in the current moment. "},
        {"minority groups", "A category of people who experience relative disadvantages, based on shared characteristics such as race, religion, gender, sexuality or disability. "},
        {"misty-eyed", "To be misty-eyed means tearing up, about to cry. Generally for sentimental or positive emotional reasons."},
        {"Monitoring", "To collect data regularly to monitor trends. You might monitor your blood pressure or your blood sugar with regular testing. "},
        {"mouth guard", "A device worn at night to protect your teeth and jaw from damage due to grinding your teeth. Also a device worn while playing certain sports to protect your mouth in case of an impact to your face. "},
        {"multi-tasking", "Multi-tasking means doing 2 or more things at once."},
        {"mutual aid", "Mutual aid is when communities come together to support each other and meet each others' needs. "},
        {"my jam", "Means 'a thing I am comfortable with and good at'."},
        {"MyPlate nutritional guidelines", "The MyPlate program is designed to teach kids how to make healthy food choices. It focuses on the five food groups - fruits, vegetables, whole grains, protein foods, and dairy. Visit MyPlate.gov for more information. "},

        // N
        {"name", "When someone gets medicine prescribed for them by a doctor at the pharmacy, their name is usually printed on the bottle."},
        {"nervous", "Mrs. Lee is nervous because she does not know what to expect when going to a doctor."},
        {"neurodivergent", "Differing in mental or neurological function from what is considered 'normal'. "},
        {"nonbinary", "Someone who does not subscribe to conventional gender distinctions, but identifies with both, neither, or a combination of the traits commonly assigned to men or women. "},

        // O
        {"off-brand", "off-brand"},
        {"off-campus housing", "Off-campus housing is a term for the houses students lease if they don't stay in a dorm at school, so not being on campus."},
        {"on the fence", "To be undecided."},
        {"out-of-pocket", "Out-of-Pocket refers to costs for medical care that are not paid for by your insurance plan. To avoid unexpected medical costs, it is important to understand what costs your insurance covers, and what it expects you to cover out-of-pocket. "},
        {"overstimulated", "Someone is overstimulated when their senses are just completely overloaded with information, making it difficult (or sometimes near impossible) to fully process the information you are receiving."},

        // P
        {"pancreas", "The organ that produces insulin. "},
        {"pap smear", "A screening that checks cells collected from the cervix for abnormalities that might indicate cervical cancer. "},
        {"patient portal", "A patient portal is an online tool that allows a patient to securely access healthcare information, including their own medical charts. "},
        {"patrons", "Customers. "},
        {"pediatrician", "A doctor who specializes in treating infants, children, and young adults. "},
        {"period", "A person's period is the part of their menstrual cycle during which they bleed."},
        {"personal reference", "A recommendation from a coworker, teacher, or community leader. In the story, Elisa might as for a professor or member of her community to provide a reference that says that she is reliable and hard-working. "},
        {"PFLAG", "PFLAG is the United States' first and largest organization uniting parents, families, and allies with people who are lesbian, gay, bisexual, transgender, and queer."},
        {"pharmacist", "The pharmacist is the person who works at the pharmacy. They fill prescriptions - orders for medication - submitted by doctors for individuals. "},
        {"pharmacy", "A pharmacy is where someone goes to get medication that has been prescribed for them by a doctor."},
        {"physician", "A physician is a medical doctor who treats disease and illness in people. "},
        {"Planned Parenthood", "Planned Parenthood is a nonprofit organization that provides reproductive health care in the United States and globally."},
        {"postpone", "To push an event back or schedule it for a later date."},
        {"potluck", "A potluck is a type of group meal where everyone brings a dish-- some bring appetizers, some bring main courses, some bring desserts. Then, everyone shares!"},
        {"practitioners", "A person who provides physical or mental health services. "},
        {"pregnancy loss", "The unintentional end of a pregnancy before the successful live birth of a child. If a family has a shared history of pregnancy loss, your doctor might recommend additional screenings. "},
        {"promotion", "A promotion is an increase in status and responsibility. "},
        {"proposal", "A written plan or suggestion. "},
        {"pupusas", "These are a traditional dish from El Salvador. They are a small, round corncake. "},

        // Q
        {"queer", "Queer is an umbrella term for people who are not heterosexual or are not cisgender."},

        // R
        {"Race-Based Traumatic Stress Syndrome", "Racial trauma, or race-based traumatic stress (RBTS), refers to the mental and emotional injury caused by encounters with racial bias and ethnic discrimination, racism, and hate crimes"},
        {"racial stress", "Racial stress is when experiences of racism add up and lead to the decline of emotional, mental and physical health."},
        {"RBTS", "Racial trauma, or race-based traumatic stress (RBTS), refers to the mental and emotional injury caused by encounters with racial bias and ethnic discrimination, racism, and hate crimes"},
        {"reading between the lines", "Reading between the lines is the skill of understanding a situation through context clues and other nuances. "},
        {"referals", "Usually a referal is an official recommendation from your doctor that you be treated by a specialist - a doctor who has specific training to address a healthcare concern you may have. This might need to be communicated to and approved by your insurance company before they will pay for you to see the specialist. "},
        {"Reproductive Health", "Reproductive health is the health and status of your reproductive system and organs"},
        {"reshelve", "To put books back on the shelf in a library"},
        {"resting heart rate", "The number of times per minute your heart beats when you are sitting still. Generally, a lower resting heart rate implies better cardiovascular health, though there are always exceptions. "},
        {"resume", "A resume is a document that lists a person's profesional and academic accomplishments, such as a college degree and work experience.  "},
        {"rheumatoid arthritis", "Rheumatoid arthritis (RA) is a form of arthritis that causes pain, swelling, stiffness and loss of function in your joints."},
        {"right up my alley", "This means that the task is something the person is confident that they can do -- they have the skills to complete this task!"},
        {"roadblock", "A roadblock is an obstacle that makes a task more difficult. "},

        // S
        {"saag paneer", "An Indian dish featuring cooked greens and cubes of paneer, a mild, firm cheese. "},
        {"scheduling", "To make plans or an appointment with someone in the future. "},
        {"sci-fi", "Short for Science Fiction, a genre of fiction centered around imagining what the future might look like, from a technological perspective."},
        {"search engines", "An online website used to search for things. Google is an example of a search engine!"},
        {"self-regulate", "To exert internal control over behaviors, actions, or impulses. "},
        {"sensory activity", "An activity designed to engage one or more of the five senses for enrichment or stimulation. "},
        {"sensory engagement", "Any activity that stimulates one or more of the five senses. "},
        {"sensory needs", "Some people receive input from their five senses differently. They might need accommodations, like quiet spaces or clothing without scratchy seams."},
        {"Sexually Transmitted Diseases", "Sexually Transmitted Disease (STD) or Sexually Transmitted Infection (STI) are interchangeable terms used for infection transmitted through sexual contact, caused by bacteria, viruses, or parasites."},
        {"shared document", "Using online tools like Google Drive, you can generate and share documents with multiple people."},
        {"shifts", "An amount of time someone works in a day."},
        {"shot in the dark", "An action where the outcome is unknown, a risk, or unforeseen."},
        {"sign language interpreter", "A person who translates spoken language to sign language for Deaf audience members. "},
        {"slammed", "If someone is slammed with work, they are extremely busy and have a lot of work to do. "},
        {"sliding scale", "Sliding scale is a method of determining the charge for a service or good based on your ability to pay. "},
        {"social butterfly", "A social butterfly is someone who enjoys socializing with others. They are often perceived as 'flitting' like a butterfly from one social contact to the next. "},
        {"social security number", "A unique identification number issued to a person by the IRS. This is a specific to the United States. "},
        {"Spanish", "Spanish is a language spoken in many European and American Countries."},
        {"specialist", "A doctor who focuses on a specific area of medicine or a group of patients to diagnose, manage, prevent or treat certain types of symptoms and conditions. "},
        {"specialist referrals", "Usually a referal is an official recommendation from your doctor that you be treated by a specialist - a doctor who has specific training to address a healthcare concern you may have. This might need to be communicated to and approved by your insurance company before they will pay for you to see the specialist.  "},
        {"spotter", "A person who keeps watch. In this story, Lila is on a ladder, which might be an unsafe activity. A spotter might hold the ladder to keep it from shifting as she climbs up or down. "},
        {"spouse", "A person's spouse is the person they are married to. "},
        {"stigma", "Disapproval or discrimination against a group based on shared social traits. "},
        {"stimulants", "A category of drugs that increase energy, alertness, mood, or focus. "},
        {"straight", "Someone who is straight is heterosexual, romantically or sexually preferring the opposite gender."},
        {"stress", "Our body's response to pressure. "},
        {"stuck in quicksand", "Means to be in a difficult situation that is hard to navigate or get out of."},
        {"stuffy", "Something that is stuffy is reserved, boring, dull, or dated. Generally, stuffy does not have a positive connotation. "},
        {"succulents", "A type of plant that is characterized by being very hardy and tolerating dry conditions. "},
        {"supplements", "Might include vitamins, minerals, herbs, or other substances that may play a role in health. "},
        {"support groups", "A group of people with common experiences who provide comfort, advice, and encouragement. "},
        {"support system", "A network of people who provide encouragement, comfort, and advice. "},
        {"systemic issues", "A systemic problem is a problem which happens because of flaws in an overall system, rather than a specific person or isolated factor."},

        // T
        {"Tagalog", "Tagalog is a language spoken in the Phillipines."},
        {"tai chi", "A non-competitive system of gentle stretches and exercises."},
        {"telehealth", "Healthcare that is provided remotely over the phone or internet, instead of requiring you to be in a doctor's office. "},
        {"teletherapy", "Therapy that is provided remotely over the phone or internet, instead of requiring you to be in a therapist's office. "},
        {"terrarium", "A container garden in a transparent container, grown indoors. "},
        {"therapist", "A therapist is a licensed mental healthcare professional that leads therapy sessions with patients."},
        {"therapy", "The process of talking to a trained mental health professional about your mental and emotional state, for the purpose of improving mental wellness and treating mental illness. "},
        {"through the grapevine", "Refers to information transmitted through casual conversation or gossip."},
        {"too high", "If someone's blood pressure is too high in the moment, they may be stressed. But long-term high blood pressure may lead to health issues in the future. "},
        {"transfer", "Students can transfer colleges or schools if they wish. In this story, Elisa transferred from her previous college to the state university. "},
        {"transgender", "A person whose sense of personal identity and gender do not correspond with their sex at birth. "},
        {"trying my patience", "If someone is testing your patience, they annoy you so much that it is very difficult for you to stay calm."},
        {"type 2", "Type 2 diabetes is a medical condition in which the body either doesn't produce enough insulin, or it resists insulin. Therefore, the person who has type 2 diabetes must control how much sugar they put into their body."},

        // U
        {"uppers", "Refers stimulants, a category of drugs that increase energy, alterness and mood. "},

        // V
        {"vaccination", "Treatment with a vaccine to keep someone immune against a disease."},
        {"vaccine hesitancy", "A delayed acceptance, or refusal, of vaccinations."},
        {"vasectomy", "A form of birth control in which the supply of sperm is prevented from reaching the semen when someone ejaculates. This is accomplished by cutting or blocking the tubes that carry sperm from where it is produced in the testicles. "},
        {"vegan", "A person who does not consume or use animal products, including, but limited to dairy, meat, fur, honey, leather, or eggs. "},
        {"video chat", "A face-to-face conversation held over the internet via webcams and specific software. "},
        {"vitamins", "Substances our bodies need to develop and function normally."},
        {"volunteering", "Any work that is done for free. Volunteer work can be as informal as helping your neighbors or as formal as helping with or through a nonprofit or community organization."},

        // W
        {"was fire", "'Her selfie was fire!' means that she took a very attractive selfie. "},
        {"water fitness", "Exercises performed in a swimming pool. For people who are able to keep their head above water, water fitness may be safer than exercising on land, and result in less joint pain. "},
        {"weightlifting", "A form of exercise that involves lifting heavy objects to become stronger. Strength training might improve your ability to perform everyday tasks. It also protects bone density, making you less likely to break a bone if you fall. "},
        {"white blood cell count", "White blood cells are part of the immune system. Having either too few or too many white blood cells, relative to the rest of your blood cells, might indicate that something is happening that your doctor should investigate further. "},

        // Y
        {"YA Lit", "YA Lit is an abbreviation for 'Young Adult Literature' is a genre of books, made for teens and those in their early 20's."},
        {"young adult literature", "Young Adult Literature is a genre of books, made for teens and those in their early 20's."},
    };

    public static string getDefinition(string term) {
        return terms[term];
    }

    public static Dictionary<string, string> getDictionary() {
        return terms;
    }

}