
SELECT * FROM payment JOIN paymenttype ON payment.type_id = paymenttype.id WHERE paymenttype.name = "MONTHLY";

SELECT * FROM mark JOIN subject on mark.subject_id = subject.id WHERE subject.name = "Art";

# Select all students who have “WEEKLY” payments;
# Select all students who has marks by Math.