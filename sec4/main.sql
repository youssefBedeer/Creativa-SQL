use company;

create table if NOT EXISTS departements(
    id int PRIMARY KEY auto_increment,
    name VARCHAR(50) NOT NULL,
    capacity INT
);


CREATE table if NOT EXISTS students(
    id int PRIMARY KEY auto_increment,
    name VARCHAR(50) NOT NULL,
    age INT,
    email VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departements(id)
);


INSERT INTO departements (name, capacity) 
VALUES
("Computer Science", 120),
("Information System", 100) ,
("Business", 150),
("Mathematics", 80)



INSERT INTO students (name, age, email, dept_id)
VALUES
("Ali", 20, "ali@gmail.com", 1),
("Sara", 22, "sara@gmail.com", 1),
("Mona", 21, "mona@gmail.com", 2),
("Omar", 19, "omar@gmail.com", NULL)


-- INNER JOIN 
select s.name, d.name
from students s
inner JOIN departements d
on s.dept_id = d.id;


-- LEFT JOIN
select s.name, d.name
from students s
LEFT JOIN departements d
on s.dept_id = d.id;


-- RIGHT JOIN
select s.name, d.name
from students s
RIGHT JOIN departements d
on s.dept_id = d.id;


-- show all depatements and the number of students in each departement
SELECT d.name, COUNT(s.id) 
FROM departements d 
LEFT JOIN students s 
on d.id = s.dept_id 
GROUP BY d.name;