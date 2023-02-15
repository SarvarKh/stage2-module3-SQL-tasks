
# Delete all students with grade more than 4 and all relationships with this student;
DELETE FROM student WHERE groupnumber > 4;

# Delete students who have at least one mark less than 4;
# DELETE FROM student AS s JOIN mark AS m ON s.id = m.student_id WHERE 0 > (SELECT m.mark < 4);
DELETE FROM student WHERE id IN (SELECT  DISTINCT s.id FROM student AS s JOIN mark AS m ON s.id = m.student_id WHERE m.mark < 4);

# Delete “Daily” payment type and all relationships with this type.
DELETE FROM paymenttype WHERE name = "DAILY";

# Delete All marks less than 7
DELETE FROM mark WHERE mark < 7;