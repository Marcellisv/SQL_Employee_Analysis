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


---------------------------------------------------------------------------------
-Queries 
--1


Select employees_data.emp_no,
employees_data.first_name,
employees_data.last_name,
employees_data.sex,
salaries.salary
from employees_data join salaries On employees_data.emp_no = salaries.emp_no ;

--2

Select dept_manager.dept_no,
dept_manager.emp_no,
employees_data.last_name,
employees_data.first_name
from dept_manager join employees_data on dept_manager.emp_no = employees_data.emp_no;

--3
--No hire Date data in csv file??? for question 3---


--4
Select dept_emp.emp_no,
employees_data.last_name,
employees_data.first_name,
departments.dept_name
from dept_emp
join employees_data on dept_emp.emp_no = employees_data.emp_no
join departments on dept_emp.dept_no = departments.dept_no;

--5

select last_name,
first_name,
sex
from employees_data
where first_name = 'Hercules' 
and last_name like 'B%'

--6

Select dept_emp.emp_no,
employees_data.last_name,
employees_data.first_name,
departments.dept_name
from dept_emp
join employees_data on dept_emp.emp_no = employees_data.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

--7

Select dept_emp.emp_no,
employees_data.last_name,
employees_data.first_name,
departments.dept_name
from dept_emp
join employees_data on dept_emp.emp_no = employees_data.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

--8
Select last_name, Count(last_name) as frequecy
from employees_data 
group by last_name
order by count(last_name) Desc;




