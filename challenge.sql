--Number of [titles] Retiring
SELECT 
	s.emp_no, 
	s.salary, 
	s.from_date, 
	title, 
	first_name, 
	last_name
FROM salaries AS s
INNER JOIN employees AS e ON s.emp_no = e.emp_no	
INNER JOIN titles AS t ON s.emp_no = t.emp_no
AND s.from_date = t.from_date
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
---------------------------------------------------------------------------
--Only Most Recent Titles
SELECT 
	title, 
	count(title)
FROM salaries AS s
INNER JOIN employees AS e ON s.emp_no = e.emp_no	
INNER JOIN titles AS t ON s.emp_no = t.emp_no
AND s.from_date = t.from_date
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
GROUP BY title;
------------------------------------------------------------------------------
-----ready for a mentor
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	title,
	from_date,
	to_date
FROM employees as e
LEFT JOIN titles as t
ON e.emp_no = t.emp_no
WHERE t.to_date = ('9999-01-01')
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
order by emp_no;
-----------------------------------------------------------------------------------

       