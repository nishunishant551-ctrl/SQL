create database students_3;
use students_3;
CREATE TABLE students (student_id INT PRIMARY KEY AUTO_INCREMENT, 
name_std VARCHAR(50), 
course VARCHAR(30), 
marks INT, 
attendance INT, 
grade varchar(1)
 ); 
 INSERT INTO students (student_id,name_std, course, marks, attendance, grade) VALUES (1,'Aarav', 'Maths', 85, 90, 'A'),
(2,'Riya', 'Science', 72, 88, 'B'), 
(3,'Kabir', 'English', 60, 70, 'C'), 
(4,'Neha', 'Maths', 95, 92, 'A'), 
(5,'Rahul','Science', 50, 65, 'D');
select*from students where course="IT";
set sql_safe_updates=0;
UPDATE students SET marks = marks * 2 WHERE grade > "c"; 
SELECT student_id, name_std, course , marks ,
    CASE 
        WHEN marks >= 75 THEN 'High'
        WHEN marks BETWEEN 65 AND 75 THEN 'Medium'
        ELSE 'Low'
    END AS study_level
FROM students;
SELECT course, AVG(marks) AS avg_marks FROM students  GROUP BY marks;
SELECT course, AVG(marks) AS avg_marks  FROM students GROUP BY course HAVING AVG(marks) > 80;
SELECT marks, SUM(marks + attendance) AS total_study_hours FROM students GROUP BY course;
UPDATE students  SET marks  = marks * 1.10  WHERE grade = 'd';
SELECT MAX(marks) AS max_marks, MIN(marks) AS min_marks  FROM students;
SELECT * FROM students order by grade desc;
SELECT course, COUNT(*) AS students_count FROM students GROUP BY course HAVING COUNT(*) > 2;
select*from students;