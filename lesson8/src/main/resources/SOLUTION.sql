
SELECT MIN(birthday) birthday FROM student;

SELECT MIN(payment_date) payment_date FROM payment;

# SELECT AVG(mark) mark FROM mark JOIN subject ON mark.subject_id = subject.id WHERE name="Math";
SELECT AVG(m.mark) FROM mark AS m JOIN subject AS s ON m.subject_id = s.id WHERE s.name="Math";

# Find min amount of payment for payment type “WEEKLY”.
SELECT MIN(p.amount) FROM payment AS p JOIN paymenttype AS t ON p.type_id = t.id WHERE t.name = "WEEKLY";

