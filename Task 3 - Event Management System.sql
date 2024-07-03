CREATE DATABASE EventsManagement;

CREATE TABLE Events (
    Event_Id INT PRIMARY KEY,
    Event_Name VARCHAR(100),
    Event_Date DATE,
    Event_Location VARCHAR(200),
    Event_Description TEXT
);

CREATE TABLE Attendees (
    Attendee_Id INT PRIMARY KEY,
    Attendee_Name VARCHAR(50),
    Attendee_Phone VARCHAR(15),
    Attendee_Email VARCHAR(50),
    Attendee_City VARCHAR(20)
);

CREATE TABLE Registrations (
    Registration_Id INT PRIMARY KEY,
    Event_Id INT,
    Attendee_Id INT,
    Registration_Date DATE,
    Registration_Amount DECIMAL(10, 2),
    FOREIGN KEY (Event_Id) REFERENCES Events(Event_Id),
    FOREIGN KEY (Attendee_Id) REFERENCES Attendees(Attendee_Id)
);

INSERT INTO Events (Event_Id, Event_Name, Event_Date, Event_Location, Event_Description) VALUES 
(1,'Makar Sankranti', '2024-01-16', 'Pune', 'A festival celebrated with kite flying and sweets.'),
(2,'Holi Celebration', '2024-03-27', 'Mumbai', 'A festival of colors.'),
(3,'Navratri', '2024-10-5', 'Ahmedabad', 'A nine day festival dedicated to worship of Goddess Durga.');

INSERT INTO Attendees (Attendee_Id, Attendee_Name, Attendee_Phone, Attendee_Email, Attendee_City) VALUES 
(1,'Mangesh Raghuvan', '123', 'mangeshraghuvan@gmail.com', 'Pune'),
(2,'Rohan Raghuvan', '987', 'rohanraghuvan@gmail.com', 'Mumbai'),
(3,'Chetan Supe', '777', 'chetansupe@gmail.com', 'Ahmedabad');

INSERT INTO Registrations (Registration_id, Event_Id, Attendee_Id, Registration_Date, Registration_Amount) VALUES 
(1, 1, 1, '2024-01-10', 500.00),
(2, 2, 2, '2024-03-20', 300.00),
(3, 3, 3, '2024-10-1', 200.00);

INSERT INTO Events (Event_Id, Event_Name, Event_Date, Event_Location, Event_Description) VALUES 
(4,'Ganesh Chaturthi', '2024-09-02', 'Pune', 'A ten day festival celebrating the birth of Lord Ganesha.');

Update Events SET Event_Name = 'Ram Navami', Event_Date = '2024-04-16', Event_Location = 'Gujarat'
Where Event_Id = 2;

Delete from Registrations
Where Event_Id = 3;
Delete from Events
Where Event_Id = 3;

INSERT INTO Attendees (Attendee_Id, Attendee_Name, Attendee_Phone, Attendee_Email, Attendee_City) VALUES 
(4,'Sai Kumar', '999', 'saikumar@gmail.com', 'Andhra Pradesh');

INSERT INTO Registrations (Registration_id, Event_Id, Attendee_Id, Registration_Date, Registration_Amount) VALUES 
(4, 4, 4, '2024-09-01', 100.00);

Select * from Events;

SELECT Attendees.Attendee_Id, Attendees.Attendee_Name, Attendees.Attendee_Phone, Attendees.Attendee_Email, Attendees.Attendee_City
FROM Attendees
JOIN Registrations ON Attendees.Attendee_Id = Registrations.Attendee_Id;

SELECT Events.Event_Name, COUNT(Registrations.Attendee_Id)
FROM Events
JOIN Registrations ON Events.Event_Id = Registrations.Event_Id
GROUP BY Events.Event_Name;

SELECT Events.Event_Name, SUM(Registrations.Registration_Amount)
FROM Events
JOIN Registrations ON Events.Event_Id = Registrations.Event_Id
GROUP BY Events.Event_Name;

SELECT Events.Event_Name, AVG(Registrations.Registration_Amount)
FROM Events
JOIN Registrations ON Events.Event_Id = Registrations.Event_Id
GROUP BY Events.Event_Name;
