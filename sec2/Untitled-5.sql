-- create iti database 
CREATE DATABASE ITI;
USE ITI

-- Create table students  

CREATE Table students(
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    age INT check(age > 0),
    phone_number VARCHAR(11)
);
DESCRIBE students;

-- Insert data rows 

INSERT INTO students (name, email, age, phone_number)
VALUES
("youssef", "yousser1bedeer@gmail.com", 22, "01226627188");

-- insert multiple rows 
INSERT INTO students (name, email, age, phone_number)
VALUES 
("ahmed", "ahmed@gmail.com", 21, "0123422342"),
("ali", "ali@gmail.com", 25, "01222222131");


-- select all data from table
select * from students;


-- select name and age only 
select name, age from students;

-- select student with id 3
select * FROM students where id = 3;

-- select students with age bigger than 22
select * from students where age >= 22;

-- select students with age between 21 and 23
select * from students where age BETWEEN 21 and 23;

-- like operetor
-- select name starts with A 
select name from students WHERE name like 'A%';

-- second letter is o 
select name from students WHERE name like '_o%'; 

-- first letter A and last d
select name from students where name like "a%d";

-- update 

update students set age = 30 where id = 3 or name = 'ali';

-- delete row 
delete from students WHERE id = 4;

-- PRACTICE
-- insert 3 students with unique names and ages 
INSERT into students (name, email, age, phone_number)
VALUES
("mahmoud", "mahmoud@gmail.com", 27, "0123422343"),
("aser", "aser@gmail.com", 15, "013423124"),
("mohammed", "mohammed@gmail.com", 22, "0123412414")

-- select all students whose age less than 21 
SELECT name, age from students where age < 21;

-- select all students whose name starts with 'A' and whose age is greater than 18
select name age from students where name like 'A%' AND age > 18;

-- increase the age by 1 for students whose age is less than 20
UPDATE students set age = age + 1 WHERE age < 20;