CREATE TABLE departments(
    dept_no VARCHAR not null,
    dept_name VARCHAR not null
);

select * from departments;


CREATE TABLE employees_data(
    emp_no Int not null ,
    emp_title VARCHAR not null,
    birth_date DATE not null,
    first_name VARCHAR not null,
    last_name VARCHAR not null,
    sex VARCHAR not null,
    hire_date DATE not null
);

select * from employees_data;

CREATE TABLE dept_emp(
    emp_no INT not null,
    dept_no VARCHAR not null
);

select * from dept_emp;

CREATE TABLE dept_manager(
    dept_no VARCHAR not null,
    emp_no INT not null
);

select * from dept_manager;

CREATE TABLE salaries(
    emp_no INT not null,
    salary INT not null
	
);

select * from salaries;

CREATE TABLE titles(
    title_id VARCHAR not null,
    title VARCHAR not null
);

select * from titles;