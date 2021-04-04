
-- CHALLENGE DELIVERABLE 1 code

-- Challenge table 1 - retirement_titles
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;


-- Challenge table 2 - unique_titles
-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, 
	first_name, 
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY  emp_no, to_date DESC;

SELECT * FROM unique_titles;


-- Challenge table 3 - retiring_titles
SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY  title
ORDER BY COUNT(emp_no) DESC;

SELECT * FROM retiring_titles;


-- CHALLENGE DELIVERABLE 2 code

SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (de.to_date = ('9999-01-01'))
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no, ti.to_date DESC;

SELECT * FROM mentorship_eligibility;



-- Additional queries 
-- create a table showing the number of potential mentors available by current title
SELECT COUNT(emp_no), title 
INTO mentors_by_title
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY COUNT (emp_no) DESC;

SELECT * FROM mentors_by_title