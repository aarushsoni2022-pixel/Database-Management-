CREATE DATABASE IT;
use IT;

# Find the average salary of employees in each department
select department, avg(salary) as avg_salary from IT group by department;


#Find the total number of employees hired after 2019. 
select count(*) as total_employees from IT where hire_date > '31-12-2019';


#List the departments and the total salary of all employees in each department, ordered by the total salary. 
select department, SUM(salary) AS total_salary FROM IT GROUP BY department ORDER BY total_salary DESC;


#Find the highest salary in the Finance department. 
select MAX(salary) AS highest_salary FROM IT WHERE department = 'Finance';


#Get the top 3 highest-paid employees. 
select * FROM IT ORDER BY salary DESC LIMIT 3;


#Find the department with the minimum average salary. 
select department, AVG(salary) AS avg_salary FROM IT GROUP BY department ORDER BY avg_salary ASC LIMIT 1;


# Display the total number of employees in each department, ordered by the number of employees. 
select department, COUNT(*) AS total_employees FROM IT GROUP BY department ORDER BY total_employees DESC;


# Find the average salary of employees who were hired before 2020. 
select AVG(salary) AS avg_salary FROM IT WHERE hire_date < '2020-01-01';


#List the names of employees in the IT department ordered by hire date, with the most recently hired employees first. 
select first_name, last_name, hire_date FROM IT WHERE department = 'IT' ORDER BY hire_date DESC;


#Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary. 
select first_name, last_name, salary FROM IT WHERE hire_date > '2019-01-01' ORDER BY salary DESC;


#Get the employee with the lowest salary in the HR department.
select * FROM IT WHERE department = 'HR' ORDER BY salary ASC LIMIT 1;


#Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.  
select department, SUM(salary) AS total_salary FROM IT GROUP BY department ORDER BY total_salary DESC LIMIT 2;


#List all employees hired after 2018, ordered by salary, and show only the first 4 employees.
select * FROM IT WHERE hire_date > '2018-12-31' ORDER BY salary DESC LIMIT 4;


#Find the highest salary in the IT department, but limit the results to the top 1 result. 
select * FROM IT WHERE department = 'IT'ORDER BY salary DESC LIMIT 1;


#Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.
SELECT department, AVG(salary) AS avg_salary FROM IT GROUP BY department HAVING AVG(salary) > 60000;