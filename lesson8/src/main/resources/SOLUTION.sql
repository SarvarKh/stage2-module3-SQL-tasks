
SELECT MAX(birthday) FROM student;

SELECT MIN(payment_date) FROM payment;

SELECT AVG(m.mark) FROM mark AS m JOIN subject AS s ON m.subject_id = s.id WHERE s.name='Math';

SELECT MIN(p.amount) FROM payment AS p JOIN paymenttype AS t ON p.type_id = t.id WHERE t.name = 'WEEKLY';

