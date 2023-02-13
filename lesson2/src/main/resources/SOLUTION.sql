-- INSERT Students
INSERT INTO Student (name, groupnumber) VALUES ("John", 1);
INSERT INTO Student (name, groupnumber) VALUES ("Chris", 1);
INSERT INTO Student (name, groupnumber) VALUES ("Carl", 1);

INSERT INTO Student (name, groupnumber) VALUES ("Oliver", 2);
INSERT INTO Student (name, groupnumber) VALUES ("James", 2);
INSERT INTO Student (name, groupnumber) VALUES ("Lucas", 2);
INSERT INTO Student (name, groupnumber) VALUES ("Henry", 2);

INSERT INTO Student (name, groupnumber) VALUES ("Jacob", 3);
INSERT INTO Student (name, groupnumber) VALUES ("Logan", 3);

INSERT INTO Student (name, groupnumber) VALUES ("Lucy", 4);
INSERT INTO Student (name, groupnumber) VALUES ("Jason", 4);

INSERT INTO Student (name, groupnumber) VALUES ("Anna", 5);
INSERT INTO Student (name, groupnumber) VALUES ("Sarvar", 5);

-- INSERT Subjects
INSERT INTO Subject (name, grade) VALUES ("Art", 1);
INSERT INTO Subject (name, grade) VALUES ("Music", 1);

INSERT INTO Subject (name, grade) VALUES ("Geography", 2);
INSERT INTO Subject (name, grade) VALUES ("History", 2);

INSERT INTO Subject (name, grade) VALUES ("PE", 3);
INSERT INTO Subject (name, grade) VALUES ("Math", 3);

INSERT INTO Subject (name, grade) VALUES ("Science", 4);
INSERT INTO Subject (name, grade) VALUES ("IT", 4);

INSERT INTO Subject (name, grade) VALUES ("Programming", 5);
INSERT INTO Subject (name, grade) VALUES ("Robotics", 5);

-- INSERT Payment-types
INSERT INTO paymenttype (name) VALUES ("DAILY");
INSERT INTO paymenttype (name) VALUES ("WEEKLY");
INSERT INTO paymenttype (name) VALUES ("MONTHLY");

-- INSERT Payment
INSERT INTO payment (student_id, type_id) VALUES (SELECT id FROM student WHERE name = "John", SELECT id FROM paymenttype WHERE name = "Weekly");
INSERT INTO payment (student_id, type_id) VALUES (SELECT id FROM student WHERE name = "Oliver", SELECT id FROM paymenttype WHERE name = "Monthly");
INSERT INTO payment (student_id, type_id) VALUES (SELECT id FROM student WHERE name = "Henry", SELECT id FROM paymenttype WHERE name = "Weekly");
INSERT INTO payment (student_id, type_id) VALUES (SELECT id FROM student WHERE name = "James", SELECT id FROM paymenttype WHERE name = "Daily");

INSERT INTO payment (student_id, type_id) VALUES (SELECT id FROM student WHERE name = "Sarvar", SELECT id FROM paymenttype WHERE name = "Monthly");

-- INSERT Marks
INSERT INTO mark (mark, student_id, subject_id) VALUES (8, SELECT id FROM student WHERE name = "Chris", SELECT id FROM subject WHERE name = "Art");
INSERT INTO mark (mark, student_id, subject_id) VALUES (5, SELECT id FROM student WHERE name = "Oliver", SELECT id FROM subject WHERE name = "History");
INSERT INTO mark (mark, student_id, subject_id) VALUES (9, SELECT id FROM student WHERE name = "James", SELECT id FROM subject WHERE name = "Geography");
INSERT INTO mark (mark, student_id, subject_id) VALUES (4, SELECT id FROM student WHERE name = "Jacob", SELECT id FROM subject WHERE name = "Math");
INSERT INTO mark (mark, student_id, subject_id) VALUES (9, SELECT id FROM student WHERE name = "Logan", SELECT id FROM subject WHERE name = "PE");
INSERT INTO mark (mark, student_id, subject_id) VALUES (9, SELECT id FROM student WHERE name = "Sarvar", SELECT id FROM subject WHERE name = "Robotics");
