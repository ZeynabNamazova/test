create database KapitalBank 
use KapitalBank

create table MyEmployers(
Name nvarchar(50),
Surname nvarchar(50),
Age int 

)
alter table MyEmployers
add Email nvarchar(50)

alter table MyEmployers
add Position nvarchar(50)

alter table MyEmployers
add Salary int

insert into MyEmployers values
('Henry','Roberts',30,'henry@gmail.com','IT mutexessisi',3000),
('Landon','Young',25,'lyoung@gmail.com','Bas muhasib',4000),
('Harry','Manson',21,'hrmanson@gmail.com','Satis mutexessisi',1500),
('Jane','Sarah',24,'jsarah@gmail.com','Musteri xidmetleri mutexessisi',600),
('Charley','Dore',30,'chdore@gmail.com','Front-end developer',2000),
('Andrew','Warmen',28,'andwarm@gmail.com','Back-end developer',3000),
('Sophia','Lacey',35,'sophi@gmail.com','HR',1000)

Select min(Salary) from MyEmployers
Select max(Salary) from MyEmployers
Select avg(Salary)from MyEmployers

select * from MyEmployers
where Age>21 and Age<28

--veya 
--select * from MyEmployers
--where Age between 21 and 28

select name,surname,salary from MyEmployers
where salary>(select avg(salary)from MyEmployers) --orta emek haqqindan yuksek maas alani tapaq

select name,surname,salary from MyEmployers
where salary<(select avg(salary)from MyEmployers)   --orta emek haqqindan asagi alanlari tapaq



select name, surname from MyEmployers        --30 yashda olanlari tapmaq ucun
where age=30

