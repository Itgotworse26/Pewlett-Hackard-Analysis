-- Part 1

-- 1. Retrieve the emp_no, first_name, and last_name columns from the Employees table.
-- 2. Retrieve the title, from_date, and to_date columns from the Titles table.
-- 3. Create a new table using the INTO clause.
-- 4. Join both tables on the primary key.
-- 5. Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
-- 6. Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- 7. Before you export your table, confirm that it looks like the image on the module instructions:

SELECT e.emp_no, 
    e.first_name,
    e.last_name,
    t.title,
    t.from_date,
    t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

-- Check retirement_titles to confirm Step 7
SELECT * FROM retirement_titles

-- 8. Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.
-- 9. Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
---  a. These columns will be in the new table that will hold the most recent title of each employee.
-- 10. Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
-- 11. Create a Unique Titles table using the INTO clause.
-- 12. Sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title.
-- 13. Export the Unique Titles table as unique_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- 14. Before you export your table, confirm that it looks like the image on the module instructions:

SELECT DISTINCT ON (rt.emp_no) 
    rt.emp_no,
    rt.first_name,
    rt.last_name,
    rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY emp_no, to_date DESC;

-- Check unique_titles to confirm Step 14
SELECT * FROM unique_titles


-- 15. Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
-- 16. First, retrieve the number of titles from the Unique Titles table.
-- 17. Then, create a Retiring Titles table to hold the required information.
-- 18. Group the table by title, then sort the count column in descending order.
-- 19. Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- 20. Before you export your table, confirm that it looks like the image on the module instructions:

SELECT COUNT(ut.title) as count, title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY count DESC;

-- Check retiring_titles to confirm Step 29
SELECT * FROM retiring_titles


-- Part 2

-- 1. Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
-- 2. Retrieve the from_date and to_date columns from the Department Employee table.
-- 3. Retrieve the title column from the Titles table.
-- 4. Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
-- 5. Create a new table using the INTO clause.
-- 6. Join the Employees and the Department Employee tables on the primary key.
-- 7. Join the Employees and the Titles tables on the primary key.
-- 8. Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965.
-- 9. Order the table by the employee number.
-- 10. Export the Mentorship Eligibility table as mentorship_eligibilty.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- 11. Before you export your table, confirm that it looks like the image on the module instructions:

SELECT DISTINCT ON (e.emp_no) e.emp_no, 
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') AND 
	  (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- Check mentorship_eligibilty to confirm Step 11
SELECT * FROM mentorship_eligibilty


-- Extra 1: Write a query to retrieve the number of employees by their most recent job title who are eligible for mentorship 

SELECT COUNT(me.title) as count, title
INTO mentorship_titles
FROM mentorship_eligibilty as me
GROUP BY title
ORDER BY count DESC;

-- Check mentorship_eligibilty to confirm Extra 1
SELECT * FROM mentorship_titles

-- Extra 2: Write a query to order the employee table by birthdate. 
SELECT * FROM employees
ORDER BY birth_date DESC;