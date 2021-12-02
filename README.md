# Pewlett-Hackard-Analysis
Practice and Challenge Assignment for Module 7 

Now that Bobby has proven his SQL chops, his manager has given both of you two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, you’ll write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

## Overview of the analysis
The purpose of this analysis is to assess the size of the “silver tsunami”; the bloc of current employees reaching retirement age, and determine the trajectory of a strategy to make sure that the impact of the retirements are not detrimental to Pewlett-Hackard.

## Results
According to the retiring_titles query, the breakdown of the “silver tsunami” by position are as follows:

* 29414 senior engineers    
* 28254 senior staff    
* 14222 engineers    
* 12243 staff    
* 4502 technique leaders    
* 1761 assistant engineers     
* 2 managers    

The role most affected by the “silver tsunami” is the senior engineer. The role with the least amount of potential retirees is the manager.


Meanwhile, the breakdown of employees eligible for mentorship according to the mentorship_titles query are as follows:

* 568 senior staff  
* 501 engineers    
* 169 senior engineers    
* 156 staff    
* 78 assistant engineers
* 77 technique leaders    

The role with the most amount of eligible mentees is senior staff. The role with the least amount of eligible mentees is the technique leader.


A query to order the employees table by birthdate in descending order found that these are the 10 youngest employees:

![Top 10 Youngest Employees](https://github.com/Itgotworse26/Pewlett-Hackard-Analysis/blob/main/Data/Ten_Youngest_Employees.PNG)

## Summary
Just from looking at this breakdown, a one-on-one mentorship program would be impratical due to the massive size gap between retiring staff and employees eligible for mentorship. Just by looking at the role of senior engineer; there are only 169 eligible senior engineers who would have to replace 29414 senior engineers. 

The reason for this gap is simply because the employees of Pewlett-Hackard trend towards older; a cursory search of the employees database by birthdate 