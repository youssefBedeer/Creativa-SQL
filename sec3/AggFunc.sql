use company;

-- show the  top 2 emplyees with the highest salaries
select name, salary from employee ORDER BY salary Desc LIMIT 2;

-- Find the average salary of all employees 
select avg(salary) from employee;

-- count how many employees are in each city 
select city, count(id) from employee GROUP BY city;

-- show the maximum salary per gender 
select gender, max(salary) from employee WHERE id != 4 GROUP BY gender;

-- list the cities where the total salary is greater than 40000
select city, sum(salary) from employee GROUP BY city HAVING sum(salary) > 40000;