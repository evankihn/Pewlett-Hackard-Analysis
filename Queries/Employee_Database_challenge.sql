-- CHALLENGE CODE 

# DELIVERABLE 1 
SELECT e.emp_no,
e.first_name,
e.last_name, 
ti.title,
de.from_date,
de.to_date
-- INTO retirment_titles
FROM employees as e
INNER JOIN titles as ti 
ON (e.emp_no = ti.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER by e.emp_no;

SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_tables
FROM retirment_titles as rt
ORDER BY emp_no ASC, to_date DESC;

SELECT COUNT(ut.emp_no),ut.title
INTO retiring_titles
FROM unique_tables as ut
GROUP BY title
ORDER BY COUNT(title) DESC;
ORDER BY cf.emp_no, cf.to_date DESC;

# DELIVERABLE 2

SELECT DISTINCT ON(e.emp_no) e.emp_no, 
    e.first_name, 
    e.last_name, 
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
INTO mentorship_eligibilty
FROM employees as e
Left outer Join dept_emp as de
ON (e.emp_no = de.emp_no)
Left outer Join titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;