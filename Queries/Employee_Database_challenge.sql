-- C H A L L E N G E 
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no=ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;
 
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no ASC, to_date DESC;

SELECT COUNT(title),
	title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name, 
	e.last_name, 
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_elegibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

SELECT COUNT(emp_no)
FROM mentorship_elegibility


SELECT COUNT(emp_no)
FROM unique_titles

SELECT COUNT(emp_no)
FROM mentorship_elegibility

SELECT ut.emp_no,
	ut.first_name, 
	ut.last_name, 
	di.dept_name,
	ut.title
INTO sales_info_summary
FROM unique_titles AS ut
INNER JOIN dept_info AS di
ON (ut.emp_no = di.emp_no)
WHERE dept_name IN('Sales')
ORDER BY ut.emp_no;

SELECT COUNT (emp_no) 
FROM sales_info_summary


SELECT ut.emp_no,
	ut.first_name, 
	ut.last_name, 
	di.dept_name,
	ut.title
-- INTO sales_info_summary
FROM unique_titles AS ut
INNER JOIN dept_info AS di
ON (ut.emp_no = di.emp_no)
WHERE dept_name IN('Sales')
	AND title IN('Manager')
ORDER BY ut.emp_no;
