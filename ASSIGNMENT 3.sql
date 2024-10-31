USE entri_d42;
CREATE TABLE Managers(
Manager_id INT PRIMARY KEY,
First_name VARCHAR(50),
Last_name VARCHAR(50),
DOB DATE,
Age INT CHECK(Age>18 AND Age<70),
Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
Gender CHAR(1) CHECK (Gender IN('M','F')),
Department VARCHAR(50) NOT NULL,
Salary DECIMAL(10,2) NOT NULL
);
INSERT INTO Managers(Manager_id,First_name,Last_name,DOB,Age,Gender,Department,Salary) VALUES
(1,'John','Adam','1985-07-18',45,'M','IT',30000),
(2,'Harry','Potter','1990-03-12',40,'M','HR',25000),
(3,'Aaliya','Beegam','1986-08-10',44,'F','IT',29000),
(4,'Albert','Einstien','1978-04-20',52,'M','Finance',32000),
(5,'Marry','Queery','1979-09-17',51,'F','IT',28000),
(6,'Robert','Brown','1987-06-03',43,'M','Marketing',24000),
(7,'Sara','Thomas','1991-02-19',39,'F','Finance',26000),
(8,'Alexander','James','1980-01-10',50,'M','HR',27000),
(9,'Emiliano','Maltinez','1993-09-27',37,'M','Finance',34000),
(10,'Elizabeth','Queen','1988-11-11',42,'F','Marketing',31000);
SELECT*FROM Managers;

SELECT First_name,Last_name,DOB FROM Managers WHERE Manager_id=1;

SELECT First_name,Last_name,Salary*12 AS Annual_income from Managers;

SELECT*FROM Managers WHERE First_name <>'Aaliya';

SELECT*FROM Managers WHERE Department='IT' AND Salary>25000;

SELECT*FROM Managers WHERE Salary BETWEEN 10000 AND 35000;


