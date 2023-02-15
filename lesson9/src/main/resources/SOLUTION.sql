
SELECT * FROM student AS s JOIN mark AS m ON s.id = m.student_id GROUP BY s.name HAVING AVG(m.mark > 8);

SELECT s.id, s.name FROM student AS s JOIN mark AS m ON s.id = m.student_id GROUP BY (s.id, s.name) HAVING MIN(m.mark > 7);

# Select all students(id and name) who paid more than 2 times during 2019
SELECT s.id, s.name FROM student AS s JOIN payment AS p ON s.id = p.student_id WHERE EXTRACT(YEAR FROM p.payment_date) = 2019 GROUP BY (s.id, s.name) HAVING COUNT(p.id) > 7;

