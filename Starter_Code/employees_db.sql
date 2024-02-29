-- Drop table if exists, create table
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

SELECT *
FROM departments;
-- -------------------------------------------------------

-- Drop table if exists, create table

DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR
);

SELECT *
FROM dept_emp;

-- -------------------------------------------------------

-- Drop table if exists, create table
DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no VARCHAR 
);

SELECT *
FROM dept_manager;
-- -------------------------------------------------------

-- Drop table if exists, create table
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
	emp_no INT,
	emp_title VARCHAR, --THIS WILL BE A FOREIGN KEY OR COMPOSITE
	birth_date DATE, --CORRECT TYPE?
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE --CORRECT TYPE?
);

SELECT *
FROM employees;
-- -------------------------------------------------------

-- Drop table if exists, create table
DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries (
	emp_no INT,
	salary NUMERIC
);

SELECT *
FROM salaries;
-- -------------------------------------------------------

-- Drop table if exists, create table
DROP TABLE IF EXISTS titles;
CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
);

SELECT *
FROM titles;