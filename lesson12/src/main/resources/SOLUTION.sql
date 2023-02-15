DELETE FROM student WHERE groupnumber > 4;

DELETE FROM student WHERE id IN (SELECT  DISTINCT s.id FROM student AS s JOIN mark AS m ON s.id = m.student_id WHERE m.mark < 4);

DELETE FROM paymenttype WHERE name = "DAILY";

DELETE FROM mark WHERE mark < 7;