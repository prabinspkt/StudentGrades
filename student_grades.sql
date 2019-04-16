CREATE DATABASE STUDENT_GRADES;

USE STUDENT_GRADES;

CREATE TABLE Students (
	StudentID	int	NOT NULL,
    FirstName	varchar(30)	NOT NULL,
    LastName	varchar(30)	NOT NULL,
    Major	varchar(20),
    PRIMARY KEY (StudentID)
);
   
CREATE TABLE Courses (
	CourseID	int	NOT NULL	auto_increment,
    Department	varchar(20)	NOT NULL,
    CourseNumber	int	NOT NULL,
    CourseName	varchar(50)	NOT NULL,
    Semester	varchar(10)	NOT NULL,
    Year	int	NOT NULL,
    PRIMARY KEY (CourseID)
);

CREATE TABLE Enrollment (
	StudentID	int	NOT NULL,
    CourseID	int	NOT NULL,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES	Students(StudentID),
    FOREIGN KEY (CourseID)	REFERENCES	Courses(CourseID)
);

CREATE TABLE Distribution (
	DistributionID	int NOT NULL	auto_increment,
    CourseID	int	NOT NULL,
    Category	varchar(20)	NOT NULL,
    Percent	int	NOT NULL,
    PRIMARY KEY (DistributionID),
    FOREIGN KEY	(CourseID) REFERENCES	Courses(CourseID)
);


CREATE TABLE Assignments (
	AssignmentID	int	NOT NULL	auto_increment,
    DistributionID	int NOT NULL,
    Instance	int	NOT NULL,
    PossiblePoints	int	DEFAULT	0 NOT NULL,
    PRIMARY KEY	(AssignmentID),
    FOREIGN KEY (DistributionID) REFERENCES	Distribution(DistributionID)
);

CREATE TABLE	StudentScores (
	StudentID	int	NOT NULL,
    AssignmentID	int	NOT NULL,
    Points	int	DEFAULT	0	NOT NULL,
    PRIMARY KEY	(StudentID,	AssignmentID),
    FOREIGN KEY (StudentID) REFERENCES	Students(StudentID),
    FOREIGN KEY (AssignmentID) REFERENCES	Assignments(AssignmentID)
);

INSERT INTO Courses (Department, CourseNumber, CourseName, Semester, Year)
VALUES ("Computer Sci", 202, "Computer Organization II", "Spring", 2019);
INSERT INTO Courses (Department, CourseNumber, CourseName, Semester, Year)
VALUES ("Economics", 105, "Principles of Macroeconomics", "Spring", 2019);
INSERT INTO Courses (Department, CourseNumber, CourseName, Semester, Year)
VALUES ("Mathematics", 140, "Discrete Structures", "Spring", 2019);
INSERT INTO Courses (Department, CourseNumber, CourseName, Semester, Year)
VALUES ("Electrical Eng", 201, "Digital Logic", "Fall", 2018);
INSERT INTO Courses (Department, CourseNumber, CourseName, Semester, Year)
VALUES ("Civil Eng", 110, "Planetary Science", "Fall", 2018);

INSERT INTO Students (StudentID, FirstName, LastName, Major)
VALUES (11, "John", "Doe", "Computer Sci");
INSERT INTO Students (StudentID, FirstName, LastName, Major)
VALUES (22, "Al", "Zinn", "Economics");
INSERT INTO Students (StudentID, FirstName, LastName, Major)
VALUES (33, "Shan", "Lindsey", "Mathematics");
INSERT INTO Students (StudentID, FirstName, LastName, Major)
VALUES (44, "Tammy", "Strope", "Electrical Eng");
INSERT INTO Students (StudentID, FirstName, LastName, Major)
VALUES (55, "Angel", "Kaylor", "Civil Eng");
INSERT INTO Students (StudentID, FirstName, LastName, Major)
VALUES (66, "Sierra", "Wilmot", "Computer Sci");
INSERT INTO Students (StudentID, FirstName, LastName, Major)
VALUES (77, "Alaine", "Borjas", "Economics");
INSERT INTO Students (StudentID, FirstName, LastName, Major)
VALUES (88, "Mendy", "Dimitri", "Mathematics");
INSERT INTO Students (StudentID, FirstName, LastName, Major)
VALUES (99, "Nickolo", "Elgin", "Electrical Eng");
INSERT INTO Students (StudentID, FirstName, LastName, Major)
VALUES (110, "Roberta", "Blane", "Civil Eng");

INSERT INTO Enrollment (StudentID, CourseID)
VALUES (11, 1);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (11, 3);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (11, 4);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (22, 2);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (22,3);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (33, 3);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (44, 3);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (44, 4);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (55, 3);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (55, 5);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (66, 1);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (77, 3);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (88, 2);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (88, 3);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (99, 1);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (99, 4);
INSERT INTO Enrollment (StudentID, CourseID)
VALUES (110, 5);

INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (1, "Assignment", 40);
INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (1, "Quiz", 10);
INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (1, "Project", 30);
INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (1, "Test", 20);

INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (2, "Assignment", 25);
INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (2, "Quiz", 25);
INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (2, "Term Paper", 20);
INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (2, "Test", 30);

INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (3, "Assignment", 40);
INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (3, "Quiz", 15);
INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (3, "Test", 45);

INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (4, "Assignment", 40);
INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (4, "Project", 40);
INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (4, "Test", 20);

INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (5, "Assignment", 30);
INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (5, "Quiz", 20);
INSERT INTO Distribution (CourseID, Category, Percent)
VALUES (5, "Test", 50);

INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (1,1,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (1,2,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (1,3,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (1,4,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (2,1,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (2,2,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (2,3,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (2,4,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (3,1,100);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (3,2,100);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (4,1,100);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (4,2,100);

INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (5,1,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (5,2,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (5,3,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (5,4,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (5,5,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (6,1,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (6,2,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (6,3,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (6,4,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (6,5,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (6,6,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (6,7,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (6,8,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (6,9,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (6,10,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (7,1,200);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (8,1,100);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (8,2,100);

INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (9,1,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (9,2,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (9,3,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (9,4,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (10,1,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (10,2,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (10,3,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (11,1,100);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (11,2,100);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (11,3,100);

INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (12,1,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (12,2,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (12,3,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (12,4,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (13,1,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (13,2,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (13,3,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (13,4,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (14,1,100);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (14,2,100);

INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (15,1,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (15,2,20);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (15,3,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (15,4,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (15,5,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (15,6,50);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (16,1,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (16,2,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (16,3,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (16,4,10);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (17,1,100);
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (17,2,100);

#Student1 Course 1
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,1,45);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,2,46);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,3,47);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,4,48);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,5,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,6,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,7,9);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,8,10);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,9,95);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,10,96);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,11,93);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,12,95);

#Student 1 Course 3
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,31,46);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,32,45);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,33,49);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,34,50);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,35,7);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,36,9);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,37,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,38,97);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,39,94);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,40,99);

#Student 1 Course 4
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,41,41);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,42,45);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,43,43);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,44,47);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,45,49);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,46,50);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,47,48);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,48,45);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,49,95);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (11,50,91);

#Student 2 Course 2
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,13,33);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,14,35);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,15,30);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,16,37);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,17,35);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,18,5);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,19,6);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,20,7);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,21,7);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,22,6);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,23,5);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,24,5);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,25,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,26,9);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,27,7);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,28,160);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,29,77);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,30,85);

#Student 2 Course 3
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,31,40);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,32,39);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,33,42);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,34,41);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,35,6);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,36,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,37,7);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,38,80);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,39,78);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (22,40,83);

#Student 3 Course 3
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (33,31,35);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (33,32,33);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (33,33,31);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (33,34,34);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (33,35,5);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (33,36,6);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (33,37,5);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (33,38,80);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (33,39,75);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (33,40,77);

#Student 4 Course 3
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,31,20);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,32,25);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,33,26);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,34,30);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,35,4);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,36,5);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,37,4);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,38,60);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,39,57);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,40,65);

#Student 4 Course 4
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,41,25);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,42,22);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,43,27);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,44,30);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,45,31);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,46,28);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,47,30);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,48,27);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,49,60);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (44,50,67);

#Student 5 Course 3
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,31,30);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,32,31);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,33,35);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,34,33);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,35,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,36,7);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,37,9);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,38,80);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,39,77);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,40,85);

#Student 5 Course 5
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,51,40);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,52,42);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,53,39);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,54,37);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,55,43);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,56,41);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,57,9);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,58,7);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,59,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,60,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,61,85);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (55,62,87);

#Student 6 Course 1
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (66,1,37);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (66,2,33);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (66,3,34);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (66,4,31);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (66,5,6);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (66,6,5);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (66,7,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (66,8,7);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (66,9,80);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (66,10,76);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (66,11,81);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (66,12,80);

#Student 7 Course 3
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (77,31,20);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (77,32,19);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (77,33,21);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (77,34,22);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (77,35,4);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (77,36,5);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (77,37,5);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (77,38,55);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (77,39,53);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (77,40,51);

#Student 8 Course 2
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,13,40);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,14,42);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,15,39);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,16,41);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,17,40);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,18,40);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,19,7);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,20,6);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,21,6);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,22,7);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,23,6);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,24,5);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,25,7);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,26,9);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,27,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,28,150);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,29,85);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,30,81);

#Student 8 Course 3
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,31,35);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,32,40);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,33,37);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,34,39);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,35,9);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,36,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,37,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,38,90);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,39,91);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (88,40,92);

#Student 9 Course 1
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,1,20);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,2,21);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,3,22);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,4,22);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,5,3);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,6,4);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,7,4);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,8,5);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,9,48);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,10,50);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,11,47);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,12,55);

#Student 9 Course 4
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,41,22);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,42,27);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,43,22);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,44,21);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,45,25);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,46,26);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,47,23);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,48,23);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,49,55);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (99,50,51);

#Student 10 Course 5
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (110,51,45);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (110,52,47);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (110,53,46);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (110,54,49);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (110,55,44);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (110,56,48);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (110,57,7);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (110,58,9);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (110,59,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (110,60,8);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (110,61,91);
INSERT INTO StudentScores (StudentID, AssignmentID, Points)
VALUES (110,62,93);

#Compute the average/highest/lowest score of an assignment
SELECT AVG(Points) from StudentScores
WHERE AssignmentId = 5;
SELECT MAX(Points) from StudentScores
WHERE AssignmentId = 5;
SELECT MIN(Points) from StudentScores
WHERE AssignmentId = 5;

#List all of the students in a given course;
SELECT FirstName, LastName from Students
WHERE StudentID IN (SELECT StudentID from Enrollment WHERE CourseID =
(SELECT CourseID FROM Courses WHERE CourseName = "Computer Organization II"));

#OR
SELECT FirstName, LastName from Students
WHERE StudentID IN (SELECT StudentID from Enrollment WHERE CourseID =1);

#List all of the students in a course and all of their scores on every assignment;
SELECT s.FirstName, s.LastName, ss.AssignmentID, ss.Points from Students s INNER JOIN
StudentScores ss ON s.StudentID = ss.StudentID
WHERE s.StudentID IN (SELECT StudentID from Enrollment WHERE CourseID =
(SELECT CourseID FROM Courses WHERE CourseName = "Computer Organization II"));

#OR
SELECT s.FirstName, s.LastName, ss.AssignmentID, ss.Points from Students s INNER JOIN
StudentScores ss ON s.StudentID = ss.StudentID
WHERE s.StudentID IN (SELECT StudentID from Enrollment WHERE CourseID =1);

#Add an assignment to a course;
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (
(
SELECT DistributionID FROM Distribution WHERE CourseID = 
(SELECT CourseID FROM Courses WHERE CourseName = "Digital Logic") AND Category = "Assignment"
),
5,
50
);

#Subqueries for the above query, Required values to input (12,5,50);
#Distribution ID from CourseName
SELECT DistributionID FROM Distribution WHERE CourseID = 
(SELECT CourseID FROM Courses WHERE CourseName = "Digital Logic") AND Category = "Assignment";
#Instance from MAX instance of the distribution
# Could not use it because SQL does not allow inserting into the same table from which selection
# is done, which in this case is the Assignments table
SELECT MAX(Instance) FROM Assignments WHERE DistributionID = (SELECT DistributionID FROM Distribution WHERE CourseID = 
(SELECT CourseID FROM Courses WHERE CourseName = "Digital Logic") AND Category = "Assignment");

#OR 
INSERT INTO Assignments (DistributionID, Instance, PossiblePoints)
VALUES (12, 5, 50);

#Change the percentages of the categories for a course;
UPDATE Distribution
SET Percent = 30 WHERE Category = "Assignment" AND CourseID = (
SELECT CourseID FROM Courses WHERE CourseName = "Digital Logic");
UPDATE Distribution
SET Percent = 30 WHERE Category = "Project" AND CourseID = (
SELECT CourseID FROM Courses WHERE CourseName = "Digital Logic");
UPDATE Distribution
SET Percent = 40 WHERE Category = "Test" AND CourseID = (
SELECT CourseID FROM Courses WHERE CourseName = "Digital Logic");

#OR
UPDATE Distribution
SET Percent = 30 WHERE DistributionID = 12;
UPDATE Distribution
SET Percent = 30 WHERE DistributionID = 13;
UPDATE Distribution
SET Percent = 30 WHERE DistributionID = 14;


# To see the values of the Points in Assignment before and after adding 2 points
# to each student in Project 1 of Course Computer Organization II
SELECT StudentID, Points FROM StudentScores WHERE AssignmentID IN (
SELECT AssignmentID FROM Assignments WHERE DistributionID = 3);

#Add 2 points to the score of each student on an assignment;
UPDATE StudentScores
SET Points = (Points + 2) WHERE AssignmentID IN (
SELECT AssignmentID FROM Assignments WHERE DistributionID = 
(SELECT DistributionID FROM Distribution WHERE Category = "Project" AND CourseID = 
(SELECT CourseID FROM Courses WHERE CourseName = "Computer Organization II")
)
AND Instance = 1);

#OR
UPDATE StudentScores
SET Points = (Points + 2) WHERE AssignmentID = 10;

#Add 2 points just to those students whose last name contains a ‘Q’.
UPDATE StudentScores
SET Points = (Points + 2) WHERE StudentID IN 
(SELECT StudentID FROM Students WHERE LastName LIKE "%Q%"
) AND
AssignmentID IN (
SELECT AssignmentID FROM Assignments WHERE DistributionID = 
(SELECT DistributionID FROM Distribution WHERE Category = "Project" AND CourseID = 
(SELECT CourseID FROM Courses WHERE CourseName = "Computer Organization II")
)
AND Instance = 1);

#OR
UPDATE StudentScores
SET Points = (Points + 2) WHERE StudentID IN 
(SELECT StudentID FROM Students WHERE LastName LIKE "%Q%"
) AND AssignmentID = 10;










