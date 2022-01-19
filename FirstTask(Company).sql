--CREATE DATABASE FirstTaskDb

--USE FirstTaskDb

--CREATE TABLE EMPLOYEES(
--Id int,
--Name nvarchar(40),
--Surname nvarchar(60),
--Profession nvarchar(50),
--Salary int
--)

--EXEC sp_rename 'EMPLOYEES', 'Employees'

--INSERT INTO Employees
--VALUES (1, 'Elvin', 'Alizade', 'Web Develop', 500)

--INSERT INTO Employees
--VALUES (2, 'Hesen', 'Memmedov', 'Web Develop', 500)

--INSERT INTO Employees
--VALUES (3, 'Ceyhun', 'Aliyev', 'UI/UX Design', 400)

--INSERT INTO Employees
--VALUES (4, 'Xaqani', 'Humbatov', 'Web Develop', 1000)

SELECT Avg(Salary) FROM Employees

SELECT Max(Salary) FROM Employees

SELECT Min(Salary) FROM Employees

SELECT * FROM Employees
WHERE Salary > (SELECT Avg(Salary) FROM Employees)