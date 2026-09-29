B. Practical:
Create a database system for managing students and departments.
1. Create Department and Student tables.
2. Apply suitable Primary Key and Foreign Key constraints.
3. Add a new column to the Student table using ALTER.
4. Insert at least 5 students belonging to different departments.
5. Display students belonging to a particular department.
6. Update the department of a student.
7. Delete a student based on a condition.
8. Display the final student records.



CREATE DATABASE CollegeDBb;
USE CollegeDBb;


CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);


CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    section VARCHAR(10),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);


INSERT INTO Department VALUES
(1, 'CSE'),
(2, 'AI & ML'),
(3, 'ECE'),
(4, 'IT');


ALTER TABLE Student
ADD COLUMN state VARCHAR(30);


INSERT INTO Student
(student_id, student_name, section, dept_id, state)
VALUES
(101, 'Palak', 'A', 2, 'Uttarakhand'),
(102, 'Aman', 'B', 1, 'Punjab'),
(103, 'Riya', 'A', 3, 'Delhi'),
(104, 'Karan', 'C', 4, 'Haryana'),
(105, 'Neha', 'B', 2, 'Himachal Pradesh');


SELECT s.*
FROM Student s
JOIN Department d
ON s.dept_id = d.dept_id
WHERE d.dept_name = 'AI & ML';


UPDATE Student
SET dept_id = 2
WHERE student_id = 102;


DELETE FROM Student
WHERE student_id = 105;


SELECT * FROM Student;