--CREATE DATABASE CinemaDb

--USE CinemaDb

--CREATE TABLE Movies(
--	Id INT PRIMARY KEY IDENTITY,
--	Name nvarchar(50) not null
--)

--INSERT INTO Movies
--VALUES ('Avengers'),
--('Deadpool'),
--('Spiderman'),
--('Joker'),
--('Fast and Furious')

--INSERT INTO Movies
--VALUES ('Booksmart'),
--('Red Notice'),
--('Lady Bird'),
--('The Master'),
--('The Alpinist'),
--('My Octopus Teacher'),
--('Blood Red Sky'),
--('Fantasy Island')

--CREATE TABLE Genres(
--	Id INT PRIMARY KEY IDENTITY,
--	Name nvarchar(30) not null
--)

--INSERT INTO Genres
--VALUES ('Fantasy'),
--('Horror'),
--('Science Fiction'),
--('Comedy'),
--('Drama'),
--('Documentary'),
--('Action')

--CREATE TABLE Actors(
--	Id INT PRIMARY KEY IDENTITY,
--	Name nvarchar(50) not null
--)

--INSERT INTO Actors
--VALUES ('Ryan Reynolds'),
--('Tom Holland'),
--('Dwayne Johnson'),
--('Gal Gadot'),
--('Craig Foster'),
--('Joaquin Phoenix'),
--('Vin Diesel'),
--('Paul Walker')

--CREATE TABLE MoviesGenres(
--	Id INT PRIMARY KEY IDENTITY,
--	MovieId INT REFERENCES Movies(Id),
--	GenreId INT REFERENCES Genres(Id)
--)

--INSERT INTO MoviesGenres
--VALUES (1,3),
--(1,7),
--(2,1),
--(2,7),
--(3,1),
--(4,4),
--(4,7),
--(5,7),
--(6,4),
--(7,4),
--(7,5),
--(8,5),
--(9,5),
--(9,4),
--(10,6),
--(11,5),
--(11,6),
--(12,2),
--(13,2)

--CREATE TABLE MoviesActors(
--	Id INT PRIMARY KEY IDENTITY,
--	MovieId INT REFERENCES Movies(Id),
--	ActorId INT REFERENCES Actors(Id)
--)

--INSERT INTO MoviesActors
--VALUES (1,2),
--(2,1),
--(3,2),
--(4,6),
--(5,7),
--(5,8),
--(5,3),
--(7,3),
--(7,4),
--(11,5)

--CREATE TABLE Halls(
--	Id INT PRIMARY KEY IDENTITY,
--	Name nvarchar(30)
--)

--INSERT INTO Halls
--VALUES ('Diamond'),
--('Gold'),
--('Silver')

--CREATE TABLE Sessions(
--	Id INT PRIMARY KEY IDENTITY,
--	MovieId INT REFERENCES Movies(Id),
--	HallId INT REFERENCES Halls(Id),
--	SessionDay DATE,
--	StartMovie TIME,
--	EndMovie TIME
--)

--INSERT INTO Sessions
--VALUES (3,2,'2022-01-29','17:00:00.000','18:30:00.000')

--INSERT INTO Sessions
--VALUES (4,1,'2022-01-30','18:00:00.000','19:00:00.000')

--CREATE TABLE Customers(
--	Id INT PRIMARY KEY IDENTITY,
--	Name nvarchar(50) not null,
--	Number nvarchar(30) not null
--)

--INSERT INTO Customers
--VALUES ('Elvin Alizade', '0703002300'),
--('Orxan Abdullayev', '0504660181

--CREATE TABLE Tickets(
--	Id INT PRIMARY KEY IDENTITY,
--	SessionId INT REFERENCES Sessions(Id),
--	CustomerId INT REFERENCES Customers(Id)
--)

--INSERT INTO Tickets
--VALUES (7,1),
--(8,2)

--CREATE VIEW vTicket
--as
--SELECT C.Id,C.Name'Customer',M.Name 'Movie', G.Name 'Genre',H.Name 'Hall',
--convert(varchar(5), S.StartMovie, 108) 'Movie Start',
--convert(varchar(5), S.EndMovie, 108) 'Movie End' ,
--S.SessionDay 'Date'
--FROM Tickets T
--JOIN Sessions S
--ON S.Id = T.SessionId
--JOIN Customers C
--ON C.Id = T.CustomerId
--JOIN Movies M
--ON M.Id = S.MovieId
--JOIN MoviesGenres MG
--ON M.Id = MG.MovieId
--JOIN Genres G
--ON G.Id = MG.GenreId
--JOIN Halls H
--ON H.Id = S.HallId

SELECT * FROM vTicket
WHERE Id = 1