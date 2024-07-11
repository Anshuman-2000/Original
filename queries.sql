
CREATE TABLE students(
student_id INT IDENTITY(1,1) PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(20) NOT NULL,
DateofBirth DATE,
Address NVARCHAR(100) NOT NULL,
Phone NVARCHAR(50) NOT NULL,
Email NVARCHAR(50) UNIQUE
);
INSERT INTO students(first_name,last_name,Phone ,Email) VALUES
('ANSHUMAN','PATI',57678865,'ABC@GAMIL.COM'),
('SARTHAK','KUNDU',57678865,'ABC@GAMIL.COM');


CREATE TABLE course(
course_id INT IDENTITY(1,1) PRIMARY KEY,
course_name NVARCHAR(20) NOT NULL,
Instructor_name NVARCHAR(50) NOT NULL
);

INSERT INTO course(course_name,instructor_name)VALUES
('MATH','SIMRON'),
('SCIENCE','ANKITA');

CREATE TABLE enrolment(
enrolment_id INT IDENTITY(1,1) PRIMARY KEY,
enrolment_date NVARCHAR(100) NOT NULL,
FOREIGN KEY(student_id) REFERENCES students(student_id)ON DELETE CASCADE,
FOREIGN KEY(course_id) REFERENCES course(course_id)ON DELETE CASCADE
);
 
INSERT INTO  enrolments(enrolment_date,student_id,course_id)VALUES

('2018-08-09',1,9),
('2018-08-09',0,1);

CREATE TABLE Grade(
Grade_id INT IDENTITY(1,1)PRIMARY KEY,
Grade NCHAR(1),
Grade_Date DATE NOT NULL, 
student_id INT,
course_id INT,
FOREIGN KEY (student_id)
REFERENCES students(student_id) ON DELETE CASCADE,
FOREIGN KEY (course_id)
REFERENCES course(course_id) ON DELETE CASCADE,
);

INSERT INTO GRADE(Grade_Date,student_id,course_id)VALUES
('2024-08-09',1,9),
('2022-08-09',0,1);


CREATE TABLE Attendance(
attendance_id INT IDENTITY (1,1) PRIMARY KEY,
attendace_date DATE NOT NULL ,
Status NVARCHAR(9) ,
CHECK(Status='Present' or Status='Absent'),
student_id INT,
Course_id INT,
FOREIGN KEY (student_id)
REFERENCES students(students_id) ON DELETE CASCADE,
FOREIGN KEY (course_id)
REFERENCES course(course_id) ON DELETE CASCADE,
);
INSERT INTO Attendance(attendace_date,status,student_id)VALUES
('2024-08-09','PRESENT',9),
('2022-08-09','ABSENT',1);



CREATE TABLE FEES(
fee_id INT IDENTITY(1,1) PRIMARY KEY,
Amount Decimal (10,2)NOT NULL,
Payment_Date DATE NOT NULL,
Student_id INT,
FOREIGN KEY (Student_id)
REFERENCES Students(students_id) ON DELETE CASCADE,
);

INSERT INTO FEES(Amount,Payment_Date,student_id )VALUES
(80000.00,'2024-05-09',9),
(46788.97,'2023-04-10',1);

SELECT*FROM students;
SELECT*FROM course;
SELECT*FROM enrolments;
SELECT*FROM Grade;
SELECT*FROM FEES;
SELECT*FROM Attendance;



