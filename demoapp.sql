create database DemoApp;
use DemoApp;
create table Users (
    Id int identity(1,1) primary key,
    Name nvarchar(50) not null,
    Surname nvarchar(50) not null,
    Email nvarchar(50) not null unique, 
    RegistrationDate datetime  CHECK (RegistrationDate <= GETDATE()) default getdate(),
    ContactNumber nvarchar(13) default '+994000000000',
	Age int,
    Address nvarchar(50) not null
);
select * from Users
Where Age >18

insert into Users  (Name,Surname,Email,RegistrationDate,ContactNumber,Age,Address) values
('Sahra', 'Mammadova', 'sahra.mammadova@gmail.com','','+994552345345', 25, 'Baku'),
('Laram', 'Hüseynova', 'laram.huseynova@gmail.com','12.12.2024','+994000000000', 22, 'Astara'),
('Rashad', 'Yunusov', 'rashad.yunusov@gmail.com','','+994700678679',19, 'Moskva')
--bu hisseni tam ede bilmedim
create table Categories (
    Id int identity(1,1) primary key,
    Name nvarchar(50) not null,
    CreatedAt datetime check (CreatedAt <= getdate()) default getdate(),
    IsActive bit
);

insert into Categories (Name, IsActive) values
('kosmetika', 1),
('shar', 0),
('parfum', 1);
Select Name, Surname, Email from Users;
Select Name, IsActive from Categories;

