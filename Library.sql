--CREATE DATABASE LibraryDb

--USE LibraryDb

--CREATE TABLE Authors(
--	Id int primary key identity,
--	FullName nvarchar(50) not null,
--	Born date
--)

--CREATE TABLE Books(
--	Id int primary key identity,
--	Name nvarchar(50) not null,
--	AuthorId int references Authors(Id)
--)

--CREATE TABLE Customers(
--	Id int primary key identity,
--	Fullname nvarchar(50) not null,
--	Age int
--)

--CREATE TABLE Genres(
--	Id int primary key identity,
--	Name nvarchar(50) not null
--)

--CREATE TABLE BooksCustomers(
--	Id int primary key identity,
--	BookId int references Books(Id),
--	CustomerId int references Customers(Id),
--	DateOut date not null,
--	DateReturn date not null,
--	Returned BIT,
--)

--CREATE TABLE BooksGenres(
--	Id int primary key identity,
--	BookId int references Books(Id),
--	GenreId int references Genres(Id)
--)

--CREATE TABLE AuthorsGenres(
--	Id int primary key identity,
--	AuthorId int references Authors(Id),
--	GenreId int references Genres(Id)
--)

--INSERT INTO Authors
--VALUES ('Tolstoy','1828-09-09'),
--('Dostoyevski','1821-11-11'),
--('J.K.Rowling','1965-07-31')

--INSERT INTO Books
--VALUES ('Harry Potter',3),
--('War and Peace',1),
--('The Death of Ivan Ilyich',1),
--('The Casual Vacancy',3),
--('Demons',2),
--('The Gambler',2)

--INSERT INTO Genres
--VALUES ('Realism'),
--('Epic'),
--('Fantasy'),
--('Drama'),
--('Comedy')

--INSERT INTO Genres
--VALUES ('Novel')

--INSERT INTO CUSTOMERS
--VALUES ('Elvin Alizade',19),
--('Camal Memmedov', 19),
--('Samir Rehimov', 25),
--('Rufat Guliyev', 24)

--INSERT INTO BooksGenres
--VALUES (1,3),
--(2,6),
--(3,3),
--(4,6),
--(5,1),
--(6,2)

--INSERT INTO AuthorsGenres
--VALUES (1,1),
--(1,2),
--(1,6),
--(2,2),
--(2,1),
--(3,3),
--(3,4),
--(3,5)

--INSERT INTO BooksCustomers
--VALUES (1,1,'2021-11-25','2021-12-25',1),
--(3,2,'2022-01-02','2022-02-02',0),
--(2,3,'2021-12-23','2022-01-23',1),
--(4,4,'2022-01-24','2022-02-23',0),
--(5,1,'2022-01-25','2022-02-25',0)

SELECT G.Name 'Genre',B.Id,B.Name 'Book Name' FROM Books B
INNER JOIN BooksGenres BG
ON B.Id = BG.BookId
AND BG.GenreId = 3
INNER JOIN Genres G
ON BG.GenreId = G.Id

SELECT A.Id, A.FullName 'Author',B.Name 'Book Name' FROM Books B
INNER JOIN Authors A
ON B.AuthorId = A.Id
WHERE A.Id = 2

SELECT A.Id, A.FullName 'Author', G.Name 'Genre' From Genres G
INNER JOIN AuthorsGenres AG
ON G.Id = AG.GenreId
AND AG.AuthorId = 2
INNER JOIN Authors A
ON AG.AuthorId = A.Id

SELECT C.Id, C.Fullname 'Customer' , B.Name 'Book' FROM Books B
INNER JOIN BooksCustomers BC
ON B.Id = BC.BookId
AND BC.CustomerId = 1
INNER JOIN Customers C
ON BC.CustomerId = C.Id
