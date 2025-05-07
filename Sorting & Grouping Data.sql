create database five;
use five;
create table Country(
Id int primary key,
Country_name varchar(50),
Population int,
Area int);

create table Persons(
Id int primary key,
Fname varchar(50),
Lname varchar(50),
Population int,
rating float,
Country_Id int,
Country_name varchar(50)
);

insert into Country (Id, Country_name, Population, Area) values
(1, 'USA', 331000000, 9833520),
(2, 'Canada', 38000000, 9984670),
(3, 'UK', 67000000, 243610),
(4, 'India', 1393000000, 3287263),
(5, 'Australia', 25600000, 7692024),
(6, 'Germany', 83000000, 357022),
(7, 'Brazil', 212000000, 8515767),
(8, 'Japan', 126000000, 377975),
(9, 'Russia', 144000000, 17098242),
(10, 'China', 1444000000, 9596961);

insert into Persons (Id, Fname, Lname, Population, Rating, Country_id, Country_name) values
(1, 'John', 'Doe', 10000, 4.3, 1, 'USA'),
(2, 'Emma', 'Smith', 8000, 4.7, 2, 'Canada'),
(3, 'Liam', 'Brown', 7000, 4.1, 3, 'UK'),
(4, 'Aarav', 'Sharma', 12000, 3.9, 4, 'India'),
(5, 'Olivia', 'Wilson', 9500, 4.6, 5, 'Australia'),
(6, 'Noah', 'Davis', 8900, 4.8, 6, 'Germany'),
(7, 'Isabella', 'Miller', 11000, 4.9, 7, 'Brazil'),
(8, 'Ethan', 'Garcia', 7700, 4.2, 8, 'Japan'),
(9, 'Sophia', 'Martinez', 6600, 4.0, 9, 'Russia'),
(10, 'Mason', 'Lee', 8800, 3.8, 10, 'China');

select SUBSTRING(Country_name, 1, 3) AS Short_Country FROM Country;

select CONCAT(Fname, ' ', Lname) AS Full_Name FROM Persons;

select COUNT(DISTINCT Country_name) AS Unique_Countries FROM Persons;

select MAX(Population) AS Max_Population FROM Country;

select MIN(Population) AS Min_Population FROM Persons;

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_id, Country_name) VALUES
(11, 'Ayaan', NULL, 5000, 4.1, 1, 'USA'),
(12, 'Zara', NULL, 6000, 3.9, 2, 'Canada');

select COUNT(Lname) as NonNull_LastNames from Persons;

select COUNT(*) as Total_Rows from Persons;

select Population from Country limit 3;

select * from Country order by RAND() limit 3;

select * from Persons order by Rating desc;

select Country_name, SUM(Population) as Total_Population
from Persons group by Country_name;

select Country_name, SUM(Population) as Total_Population
from Persons group by Country_name having SUM(Population) > 50000;

select Country_name, COUNT(*) as Total_Persons, avg(Rating) as Avg_Rating
from Persons group by Country_name having COUNT(*) > 2
order by Avg_Rating asc;