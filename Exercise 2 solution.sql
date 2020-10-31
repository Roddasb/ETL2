
--Consider a scenario where residents (donors) donate to help other people. 
--Create two tables: Donor and Donation with the following information:
--Note, first create a database called TargetedHelp and create the tables in the database


CREATE DATABASE TargetedHelp

USE TargetedHelp

CREATE TABLE Donor 
(
	IdNo		INT IDENTITY PRIMARY KEY NOT NULL,
	FName		VARCHAR(25) NOT NULL,
	Lname		VARCHAR(25) NOT NULL,
	DOB			DATE NOT NULL,
	StrAdd		VARCHAR(30) NOT NULL,
	City		VARCHAR(20) NOT NULL,
	[State]		CHAR(2) NOT NULL,
	ZipCode 	CHAR(5) NOT NULL,

)

CREATE TABLE Donation
(
	IdNo		INT FOREIGN KEY REFERENCES Donor(IdNo) NOT NULL,
	Amount		DECIMAL(10,2),
	DonationDate	 DATE NOT NULL DEFAULT GETDATE()

)

--Insert the following data into the donor table:

INSERT INTO Donor
VALUES
	('Kaleb','Betru','2/9/1989','23abs Str','Atlanta','GA','12345'),
	('Derik','Liber','3/10/1999','908 Duke Str','Alexandria','VA','22312'),
	('Kidist','Melaku','4/11/1979',	'789 Wayne Ave',	'Silver Spring','MD','20910'),
	('Meskerem','Tibebu','9/27/1986','1243 Moran Str',	'Alexandria','VA','22312'),
	('Daniel','Oliver',	'3/10/1977','90 Main Str', 'Alexandria','VA','22317'),
	('Jimi','Falon','2/10/1980','124 first Str','	New York','NY','27310'),
	('Johnson','Mc Faden','3/10/1991','76 Blandesburg Str', 'Washington	','DC','22022'),
	('Kaleb','Zikie','5/23/1988','25 second Str',' Atlanta','GA','12345'),
	('Filmone','Zikie','8/3/1977','43xyzst','Chevy Chase	','MD','20815')

	
SELECT * FROM Donor


--Insert the following data into the Donation table

INSERT INTO Donation
VALUES 
	('1',	'100.56',	'3/2/2016'),
	('3',	'250',	'3/3/2016'),
	('4','150',	'3/3/2016'),
	('2',	'260',	'4/1/2016'),
	('6','350'	,'4/2/2016'),
	('5'	,'270',	'4/3/2016'),
	('1','300'	,'4/10/2016'),
	('2',	'100',	'4/10/2016'),
	('3','100',	'4/10/2016'),
	('7',	'300',	'4/10/2016'),
	('6'	,'200',	'4/15/2016'),
	('4',	'150',	'4/20/2016'),
	('2','100'	,'5/1/2016'),
	('1','140','5/5/2016'),
	('2'	,'110',	'5/9/2016'),
	('3','260','5/10/2016')


SELECT * FROM Donation 


--	Add telephone (14 numeric characters) as new column to the donor table

ALTER TABLE Donor 
ADD Telephone CHAR(14) 

--	Add gender (1 character) as a new column to the donor table

ALTER TABLE Donor 
ADD Gender CHAR(1)

--	Use update statement to change the value of 
--telephone and gender from NULL to the values shown as follows: one is worked for you.

SELECT * FROM Donor--- to see null values 


UPDATE Donor
SET Gender = 'M'
WHERE IdNo=1

UPDATE Donor 
SET Gender = 'M'
WHERE IdNo = 2

UPDATE Donor 
SET Gender = 'M'
where IdNo = 5

UPDATE Donor
SET Gender= 'M'
WHERE IdNo = 6


 UPDATE Donor
 SET Gender = 'M '
 WHERE IdNo = 7

 
 UPDATE Donor
 SET Gender = 'M '
 WHERE IdNo = 8

 
 UPDATE Donor
 SET Gender = 'M '
 WHERE IdNo = 9


UPDATE Donor
SET Gender = 'F'
WHERE IdNo=3

UPDATE Donor
SET Gender = 'F'
WHERE IdNo= 4

SELECT * FROM Donor

UPDATE Donor
SET Telephone = 9011123123
WHERE IdNo= 1


UPDATE Donor
SET Telephone = 8903421233
WHERE IdNo= 2


UPDATE Donor
SET Telephone = 3092220001
WHERE IdNo= 3


UPDATE Donor
SET Telephone = 1299991122
WHERE IdNo= 4


UPDATE Donor
SET Telephone = 1012092112
WHERE IdNo= 5


UPDATE Donor
SET Telephone =7821055412
WHERE IdNo= 6


UPDATE Donor
SET Telephone = 3034045060
WHERE IdNo= 7

UPDATE Donor
SET Telephone =2719200981
WHERE IdNo= 8

UPDATE Donor
SET Telephone = 4445556677
WHERE IdNo= 9

SELECT * FROM Donor


























