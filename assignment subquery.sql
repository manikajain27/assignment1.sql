create database subqry;
use subqry;

CREATE TABLE Doctors(Doctor_ID int,Doctor_name varchar(30),Specialty varchar(20),Day_Available varchar(20),Contact_No varchar(13),Experience int);

CREATE TABLE Patients(Patient_ID int,Patient_name varchar(20),Doctor_name varchar(30),Treatment_date varchar(10),Ward_no int, Condition_info varchar(20),Fees int);

CREATE TABLE Timetable(Day varchar(20),Doctor_name varchar(20),Ward_no int,Time varchar(20));

CREATE TABLE Ward(Ward_no int,Floor int,Beds int,Nurses int);

CREATE TABLE Medicines(Date varchar(10),Doctor_name varchar(30),Ward_no int,Injections int,Medicines int);

INSERT INTO Doctors VALUES(1,'Dr.Harsh','Dietician','Monday','9876543210',5);
INSERT INTO Doctors VALUES(2,'Dr.Simran','Cardiologist','Tuesday','995671866',6);
INSERT INTO Doctors VALUES(3,'Dr.Abhishek','Gynecologist','Monday','8756128765',4);
INSERT INTO Doctors VALUES(4,'Dr.Tanuja','Dietician','Tuesday','9875617286',2);
INSERT INTO Doctors VALUES(1,'Dr.Vedant','Cardiologist','Monday','678195278',10);
INSERT INTO Doctors VALUES(5,'Dr.Sanika','Gynecologist','Monday','9876524516',2);
INSERT INTO Doctors VALUES(6,'Dr.Nitish','Neurologist','Saturday','7651862542',4);
INSERT INTO Doctors VALUES(7,'Dr.Sanskriti','Dietician','Tuesday','9876545678',5);
INSERT INTO Doctors VALUES(8,'Dr.Pranali','Gynecologist','Monday','7689018765',6);
INSERT INTO Doctors VALUES(9,'Dr.Paavana','Dietician','Sunday','6789156278',10);
INSERT INTO Doctors VALUES(10,'Dr.Devang','Cardiologist','Monday','18976254187',10);
INSERT INTO Doctors VALUES(11,'Dr.Rutuja','Dietician','Wednesday','18726578976',5);
INSERT INTO Doctors VALUES(12,'Dr.Gayatri','Neurologist','Sunday','98735678176',6);
INSERT INTO Doctors VALUES(13,'Dr.Amar','Dietician','Thursday','7890876543',5);
INSERT INTO Doctors VALUES(14,'Dr.Aditya','Cardiologist','Friday','6789098765',4);
INSERT INTO Doctors VALUES(15,'Dr.Salil','Dietician','Tuesday','9872456789',2);
INSERT INTO Doctors VALUES(16,'Dr.Prajwal','Gynecologist','Saturday','9865435671',6);
INSERT INTO Doctors VALUES(17,'Dr.Sami','Cardiologist','Friday','9876543245',5);
INSERT INTO Doctors VALUES(18,'Dr.Sakshi','Neurologist','Wednesday','9876547892',5);
INSERT INTO Doctors VALUES(19,'Dr.Aadinath','Gynecologist','Thursday','9875672897',10);

INSERT INTO Patients VALUES(1,'shruti', 'Dr.Simran', '01-02-22',1,'Good',200);
INSERT INTO Patients VALUES(2,'rahul','Dr.Simran','01-02-22',1,'Good',200);
INSERT INTO Patients VALUES(3,'rohit','Dr.Abhishek','01-02-22',2,'Intermediate',400);
INSERT INTO Patients VALUES(4,'raj','Dr.Tanuja','01-02-22',3,'Good',200);
INSERT INTO Patients VALUES(5,'roshan','Dr.Simran','01-02-22',1,'Intermediate',200);
INSERT INTO Patients VALUES(6,'nupur','Dr.Harsh','02-02-22',1,'Bad',100);
INSERT INTO Patients VALUES(7,'sahil','Dr.Abhishek','02-02-22',2,'Better',600);
INSERT INTO Patients VALUES(8,'shreya','Dr.Vedant','02-02-22',5,'Good',200);
INSERT INTO Patients VALUES(9,'tanvi','Dr.Tanuja','03-02-22',3,'Bad',500);
INSERT INTO Patients VALUES(10,'dipti','Dr.Simran','03-02-22',1,'Intermediate',400);
INSERT INTO Patients VALUES(11,'snehal','Dr.Abhishek','03-02-22',2,'Better',100);
INSERT INTO Patients VALUES(12,'abhijit','Dr.Simran','04-02-22',1,'Good',200);
INSERT INTO Patients VALUES(13,'anam','Dr.Vedant','04-02-22',5,'Bad',500);
INSERT INTO Patients VALUES(14,'sanyukta','Dr.Simran','04-02-22',1,'Intermediate',500);
INSERT INTO Patients VALUES(15,'smruti','Dr.Simran','01-03-22',1,'Good',600);
INSERT INTO Patients VALUES(16,'siddhesh','Dr.Abhishek','01-03-22',2,'Good',200);
INSERT INTO Patients VALUES(17,'krutik', 'Dr.Vedant','01-03-22',5,'Bad',500);
INSERT INTO Patients VALUES(18,'jay','Dr.Tanuja','02-03-22',3,'Good',500);
INSERT INTO Patients VALUES(19,'jayant','Dr.Simran','02-03-22',1,'Intermediate',200);
INSERT INTO Patients VALUES(20,'vineet','Dr.Vedant','01-04-22',5,'Better',400);
INSERT INTO Patients VALUES(21,'riddhi','Dr.Abhishek','01-04-22',2,'Bad',200);
INSERT INTO Patients VALUES(22,'vishaka','Dr.Harsh','02-05-22',4,'Good',100);
INSERT INTO Patients VALUES(23,'sarthak','Dr.Simran','02-05-22',1,'Good',400);
INSERT INTO Patients VALUES(24,'yash','Dr.Vedant','02-04-22',5,'Better',500);
INSERT INTO Patients VALUES(25,'suraj','Dr.Sanika','04-05-22',6,'Good',200);

INSERT INTO Timetable VALUES('Monday','Dr.Harsh',4,'10am');
INSERT INTO Timetable VALUES('Tuesday','Dr.Simran',1,'10am');
INSERT INTO Timetable VALUES('Wednesday','Dr.Rutuja',7,'11am');
INSERT INTO Timetable VALUES('Thursday','Dr.Amar',8,'1pm');
INSERT INTO Timetable VALUES('Friday','Dr.Aditya',9,'3pm');
INSERT INTO Timetable VALUES('Saturday','Dr.Prajwal',10,'11am');
INSERT INTO Timetable VALUES('Sunday','Dr.Paavana',11,'4pm');
INSERT INTO Timetable VALUES('Monday','Dr.Sanika',6,'10am');
INSERT INTO Timetable VALUES('Tuesday','Dr.Tanuja',3,'4am');
INSERT INTO Timetable VALUES('Wednesday','Dr.Sakshi',12,'10pm');
INSERT INTO Timetable VALUES('Thursday','Dr.Aadinath',13,'8am');


INSERT INTO Ward VALUES(1,1,10,3);
INSERT INTO Ward VALUES(2,1,12,4);
INSERT INTO Ward VALUES(3,1,13,3);
INSERT INTO Ward VALUES(4,1,10,3);
INSERT INTO Ward VALUES(5,2,9,2);
INSERT INTO Ward VALUES(6,2,8,3);
INSERT INTO Ward VALUES(7,2,10,4);
INSERT INTO Ward VALUES(8,2,9,3);
INSERT INTO Ward VALUES(9,3,13,2);
INSERT INTO Ward VALUES(10,3,10,3);
INSERT INTO Ward VALUES(11,3,13,2);
INSERT INTO Ward VALUES(12,4,10,3);
INSERT INTO Ward VALUES(13,4,9,4);

INSERT INTO Medicines VALUES('01-02-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('01-02-22','Dr.Harsh',4,30,50);
INSERT INTO Medicines VALUES('01-02-22','Dr.Vedant',5,10,30);
INSERT INTO Medicines VALUES('02-02-22','Dr.Abhishek',2,20,40);
INSERT INTO Medicines VALUES('02-02-22','Dr.Tanuja',3,40,60);
INSERT INTO Medicines VALUES('02-02-22','Dr.Sanika',6,10,35);
INSERT INTO Medicines VALUES('02-02-22','Dr.Rutuja',7,34,67);
INSERT INTO Medicines VALUES('03-02-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('03-02-22','Dr.Harsh',4,15,43);
INSERT INTO Medicines VALUES('03-02-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('01-03-22','Dr.Vedant',5,12,24);
INSERT INTO Medicines VALUES('01-03-22','Dr.Simran',1,23,34);
INSERT INTO Medicines VALUES('01-03-22','Dr.Abhishek',2,33,45);
INSERT INTO Medicines VALUES('02-03-22','Dr.Harsh',4,22,43);
INSERT INTO Medicines VALUES('02-03-22','Dr.Simran',1,20,40);
INSERT INTO Medicines VALUES('01-04-22','Dr.Vedant',5,20,40);
INSERT INTO Medicines VALUES('01-04-22','Dr.Tanuja',3,22,45);

select*from doctors;
select*from medicines;
select*from patients;
select*from timetable;
select*from ward;

-- Q1. Display patient names recommending Dr.Simran.
SELECT Name 
FROM Patients 
WHERE Doctor = 'Dr.Simran';

-- Q2. Number of patients treated by same doctor and in same ward.
SELECT Doctor, WardNo, COUNT(*) AS PatientCount
FROM Patients
GROUP BY Doctor, WardNo;

-- Q3. Average fees taken by each Doctor.
SELECT Doctor, AVG(Fee) AS AverageFee
FROM Patients
GROUP BY Doctor;

-- Q4. Specialist using max injections on '01-02-22'
SELECT d.Specialty, SUM(t.Injections) AS TotalInjections
FROM Treatment t
JOIN Doctors d ON t.Doctor = d.DoctorName
WHERE t.Date = '2022-02-01'
GROUP BY d.Specialty
ORDER BY TotalInjections DESC
LIMIT 1;


-- Q5. Nurses present on Wednesday with Dr.Rutuja
SELECT COUNT(*) AS NurseCount
FROM Timetable t
JOIN Nurses n ON t.WardNo = n.WardNo
WHERE t.Day = 'Wednesday' AND t.Doctor = 'Dr.Rutuja';


-- Q6. Time Dr.Rutuja is available on Wednesday
SELECT Time
FROM Timetable
WHERE Doctor = 'Dr.Rutuja' AND Day = 'Wednesday';

-- Q7. Patients in good condition treated by each doctor
SELECT Doctor, COUNT(*) AS GoodPatients
FROM Patients
WHERE Remarks = 'Good'
GROUP BY Doctor;

-- Q8. Wards/floors with minimum medicines used on 02-02-22
SELECT w.Floor, t.WardNo, t.Medicines
FROM Treatment t
JOIN Wards w ON t.WardNo = w.WardNo
WHERE t.Date = '2022-02-02'
ORDER BY t.Medicines ASC
LIMIT 1;

-- Q9. Ward with minimum number of beds
SELECT WardNo
FROM Wards
ORDER BY NoOfBeds ASC
LIMIT 1;


-- Q10. Total experience of Cardiologist doctors
SELECT SUM(Experience) AS TotalExperience
FROM Doctors
WHERE Specialty = 'Cardiologist';

-- Q11. Doctor names and their floors
SELECT DoctorName, Floor
FROM Doctors;

-- Q12. Average number of beds per floor
SELECT Floor, AVG(NoOfBeds) AS AvgBeds
FROM Wards
GROUP BY Floor;

-- Q13. Doctor names and ward numbers from Patients and Timetable
SELECT DISTINCT p.Doctor, t.WardNo
FROM Patients p
JOIN Timetable t ON p.Doctor = t.Doctor;

-- Q14. Count of patients treated on each day
SELECT VisitDate, COUNT(*) AS PatientCount
FROM Patients
GROUP BY VisitDate;

-- Q16. Injections & medicines by doctors with ID > 3
SELECT d.DoctorName, SUM(t.Injections) AS InjectionsUsed, SUM(t.Medicines) AS MedicinesUsed
FROM Doctors d
JOIN Treatment t ON d.DoctorName = t.Doctor
WHERE d.Doctor_ID > 3
GROUP BY d.DoctorName;

-- Q17. Medicines consumed on each day (most to least)
SELECT Date, SUM(Medicines) AS TotalMedicines
FROM Treatment
GROUP BY Date
ORDER BY TotalMedicines DESC;

-- Q18. Ward with most patients in good condition
SELECT WardNo, COUNT(*) AS GoodPatients
FROM Patients
WHERE Remarks = 'Good'
GROUP BY WardNo
ORDER BY GoodPatients DESC
LIMIT 1;

-- Q19. Doctor specialties available at 10am
SELECT DISTINCT d.Specialty
FROM Timetable t
JOIN Doctors d ON t.Doctor = d.DoctorName
WHERE t.Time = '10:00:00';


-- Q20. Nurses using more than 20 injections in each ward
SELECT WardNo, NurseName, SUM(Injections) AS TotalInjections
FROM NurseUsage
GROUP BY WardNo, NurseName
HAVING TotalInjections > 20;

-- Q22. Contact numbers for patient assistance
SELECT Name, EmergencyContact
FROM Patients;

-- Q23. Doctors available at each time
SELECT Time, COUNT(DISTINCT Doctor) AS DoctorCount
FROM Timetable
GROUP BY Time;


-- Q25. Who can treat if Dr. Simran is not available?
SELECT DISTINCT DoctorName
FROM Doctors
WHERE DoctorName != 'Dr.Simran';


-- doubts
-- also explain distinct
-- Q15. Count of patients by condition type
-- Q17. Medicines consumed on each day (most to least)
-- Q24. Doctor\_ID & names treating patients starting with 'S'
-- Q21. Patients treated by doctors with >3 years exp in each ward
-- Q16. Injections & medicines by doctors with ID > 3



-- Q1. Display patient names recommending Dr.Simran.

SELECT Name
FROM Patients
WHERE Doctor = (
    SELECT DoctorName
    FROM Doctors
    WHERE DoctorName = 'Dr.Simran'
);


-- Q2. Number of patients treated by same doctor and in same ward.

SELECT Doctor, WardNo, COUNT(*) AS PatientCount
FROM Patients
GROUP BY Doctor, WardNo;


-- Q3. Average fees taken by each Doctor.
SELECT DISTINCT Doctor,
    (SELECT AVG(Fee)
     FROM Patients p2
     WHERE p2.Doctor = p1.Doctor) AS AvgFee
FROM Patients p1;



-- Q5. How many nurses were present on Wednesday with Dr.Rutuja?

SELECT COUNT(*)
FROM Nurses
WHERE WardNo = (
    SELECT WardNo
    FROM Timetable
    WHERE Doctor = 'Dr.Rutuja' AND Day = 'Wednesday'
);


-- Q6. Time Dr.Rutuja is available on Wednesday

SELECT Time
FROM Timetable
WHERE Doctor = 'Dr.Rutuja' AND Day = 'Wednesday';

-- Q7. Count of patients with good condition per doctor
SELECT DISTINCT Doctor,
    (SELECT COUNT(*) 
     FROM Patients p2 
     WHERE p2.Doctor = p1.Doctor AND Remarks = 'Good') AS GoodPatients
FROM Patients p1;

-- Q8. Wards on floor with min medicine use on 02-02-22

SELECT WardNo
FROM Wards
WHERE WardNo = (
    SELECT WardNo
    FROM Treatment
    WHERE Date = '2022-02-02'
    ORDER BY Medicines ASC
    LIMIT 1
);

-- Q9. Ward no. having minimum number of beds
SELECT WardNo
FROM Wards
WHERE NoOfBeds = (
    SELECT MIN(NoOfBeds) FROM Wards
);


-- Q10. Total experience of Cardiologists

SELECT SUM(Experience) AS TotalExperience
FROM Doctors
WHERE Specialty = 'Cardiologist';


-- Q11. Doctor names and corresponding floors

SELECT DoctorName,
    (SELECT Floor FROM Wards WHERE WardNo = d.WardNo LIMIT 1) AS Floor
FROM Doctors d;



-- Q12. Average number of beds on each floor
SELECT Floor,
    (SELECT AVG(NoOfBeds)
     FROM Wards w2
     WHERE w2.Floor = w1.Floor) AS AvgBeds
FROM Wards w1
GROUP BY Floor;


-- Q13. Doctor names and their ward numbers from Patients and Timetable
SELECT Doctor,
    (SELECT WardNo FROM Timetable WHERE Timetable.Doctor = Patients.Doctor LIMIT 1) AS WardNo
FROM Patients;


-- ✅ Q14. Count of patients treated on each day

SELECT DISTINCT VisitDate,
    (SELECT COUNT(*) FROM Patients p2 WHERE p2.VisitDate = p1.VisitDate) AS PatientCount
FROM Patients p1;


-- Q15. Count of patients from each condition type
SELECT DISTINCT Remarks,
    (SELECT COUNT(*) FROM Patients p2 WHERE p2.Remarks = p1.Remarks) AS PatientCount
FROM Patients p1;


-- Q16. Injections & medicines for doctors with ID > 3

SELECT Doctor,
    (SELECT SUM(Injections) FROM Treatment t2 WHERE t2.Doctor = t1.Doctor) AS TotalInjections,
    (SELECT SUM(Medicines) FROM Treatment t2 WHERE t2.Doctor = t1.Doctor) AS TotalMedicines
FROM Treatment t1
WHERE Doctor IN (
    SELECT DoctorName FROM Doctors WHERE Doctor_ID > 3
)
GROUP BY Doctor;


-- Q17. Medicines consumed per day (most to least)

SELECT Date,
    (SELECT SUM(Medicines) FROM Treatment t2 WHERE t2.Date = t1.Date) AS TotalMedicines
FROM Treatment t1
GROUP BY Date
ORDER BY TotalMedicines DESC;

-- Q18. Ward with most patients in good condition
SELECT WardNo
FROM Patients
WHERE Remarks = 'Good'
GROUP BY WardNo
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Q19. Doctor specialities available at 10am

SELECT Specialty
FROM Doctors
WHERE DoctorName IN (
    SELECT Doctor
    FROM Timetable
    WHERE Time = '10:00:00'
);

 -- Q20. Nurses using >20 injections in each ward
SELECT WardNo, NurseName
FROM NurseUsage
WHERE Injections > 20;

-- Q21. Patients treated by doctors with >3 years experience per ward
SELECT WardNo,
    COUNT(*) AS PatientCount
FROM Patients
WHERE Doctor IN (
    SELECT DoctorName
    FROM Doctors
    WHERE Experience > 3
)
GROUP BY WardNo;

-- Q22. Contact numbers for further assistance
SELECT Name, EmergencyContact
FROM Patients;


-- Q23. Doctors available at each time

SELECT Time,
    (SELECT COUNT(*) FROM Timetable t2 WHERE t2.Time = t1.Time) AS DoctorCount
FROM Timetable t1
GROUP BY Time;


-- Q24. Doctor\_ID and names treating patients starting with 'S'
SELECT Doctor_ID, DoctorName
FROM Doctors
WHERE DoctorName IN (
    SELECT Doctor
    FROM Patients
    WHERE Name LIKE 'S%'
);

-- Q25. Doctor who can treat if Dr. Simran is unavailable
SELECT DoctorName
FROM Doctors
WHERE DoctorName != 'Dr.Simran';

-- Q4. Specialist who used max injections on 01-02-22
