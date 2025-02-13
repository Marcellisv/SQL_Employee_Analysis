CREATE TABLE departments(
    dept_no VARCHAR not null,
    dept_name VARCHAR not null,
	CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no")
);

select * from departments;

CREATE TABLE "employees" (
    "emp_no" INT   not null,
    "birth_date" DATE   not null,
    "first_name" VARCHAR   not null,
    "last_name" VARCHAR   not null,
    "sex" VARCHAR  not null,
    "hire_date" DATE   not null,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no")
);
		
select * from employees;

CREATE TABLE dept_emp(
    emp_no INT not null,
    dept_no VARCHAR not null,
	from_date DATE not null,
    to_date DATE not null
);

select * from dept_emp;

CREATE TABLE dept_manager(
    dept_no VARCHAR not null,
    emp_no INT not null,
	from_date DATE not null,
    to_date DATE not null
);

select * from dept_manager;

CREATE TABLE salaries(
    emp_no INT not null,
    salary INT not null,
	from_date DATE not null,
    to_date DATE not null
);

select * from salaries;

CREATE TABLE titles(
    title_id VARCHAR not null,
    title VARCHAR not null,
	from_date DATE not null,
    to_date DATE not null
);

select * from titles;


---------------------------------------------------------------------------------
-Queries 
--1


Select employees.emp_no,
employees.first_name,
employees.last_name,
employees.sex,
salaries.salary
from employees join salaries On employees.emp_no = salaries.emp_no ;

--2
Select employees.first_name,
employees.last_name,
employees.hire_date
from employees
Where hire_date Between '1986-01-01' and '1987-01-01';

--3

Select departments.dept_name,
departments.dept_no,
dept_manager.emp_no,
employees.last_name,
employees.first_name
from departments 
join dept_manager on departments.dept_no = dept_manager.dept_no
join employees on dept_manager.emp_no = employees.emp_no;
;

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
from employees
where first_name = 'Hercules' 
and last_name like 'B%'

--6

Select dept_emp.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from dept_emp
join employees on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

--7

Select dept_emp.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
from dept_emp
join employees on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

--8
Select last_name, Count(last_name) as frequecy
from employees
group by last_name
order by count(last_name) Desc;
