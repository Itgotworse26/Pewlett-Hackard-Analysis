# Pewlett-Hackard-Analysis
Practice and Challenge Assignment for Module 7 

Now that Bobby has proven his SQL chops, his manager has given both of you two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, you’ll write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.


## Overview of the analysis
The purpose of this analysis is to assess the size of the “silver tsunami”; the bloc of current employees reaching retirement age, and determine the trajectory of a strategy to make sure that the impact of the retirements are not detrimental to Pewlett-Hackard.


## Results
According to the retiring_titles query, the breakdown of the “silver tsunami” by position are as follows:

### Breakdown
* 29414 senior engineers    
* 28254 senior staff    
* 14222 engineers    
* 12243 staff    
* 4502 technique leaders    
* 1761 assistant engineers     
* 2 managers    

### Brief Highlights
* The role most affected by the “silver tsunami” is the senior engineer. 
* The role with the least amount of potential retirees is the manager. 
* Except for the manager role, every position has more than 1000 potential retirees. 
* Staff, engineers, senior staff, and senior engineers are positions that are affected with more than 10000 + potential retirees. 


## Summary
As a follow-up for additional data, the query of mentorship_titles for a breakdown of employees eligible for mentorship shows this breakdown in count of positions of eligible employees:

### Breakdown
* 568 senior staff  
* 501 engineers    
* 169 senior engineers    
* 156 staff    
* 78 assistant engineers
* 77 technique leaders    

### Brief Highlights
* The role with the most amount of eligible mentees is senior staff. 
* The role with the least amount of eligible mentees is the technique leader. 
* There are no managers who are eligible for mentorship.
* No position has more than 600 employees eligible for mentorship.

A query to order the employees table by birthdate in descending order found that these are the 10 youngest employees:

![Top 10 Youngest Employees](https://github.com/Itgotworse26/Pewlett-Hackard-Analysis/blob/main/Data/Ten_Youngest_Employees.PNG)

Just from looking at this breakdown, a one-on-one mentorship program would be impractical due to the massive size gap between retiring staff and employees eligible for mentorship. Just by looking at the role of senior engineer; there are only 169 eligible senior engineers who would have to replace 29414 senior engineers. 

The number of retiring senior engineers, senior staff, staff, and engineers represent a massive loss of manpower, to say nothing of the loss in institional, cultural, and practical experience. 

The reason for this wave is because the employees of Pewlett-Hackard trend towards older; a cursory search of the employees database by birthdate shows that the youngest employee is born in 1965, meaning that the youngest employee in the company is 56 years old. 

Attempting a one-on-one replacement for retiring employees would require thousands of new hires for each affected role as there are literally not enough eligible current employees. If Pewlett-Hackard wants to ride out the “silver tsunami”, they should start looking at a massive hiring wave. The fact that there are thousands of positions that need to be filled means that Pewlett-Hackard is in a position to start attracting new hires. These new hires should especially be geared towards filling the staff, senior staff, engineer, and senior engineer roles. These are the four positions that will be most affected by the “silver tsunami” and they would represent the building block of the company. 

Another question Pewlett-Hackard should be asking is what direction the mentorship program is going in. At face-value, the mentorship woould be from retiring employees to their prospective successors. However, as pointed out, the number of retirees far outpace the number of eligible mentees. As a result, Pewlett-Hackard should consider expanding the mentorship program to include current employees mentoring incoming hires or even looking at the possibility of allowing new hires to take on mentorship duties. The last point could even be used as part of the hiring wave; pushing the opportunity for career and personal development to attract new hires. 