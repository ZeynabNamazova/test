create database DrugstoreApp
CREATE TABLE [Drugstores] (
	[id] int NOT NULL IDENTITY(1,1) UNIQUE,
	[name] nvarchar(50) NOT NULL,
	[address] nvarchar(50) NOT NULL,
	[ContactNumber] nvarchar(13) NOT NULL,
	[CreationDate] datetime NOT NULL,
	PRIMARY KEY ([id])
);
insert into Drugstores values
('Zeytun','Koroghlu45','+994000000000','1.12.2000')

CREATE TABLE [Owners] (
	[id] int NOT NULL IDENTITY(1,1),
	[name] nvarchar(max) NOT NULL,
	[surname] nvarchar(max) NOT NULL,
	PRIMARY KEY ([id])
);
insert into Owners values
('Karam','Hasanov')

CREATE TABLE [Drugs] (
	[id] int NOT NULL IDENTITY(1,1) UNIQUE,
	[Name] nvarchar(50) NOT NULL,
	[price] decimal(18,0) NOT NULL,
	[count] int NOT NULL,
	PRIMARY KEY ([id])
);
insert into Drugs values
('Parasetramol', 2.20 ,10)

CREATE TABLE [Pharmacists] (
	[id] int NOT NULL IDENTITY(1,1) UNIQUE,
	[name] nvarchar(50) NOT NULL,
	[surname] nvarchar(50) NOT NULL,
	[age] int NOT NULL,
	[experience] int NOT NULL,
	PRIMARY KEY ([id])
);
insert into Pharmacists values
('Fatima','Cafarova',22,7)

ALTER TABLE [Drugstores] ADD CONSTRAINT [Drugstores_fk] FOREIGN KEY ([id]) REFERENCES [owners]([id]);
ALTER TABLE [Drugs] ADD CONSTRAINT [Drugs_fk] FOREIGN KEY ([id]) REFERENCES [Drugstores]([id]);
ALTER TABLE [Pharmacists] ADD CONSTRAINT [Pharmacists_fk] FOREIGN KEY ([id]) REFERENCES [Drugstores]([id]);

select * from Drugstores
Select * from Owners
select * from Drugs
select * from Pharmacists