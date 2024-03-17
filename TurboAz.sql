create database TurboAz
use TurboAz

create table Anouncements (
Id int primary key identity,
ModelId int,
DistanceId int,
Price int,
    IsKm bit,
    BanTypeId int,
    ColorId int,
    WhatUserAreYousId int,
    ValyutaId int,
    SeatsId int,
    PeopleId int,
    CityId int,
    foreign key (ModelId) references Models(Id),
   foreign key (BanTypeId) references BanTypes(Id),
    foreign key (ColorId) references Colors(Id),
   foreign key (WhatUserAreYousId) references WhatUserAreYous(Id),
    foreign key (ValyutaId) references Valyutas(Id),
    foreign key (SeatsId) references Seats(Id),
    foreign key (PeopleId) references People(Id),
    foreign key (CityId) references Cities(Id)
)

create table Brands (
    Id int primary key identity ,
    Name nvarchar(50)
)

create table Models (
    Id int primary key identity,
    Name nvarchar(50),
    BrandId int,
    foreign key (BrandId) references Brands(Id)
)

create table BanTypes (
    Id int primary key identity,
    Type nvarchar(50)
)

create table Colors (
    Id int primary key identity,
    Name nvarchar(50) unique
)

create table Valyutas (
    Id int primary key identity,
    Name nvarchar(50)
)

create table WhatUserAreYous (
    Id int primary key identity,
    Name nvarchar(50) unique
)

create table AnouncementDetails (
    Id int primary key identity,
    AnouncementId int,
    HorsePower int,
    HasCrash bit,
    HasColor bit,
    HasQezali bit,
    WithCredits bit,
    HasBarter bit,
    FinCode nvarchar(50) unique,
    BonusInformation nvarchar(50),
    foreign key (AnouncementId) references Anouncements(Id)
)

create table Seats (
    Id int primary key identity,
    Say int,
)

create table AutoParts (
    Id int primary key identity,
    YungulDisk bit,
    DeriSaalon  bit,
    AnouncementId int unique,
    foreign key (AnouncementId) references Anouncements(Id)
)

create table Images (
    Id int primary key identity,
    Url nvarchar(50) unique,
    AnouncementId int,
    foreign key (AnouncementId) references Anouncements(Id)
)

create table People (
    Id int primary key identity,
   Name nvarchar(50),
    Phonenumber nvarchar(50),
    Email nvarchar(50)
)

create table Cities (
    Id int primary key identity,
    Name nvarchar(50) unique
)
