create database Kurs
use Kurs

--1
create table Telebeler(
Id int identity primary key,
Name nvarchar()  not null,
Surname nvarchar() not null,
Age int,
Faculty nvarchar()
)

--2
insert into Telebeler values
('Zeynab', 'Namazova', 22, 'History')
('Chinara', 'Ismayilli', 24, 'Computer Sciences')
('Orxan', 'Nagiyev', 30, 'History')
('Muhammed Ali', 'Bagirov', 19, ' Mathematics')
 
--3
select  Name, Surname, Faculty from Telebele
where age>20


--4
UPDATE Telebeler
SET Age=23
WHERE Id = 1;

--5
delete Telebeler
where Id=2;

--6
select count(Id) from Telebeler
where Faculty='History'

--7
select Name,Surname from Telebeler
where Age>20
order by Name

--8
Select * from Telebeler
Where Faculty != 'History' AND age>22

--9
Select Name,Surname from Telebeler
Where Name like '%a%'
Select Name,Surname from
Telebeler
Where Name like '%ə%'

--10

alter table Telebeler
drop column Faculty

create table Faculties(
FacultyId int identity primary key,
FacultyName nvarchar() not null
)

alter table Telebeler
add FacultyId int

update Telebeler
set FacultyId = Faculties.Id
from Faculties
where Telebeler.Faculty = Faculties.FacultyName

--11
Select Faculty.Name,count (Telebeler.Id) from 
Telebeler join Faculties
on Telebeler.FacultyId=Faculties.FacultyId

--12
Select Telebeler.Name, Telebeler.Surname from 
Telebeler  left join Faculties
on Telebeler.FacultyId=Faculties FacultyId
where Faculties.FacultyName='History'


--13
CREAT VIEW TelebelerinFacultesi  AS
Select Telebeler.Name, Telebeler.Surname from Telebeler left join Faculties
on Telebeler.FacultyId=Faculties.FacultyId
Where Faculties.FacultyName='History'

Select Top 1 * from TelebelerinFacultesi

Select * from TelebelerinFacultesi
