-- Create table with employees ready to retire and their title
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles
ON e.emp_no = titles.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Create retiring_titles table
SELECT COUNT(*) AS emp_count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY (emp_count) DESC;

-- Create mentorship eligibility table
SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	titles.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles
ON (e.emp_no = titles.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Count the number of titles of employees in the mentorship elibility tables
SELECT COUNT(*) AS emp_count, title
INTO current_emp_titles
FROM mentorship_eligibility
GROUP BY title
ORDER BY emp_count DESC;

SELECT * FROM current_emp_titles;

-- Create table with employees eligible for retiring that were hired in 1985
SELECT ut.emp_no,
	ut.first_name,
	ut.last_name,
	ut.title,
	e.hire_date
INTO high_experience_emp
FROM unique_titles as ut
INNER JOIN employees as e
ON (ut.emp_no = e.emp_no)
WHERE (e.hire_date BETWEEN '1985-01-01' AND '1985-12-31')
ORDER BY ut.emp_no;

-- Count number of employees eligible for retiring that were hired in 1985
SELECT COUNT(*) AS emp_count, title
INTO high_experience_emp_count
FROM high_experience_emp
GROUP BY title
ORDER BY emp_count DESC;
