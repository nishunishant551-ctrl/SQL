create database employee_3;
use employee_3;
create table employees_4(emp_id INT PRIMARY KEY AUTO_INCREMENT, 
name_1 VARCHAR(50), 
department VARCHAR(30), 
experience INT, 
salary INT, 
joining_date DATE,
bonus int 
);
INSERT INTO employees_4 (emp_id,name_1, department, experience, salary, joining_date,bonus) VALUES (01,'Amit','IT', 6, 60000, '2018-07-10',1000), 
(02,'Priya', 'HR', 3, 40000, '2021-05-14',3000),
(03,'Ravi', 'Sales', 8, 75000,'2016-11-23',4000), 
(04,'Sneha', 'IT', 2, 35000, '2023-02-18',54000), 
(05,'Karan', 'Finance', 10, 90000, '2014-04-05',2000),
(06,'Tina', 'Sales', 5, 55000, '2019-09-12',5600);
select*from employees_4 where department="IT";
set sql_safe_updates=0;
UPDATE employees_4 SET bonus = bonus * 1.20 WHERE salary > 70000; 
SELECT emp_id, name_1, department, salary,
    CASE 
        WHEN salary >= 80000 THEN 'High'
        WHEN salary BETWEEN 50000 AND 79999 THEN 'Medium'
        ELSE 'Low'
    END AS salary_level
FROM employees_4;
SELECT department, AVG(bonus) AS avg_bonus FROM employees_4  GROUP BY department;
SELECT department, AVG(bonus) AS avg_bonus FROM employees_4 GROUP BY department HAVING AVG(bonus) > 4000;
SELECT department, SUM(salary + bonus) AS total_salary_bonus FROM employees_4 GROUP BY department;
UPDATE employees_4  SET salary = salary * 1.10  WHERE department = 'Finance';
SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary FROM employees_4;
SELECT * FROM employees_4 order by bonus desc;
SELECT department, COUNT(*) AS employee_count FROM employees_4 GROUP BY department HAVING COUNT(*) > 1;
select*from employees_4;

