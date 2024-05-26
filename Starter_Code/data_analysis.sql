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

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.







