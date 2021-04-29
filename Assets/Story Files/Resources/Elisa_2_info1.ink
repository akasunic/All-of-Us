VAR player_name = ""
VAR notification = ""
VAR new_contact = ""
VAR new_quest = ""

-> intro

===intro===

Mrcalindas?Smiling "Hello {player_name}, what brings you to Health Clinic?"

*My friend lost the physical copy of her immunization records- I'm trying to help her figure out how to get another copy. 
    -> explain

===explain===

Mrcalindas?Smiling "Oh, that's no problem. How old is she?"

*I think she's 19.
    -> highSchool

===highSchool===

Mrcalindas?Smiling "Well, if she graduated high school within the last two years, her high school might still have her records on file. Or her current school, too, if she ever sent them there."

~ notification = "Mrcalindas_Day 2_You can sometimes find vaccination records at previous schools_Elisa2"
# notification Mrcalindas_Day 2_You can sometimes find vaccination records at previous schools_Elisa2

*That's great! She'll be so relieved. 
    -> other

===other===

Mrcalindas?Smiling "Well, that's assuming that they have them, anyway. But even if they stopped keeping her records, she could always check her online health portal."

~ notification = "Mrcalindas_Day 2_You can find vaccination records in online health portals_Elisa2"
# notification Mrcalindas_Day 2_You can find vaccination records in online health portals_Elisa2

*I don't actually know if she has an online health portal.
    ->notOnline

===notOnline===

Mrcalindas?Smiling "It would depend on her care provider, some offer an online system where patients can check records and view appointments."
Mrcalindas?Smiling "If not, though, she could go back to her old physician and ask for a physical copy."

~ notification = "Mrcalindas_Day 2_You can find vaccination records at previous physicians' offices_Elisa2"
# notification Mrcalindas_Day 2_You can find vaccination records at previous physicians' offices_Elisa2
~ notification = "Mrcalindas_Day 2_Not all doctors provide online records"
# notification Mrcalindas_Day 2_Not all doctors provide online records

*Would they definitely have them? 
    -> noGuarantee

===noGuarantee===

Mrcalindas?Neutral "It's a good bet, but there's no guarantee. In the worst case, though, she could also get the required vaccines again or get a blood test done to see what she's immune to."
Mrcalindas?Neutral "Those can be expensive depending on insurance, though."

~ notification = "Mrcalindas_Day 2_You can always get revaccinated, but it might be expensive_Elisa2"
# notification Mrcalindas_Day 2_You can always get revaccinated, but it might be expensive_Elisa2
~ notification = "Mrcalindas_Day 2_Blood tests can check what you're immune to"
# notification Mrcalindas_Day 2_Blood tests can check what you're immune to

*I'm not sure what insurance she has- are there any low-cost options for getting revaccinated?
    ->lowCostOptions
    
===lowCostOptions===

Mrcalindas?Smiling "Sometimes free clinics provide free vaccines to people who need them."
Mrcalindas?Smiling "She could also try a pharmacy- I would tell her to research the pharmacy before she goes, but in general, getting a vaccine from a pharmacist can be a cheaper option."

~ notification = "Mrcalindas_Day 2_Free clinics and pharmacies can be a less expensive place to get vaccinated_Elisa2"
# notification Mrcalindas_Day 2_Free clinics and pharmacies can be a less expensive place to get vaccinated_Elisa2

*Got it. Which vaccines would she need to get? 
    ->whichVac

===whichVac===

Mrcalindas?Smiling "Hopefully only the ones she'd need for college- things like Meningitis, Hepatitis, HPV, or any others that she may not have gotten yet."
Mrcalindas?Smiling "She can find out what vaccines she'd need by looking it up on her school's website."

~ notification = "Mrcalindas_Day 2_You may need Meningitis, Hepatitis, or HPV vaccines"
# notification Mrcalindas_Day 2_You may need Meningitis, Hepatitis, or HPV vaccines

*Where on the website do you think it would be?
    ->searchTerms
    
===searchTerms===

Mrcalindas?Smiling "Well, she should look if there's a Health Services tab, or else search for one on the website."
Mrcalindas?Smiling "From there, she'd probably want to search for "new students, immunizations and vaccines.""
Mrcalindas?Smiling "There should be a section where it explains what vaccines you have to show you've received, and when the due date for the records is."

*Thanks, I'll let her know! 
    ->seguetoEnd
    
===seguetoEnd===

Mrcalindas?Smiling "You're welcome! See you later, {player_name}."

*See you! 
    -> END


