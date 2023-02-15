INSERT INTO student (name, groupnumber, birthday) VALUES ("John", 1, CURRENT_DATE);
INSERT INTO student (name, groupnumber, birthday) VALUES ("Chris", 1, CURRENT_DATE);
INSERT INTO student (name, groupnumber, birthday) VALUES ("Carl", 1, CURRENT_DATE);

INSERT INTO student (name, groupnumber, birthday) VALUES ("Oliver", 2, CURRENT_DATE);
INSERT INTO student (name, groupnumber, birthday) VALUES ("James", 2, CURRENT_DATE);
INSERT INTO student (name, groupnumber, birthday) VALUES ("Lucas", 2, CURRENT_DATE);
INSERT INTO student (name, groupnumber, birthday) VALUES ("Henry", 2, CURRENT_DATE);

INSERT INTO student (name, groupnumber, birthday) VALUES ("Jacob", 3, CURRENT_DATE);
INSERT INTO student (name, groupnumber, birthday) VALUES ("Logan", 3, CURRENT_DATE);

INSERT INTO student (name, groupnumber, birthday) VALUES ("Lucy", 4, CURRENT_DATE);
INSERT INTO student (name, groupnumber, birthday) VALUES ("Jason", 4, CURRENT_DATE);

INSERT INTO student (name, groupnumber, birthday) VALUES ("Anna", 5, CURRENT_DATE);
INSERT INTO student (name, groupnumber, birthday) VALUES ("Sarvar", 5, CURRENT_DATE);


INSERT INTO subject (id, name, grade) VALUES (1, "Art", 1);
INSERT INTO subject (id, name, grade) VALUES (2, "Music", 1);

INSERT INTO subject (id, name, grade) VALUES (3, "Geography", 2);
INSERT INTO subject (id, name, grade) VALUES (4, "History", 2);

INSERT INTO subject (id, name, grade) VALUES (5, "PE", 3);
INSERT INTO subject (id, name, grade) VALUES (6, "Math", 3);

INSERT INTO subject (id, name, grade) VALUES (7, "Science", 4);
INSERT INTO subject (id, name, grade) VALUES (8, "IT", 4);

INSERT INTO subject (id, name, grade) VALUES (9, "Programming", 5);
INSERT INTO subject (id, name, grade) VALUES (10, "Robotics", 5);


INSERT INTO paymenttype (id, name) VALUES (1, "DAILY");
INSERT INTO paymenttype (id, name) VALUES (2, "WEEKLY");
INSERT INTO paymenttype (id, name) VALUES (3, "MONTHLY");


INSERT INTO payment (id, student_id, type_id, amount, payment_date) VALUES (1, SELECT id FROM student WHERE name = 'John', SELECT id FROM paymenttype WHERE name = 'WEEKLY', 5015.45, '2021-02-07 08:09:00');
INSERT INTO payment (id, student_id, type_id, amount, payment_date) VALUES (2, SELECT id FROM student WHERE name = 'Oliver', SELECT id FROM paymenttype WHERE name = 'MONTHLY', 6015.45, '2021-03-07 08:09:00');
INSERT INTO payment (id, student_id, type_id, amount, payment_date) VALUES (3, SELECT id FROM student WHERE name = 'Henry', SELECT id FROM paymenttype WHERE name = 'WEEKLY', 5115.45, '2021-02-08 08:09:00');
INSERT INTO payment (id, student_id, type_id, amount, payment_date) VALUES (4, SELECT id FROM student WHERE name = 'James', SELECT id FROM paymenttype WHERE name = 'DAILY', 7015.45, '2021-02-17 08:09:00');
INSERT INTO payment (id, student_id, type_id, amount, payment_date) VALUES (5, SELECT id FROM student WHERE name = 'Anna', SELECT id FROM paymenttype WHERE name = 'WEEKLY', 4015.45, '2021-01-07 08:09:00');
INSERT INTO payment (id, student_id, type_id, amount, payment_date) VALUES (6, SELECT id FROM student WHERE name = 'Kate', SELECT id FROM paymenttype WHERE name = 'MONTHLY', 8015.45, '2021-02-09 08:09:00');


INSERT INTO mark (mark, student_id, subject_id) VALUES (8, SELECT id FROM student WHERE name = "Chris", SELECT id FROM subject WHERE name = "Art");
INSERT INTO mark (mark, student_id, subject_id) VALUES (5, SELECT id FROM student WHERE name = "Oliver", SELECT id FROM subject WHERE name = "History");
INSERT INTO mark (mark, student_id, subject_id) VALUES (9, SELECT id FROM student WHERE name = "James", SELECT id FROM subject WHERE name = "Geography");
INSERT INTO mark (mark, student_id, subject_id) VALUES (4, SELECT id FROM student WHERE name = "Jacob", SELECT id FROM subject WHERE name = "Math");
INSERT INTO mark (mark, student_id, subject_id) VALUES (9, SELECT id FROM student WHERE name = "Logan", SELECT id FROM subject WHERE name = "PE");
INSERT INTO mark (mark, student_id, subject_id) VALUES (9, SELECT id FROM student WHERE name = "Sarvar", SELECT id FROM subject WHERE name = "Robotics");
