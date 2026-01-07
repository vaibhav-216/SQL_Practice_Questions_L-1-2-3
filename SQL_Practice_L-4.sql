create table employees(
emp_id serial primary key not null,
emp_name varchar(50),
department varchar(30),
salary int,
joining_date date
);

INSERT INTO employees VALUES
(1, 'Amit', 'IT', 60000, '2021-01-10'),
(2, 'Rohit', 'IT', 50000, '2022-03-15'),
(3, 'Neha', 'IT', 60000, '2020-07-20'),
(4, 'Pooja', 'HR', 45000, '2021-06-11'),
(5, 'Ankit', 'HR', 55000, '2019-08-25'),
(6, 'Suman', 'HR', 55000, '2023-02-01'),
(7, 'Raj', 'Finance', 70000, '2018-04-17'),
(8, 'Kiran', 'Finance', 65000, '2020-12-09'),
(9, 'Meena', 'Finance', 70000, '2022-09-30');

--WINDOW FUNCTION PRACTICE QUESETIONS :-

--Q1) Assign row number to employees based on salary (highest first)
select emp_name, department, salary,
row_number() over (order by salary desc) as row_num
from employees

--Q2) Rank employees within each department by salary (highest first)
select emp_name, department, salary,
rank() over(partition by department order by salary desc) as dept_rank
from employees

--Q3) Show department-wise average salary for every employee (Do not use group)
select emp_name, department, salary,
avg(salary) over (partition by department) as avg_dept_salary
from employees

--Q4) Find top 2nd highest paid employeees in each department
select emp_name, department, salary from 
(select emp_name, department, salary,
dense_rank ()over (partition by department order by salary desc) as dr
from employees ) t
where dr <= 2;

--Q5) Find employees who have same salary in the same department
select emp_name, department, salary
from ( select emp_name, department, salary,
count(*) over (partition by department, salary) as cnt
from employees) t
where cnt > 1

)

--CTE PRACTICE :-

--Q6) Create a CTE to find employees whose salary is above overall average salary
with avg_salary as (
select avg(salary) as avg_sal
from employees
)
select * from employees
where salary > (select avg_sal from avg_salary)

--Q7) Using CTE, find highest salary from each department
with dept_max as (
select department, max(salary) as max_salary
from employees
group by department
)
select e.emp_name, e.department, e.salary
from employees e
join dept_max d
on e.department = d.department
and e.salary = d.max_salary

--Q8) Create a CTE that adds salary rank for each department (and display only rank = 1)
with ranked_emps as (
select emp_name, department, salary,
rank() over (partition by department order by salary desc) as rnk
from employees)
select * from ranked_emps
where rnk = 1
)

--Q9) Using CTE, find employees who joined before 2021 (and salary>50k)
with filtered_emps as(
select * from employees
where joining_date < '2021-01-01'
)
select * from filtered_emps
where salary > 50000

--Q10) Using CTE, calculate department-wise total salary and display departments where 
-- total salary>100000
with dept_salary as(
select department, sum(salary) as total_salary
from employees 
group by department
)
select * from dept_salary
where total_salary > 100000