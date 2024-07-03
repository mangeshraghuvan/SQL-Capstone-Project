CREATE DATABASE Student_Database;

CREATE TABLE Student_Table (
    Student_id INT PRIMARY KEY,
    Stu_name TEXT,
    Department TEXT,
    Email_id TEXT,
    Phone_no NUMERIC,
    Address TEXT,
    Date_of_birth DATE,
    Gender TEXT,
    Major TEXT,
    GPA NUMERIC,
    Grade TEXT
	);

INSERT INTO Student_Table (Student_id, Stu_name, Department, Email_id, Phone_no, Address, Date_of_birth, Gender, Major, GPA, Grade) 
VALUES (1, 'Mangesh Raghuvan', 'Geography', 'mangeshraghuvan@gmail.com', 123, '123 Anand nagar', '1994-01-01', 'M', 'Physical Geography', 7.4, 'B'),
(2, 'Hema Raghuvan', 'Physics', 'hemaraghuvan@gmail.com', 234, '234 Arvind Soc.', '1995-02-02', 'F', 'Experimental Physics', 7.6, 'B'),
(3, 'Neha Sonawane', 'English', 'nehasonawane@gmail.com', 345, '345 Arvind Soc.', '1994-03-03', 'F', 'Technical Writing', 9.9, 'A'),
(4, 'Rohan Raghuvan', 'Economics', 'rohanraghuvan@gmail.com', 456, '456 Anand nagar', '1996-04-04', 'M', 'Health Economics', 7.5, 'B'),
(5, 'Sai Kumar', 'Biology', 'saikumar@gmail.com', 890, '890 Arvind Soc.', '1992-05-05', 'M', 'Microbiology', 9.7, 'A'),
(6, 'Sonia Mundhe', 'Maths', 'soniamundhe@gmail.com', 678, '678 Anand nagar', '1994-06-06', 'F', 'Pure Maths', 4.4, 'C'),
(7, 'Sharzad Irani', 'History', 'sharzadirani@gmail.com', 901, '901 Suncity', '1996-07-07', 'M', 'Ancient History', 6.3, 'B'),
(8, 'Ashwini Vyawahare', 'Chemistry', 'ashwinivyawahare@gmail.com', 999, '999 Anand nagar', '1993-08-08', 'F', 'Organic Chemistry', 4.2, 'C'),
(9, 'Daniel Driver', 'Business', 'danieldriver@gmail.com', 888, '888 Suncity', '1992-09-09', 'M', 'Accounts', 4.1, 'C'),
(10, 'Ranjana Kambale', 'Arts', 'ranjanakambale@gmail.com', 777, '777 Anand nagar', '1994-10-10', 'F', 'Music', 4.0, 'C');

Select * from Student_Table
Order by Grade Desc;

Select * from Student_Table
Where Gender = 'M';

Select * from Student_Table
Where GPA < 5.0;

Update Student_Table SET Email_id = 'iranisharzad@gmail.com', Grade = 'A' Where Student_id = 7;
Select * from Student_Table;

SELECT Stu_name, Date_Part('year', Age(Date_Of_Birth)) AS Age
FROM Student_table
Where Grade = 'B';

Select Department, Gender, AVG(GPA) AS Avg_GPA
From Student_Table
Group By Department, Gender;

ALTER TABLE Student_Table RENAME TO Student_Info;
SELECT * FROM Student_info;

Select * from Student_Info
Order By GPA DESC
LIMIT 1;

Select * from Student_Info
Where GPA = (Select MAX(GPA)from Student_Info);




