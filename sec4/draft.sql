-- show all depatements and the number of students in each departement
SELECT d.name, COUNT(s.id) AS number_of_students
FROM departements d 
LEFT JOIN students s 
on d.id = s.dept_id 
GROUP BY d.name;