--50 Questions on SELECT, WHERE, ORDER BY, DISTINCT :-

--Select all columns from the employees table.
select *from employees
--Display only name and salary of all employees.
select name, salary
from employees
--Show all employees who work in the IT department.
select name from employees 
where department = 'IT'

--Find employees whose salary is greater than 30,000.
select * from employees 
where salary > 30000

--Display employees who live in Delhi.
select * from employees where city = 'Delhi'

--Select employees with age less than 25.
select * from employees where age < 25

--Show all employees ordered by salary (ascending).
select *from employees order by salary asc

--Show all employees ordered by age (descending).
select *from employees order by age desc

--Display distinct departments from the table.
select distinct department from employees

--Display distinct cities where employees live.
select distinct city from employees

--Find employees whose gender is Female.
select * from employees where gender = 'Female'

--Select employees earning exactly 40,000.
select * from employees where salary = 40000

--Display employee names ordered alphabetically.
select *from employees order by name asc

--Show employees ordered by joining date.
select * from employees order by joininf_date asc

--Display distinct genders from the table.
select distinct gender from employees

--⚙️ INTERMEDIATE LEVEL (16–35)
select * from employees

--Find employees from IT department earning more than 40,000.
select *from employees 
where department = 'IT' and
salary > 40000

--Display employees whose age is between 25 and 35.
select * from employees where age between 25 and 35

--Show employees not working in the HR department.
select * from employees where department <> 'HR' 

--Find employees living in Mumbai or Pune.
select * from employees 
where city = 'Mumbai' or
city = 'Pune'

--Display employees ordered by salary (highest first).
select * from employees order by salary desc

--Show distinct job departments ordered alphabetically.
select distinct department from employees order by department asc

--Find employees whose salary is less than or equal to 25,000.
select * from employees where salary <= 25000
--Display employees who joined after 2021-01-01.
select * from employees where joininf_date > '2021-01-01'

select * from employees

--Show employees ordered by department and then salary.
select *from employees order by department asc, salary asc 

--Find employees whose age is not equal to 30.
select * from employees where age <> 30

--Display distinct cities ordered in descending order.
select distinct city from employees order by city asc

--Show employees from Finance department ordered by age.
select * from employees where department = 'Finance' order by age asc

--Display employees whose salary is between 20,000 and 50,000.
select * from employees where salary between 20000 and 50000

--Find employees whose city is not Delhi.
select * from employees where city <> 'Delhi'

--Show top-paid employees by ordering salary (no LIMIT yet).
select * from employees order by salary desc

--Display employees whose age is greater than 40.
--Do yourself

--Show distinct salary values from the table.
select distinct salary from employees

--Display employees ordered by joining date (latest first).
select *from employees order by  joininf_date desc

--Find employees working in IT or Finance department.
--Do yourself
--Display employees sorted by city and name.
select * from employees order by city, name

--🔥 ADVANCED LEVEL (36–50)

--Find employees from IT department living in Bangalore.
select *from employees 
where department = 'IT' 
and city = 'Banglore' 

--Display employees whose salary is greater than 30,000 and age less than 35.
select * from employees 
where salary between 30000 and 35000

--Show employees who are Male and earning more than 50,000.
select * from employees 
where gender = 'Male' and salary > 50000

--Display distinct combinations of department and city.
select distinct department, city 
from employees

--Find employees who joined before 2020 and earn more than 40,000.
select * from employees
where joininf_date < '2020-01-01' and salary > 40000

--Display employees ordered by department (A–Z) and salary (high to low).
select *from employees 
order by department asc , salary desc

--Find employees whose city is Delhi, Mumbai, or Chennai.
select * from employees 
where city = 'Delhi'or city = 'Mumbai' or city ='Chennai'

--Show employees who are not from IT and not from HR.
select *from employees 
where department <> 'IT'and department <> 'HR'

--Display employees whose salary is not between 20,000 and 40,000.
select *from employees 
where salary  not between 20000 and 40000

--Show employees ordered by age, then by name.
select *from employees
order by age desc , name desc

--Display distinct employee ages ordered descending.
select distinct age from employees
order by age desc

--Find employees with salary ≥ 35,000 and city ≠ Delhi.
select *from employees where 
salary >= 35000 and city <> 'Delhi'

--Display employees who joined in the year 2022.
select *from employees 
where joininf_date  between '2022-01-01' and '2022-12-31'

--Show employees whose department is IT and salary is between 30,000 and 60,000.
select *from employees 
where department = 'IT' and salary between 30000 and 60000

--Display employees sorted by city (A–Z), age (youngest first), salary (highest first).
select *from employees 
order by city asc, age asc, salary desc
