-- Check that tables/data were imported correctly.
select *
from departments;

select *
from dept_emp;

select *
from dept_manager;

select *
from employees;

select *
from salaries;

select *
from titles;

-- -----------------------------------------------------------------

-- 1. List the employee number, last name, first name, sex, and salary of each employee
-- Join the tables employees and salaries
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON salaries.emp_no=employees.emp_no;

-- -----------------------------------------------------------------

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986
-- Create view for hires in 1986
-- Xpert Learning Assistant provided EXTRACT(YEAR FROM ..)
CREATE VIEW emp_1986 AS
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- View the employees hired in 1986
SELECT *
FROM emp_1986;

-- Drop view
DROP VIEW emp_1986;

-- ------------------------------------------------------------------

-- 3. List the manager of each department along with their department number, department name, employee number, 
-- last name, and first name.
-- Join department_managers, departments and employees
SELECT dm.dept_no,
d.dept_name,
dm.emp_no,
e.last_name,
e.first_name
FROM dept_manager as dm
INNER JOIN departments as d ON
dm.dept_no = d.dept_no
INNER JOIN employees as e ON
dm.emp_no = e.emp_no;

-- ------------------------------------------------------------------

-- 4. List the department number for each employee along with that employee’s employee number,
-- last name, first name, and department name
-- Join departments, dept_emp, and employees
SELECT d.dept_no,
d.dept_name,
de.emp_no,
e.last_name,
e.first_name
FROM departments as d
INNER JOIN dept_emp as de 
ON d.dept_no = de.dept_no
INNER JOIN employees as e
ON de.emp_no = e.emp_no;

-- ------------------------------------------------------------------

-- 5. List first name, last name, and sex of each employee whose first name is Hercules 
-- and whose last name begins with the letter B
-- Create a view with just the first/last names and sex from the employees table
CREATE VIEW hercules AS
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules';

-- Make sure that the view is successful
SELECT *
FROM hercules;

-- Use LIKE and wildcard function to filter for last names beginning with B
SELECT *
FROM hercules
WHERE last_name LIKE 'B%';

-- Drop the hercules view
DROP VIEW hercules;

-- ------------------------------------------------------------------

-- 6. List each employee in the Sales department, including their employee number, last name, and first name
-- Create view dept_emps by joining departments, dept_emp, and employees
CREATE VIEW dept_emps AS(
SELECT d.dept_no,
d.dept_name,
de.emp_no,
e.last_name,
e.first_name
FROM departments as d
INNER JOIN dept_emp as de 
ON d.dept_no = de.dept_no
INNER JOIN employees as e
ON de.emp_no = e.emp_no);

-- Get the list of employees in Sales 
SELECT *
FROM dept_emps
WHERE dept_name = 'Sales';

-- ------------------------------------------------------------------

-- 7. List each employee in the Sales and Development departments, including their employee number, last name,
-- first name, and department name
-- Use the dept_emps view from above.

SELECT *
FROM dept_emps
WHERE dept_name = 'Sales' 
OR dept_name = 'Development';

DROP VIEW dept_emps;

-- ------------------------------------------------------------------

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
-- Help from Xpert Learning Assistant
SELECT last_name, COUNT(last_name) as "Frequency"
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;







