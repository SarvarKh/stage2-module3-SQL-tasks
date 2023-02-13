

# CREATE DATABASE University;
# USE University;

CREATE TABLE Student (ID bigint, Name varchar(30), Birthday date, Group int, PRIMARY KEY (ID));

CREATE TABLE Subject (ID bigint, Name varchar(30), Description varchar(30), Grade int, PRIMARY KEY (ID));

CREATE TABLE PaymentType (ID bigint, Name varchar(30), PRIMARY KEY (ID));

CREATE TABLE Payment (ID bigint, Type_ID bigint, Amount decimal, Student_ID bigint, Payment_date datetime, PRIMARY KEY (ID), FOREIGN KEY (Type_ID) REFERENCES PaymentType(ID), FOREIGN KEY (Student_ID) REFERENCES Student(ID));

CREATE TABLE Mark (ID bigint, Student_ID bigint, Subject_ID bigint, Mark int, FOREIGN KEY (Student_ID) REFERENCES Student(ID), FOREIGN KEY (Subject_ID) REFERENCES Subject(ID));
