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