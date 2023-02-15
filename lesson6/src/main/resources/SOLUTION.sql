
SELECT * FROM payment JOIN paymenttype ON payment.type_id = paymenttype.id WHERE paymenttype.name = "MONTHLY";

SELECT * FROM mark JOIN subject on mark.subject_id = subject.id WHERE subject.name = "Art";

# Select all students who have “WEEKLY” payments;
SELECT DISTINCT s.id, s.name, s.birthday, s.groupnumber FROM payment AS p JOIN paymenttype AS t ON p.type_id = t.id JOIN student AS s ON p.student_id = s.id WHERE t.name = 'WEEKLY';

# Select all students who has marks by Math.
SELECT * FROM mark AS m JOIN subject AS s ON m.subject_id = s.id JOIN student AS st ON m.student_id = st.id WHERE s.name = 'Math';
