--5 Questions on SubQueries :-

--Q1) Find employees whose salary is > avg. salary
select emp_name, department, salary from employees
where salary > (select avg(salary)
               from employees);

--Q2) Find employees who earn the highest salary in each department
select emp_name, salary, department
from employees e
where salary = (select max(salary) from employees
                where department = e.department)

--Q3) Find employees whose salary is equal to the minium salary in the company
select emp_name, department, salary
from employees 
where salary = (select min(salary) 
                from employees)
);

--Q4) Find employees who work in departments where the avg salary is > 55k
select emp_name, department, salary
from employees
where department in (
select department from employees
group by department
having avg(salary) > 55000
)

--Q5) Find the 2nd highest salary in company using a subquery
select max(salary) as second_highest_sal
from employees
where salary < (select max(salary) from employees
)