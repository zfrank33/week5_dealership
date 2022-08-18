-------------------
-- DDL
-------------------

CREATE DATABASE Car_Dealership;
USE Car_Dealership;

CREATE TABLE Car_ForSelling (
	ID INT PRIMARY KEY,
	VIN VARCHAR(100) NOT NULL UNIQUE,
	isNew INT NOT NULL,
	Brand VARCHAR(50) NOT NULL,
	Model VARCHAR(50) NOT NULL,
	ModelYear INT DEFAULT NULL,
	Color VARCHAR(20) DEFAULT NULL
);

CREATE TABLE Car_ForService (
	ID INT PRIMARY KEY,
	VIN VARCHAR(100) NOT NULL UNIQUE,
	Brand VARCHAR(50) NOT NULL,
	Model VARCHAR(50) NOT NULL,
	ModelYear INT DEFAULT NULL,
	Color VARCHAR(20) DEFAULT NULL
);

CREATE TABLE Country (
	ID INT PRIMARY KEY,
	CountryName VARCHAR(100) NOT NULL
);

CREATE TABLE City (
	ID INT PRIMARY KEY,
	CityName VARCHAR(100) NOT NULL,
	ZipCode  VARCHAR(50) NOT NULL,
    CountryID INT NOT NULL,
	FOREIGN KEY (CountryID) REFERENCES Country(ID)
);

CREATE TABLE Salesperson (
	ID INT PRIMARY KEY,
	FullName VARCHAR(100) NOT NULL,
	BithDate DATE DEFAULT NULL,
	Email VARCHAR(100) NOT NULL,
	SalespersonAddress VARCHAR(100) NOT NULL,
	CityID INT NOT NULL,
	HireDate DATE NOT NULL,
	FOREIGN KEY (CityID) REFERENCES City(ID)
);

CREATE TABLE Customer (
	ID INT PRIMARY KEY,
	FullName VARCHAR(100) NOT NULL,
	BithDate DATE DEFAULT NULL,
	Email VARCHAR(100) NOT NULL,
	CustomerAddress VARCHAR(100) NOT NULL,
	CityID INT NOT NULL,
	FOREIGN KEY (CityID) REFERENCES City(ID)
);

CREATE TABLE Invoice (
	ID INT PRIMARY KEY,
	InvoiceNumber VARCHAR(20) NOT NULL UNIQUE,
	SalesPersonID INT NOT NULL,
	Car_ForSellingID INT UNIQUE NOT NULL,
	CustomerID INT NOT NULL,
	InvoiceDate DATE NOT NULL,
	Amount FLOAT NOT NULL,
	FOREIGN KEY (SalesPersonID) REFERENCES Salesperson(ID),
	FOREIGN KEY (Car_ForSellingID) REFERENCES Car_ForSelling(ID),
	FOREIGN KEY (CustomerID) REFERENCES Customer(ID)
);

CREATE TABLE ServiceTicket (
	ID INT PRIMARY KEY,
	CustomerID INT NOT NULL,
	Car_ForServiceID INT NOT NULL,
	ServiceDate DATE NOT NULL,
	Amount FLOAT NOT NULL,
	FOREIGN KEY (CustomerID) REFERENCES Customer(ID),
	FOREIGN KEY (Car_ForServiceID) REFERENCES Car_ForService(ID)
);

CREATE TABLE CarPart (
	ID INT PRIMARY KEY,
	PartName VARCHAR(100) NOT NULL,
	PartProvider VARCHAR(100) DEFAULT NULL
);

CREATE TABLE CarPart_Ticket (
	ServiceTicketID INT NOT NULL,
	CarPartID INT NOT NULL,
	Price FLOAT NOT NULL,
	PRIMARY KEY (ServiceTicketID, CarPartID),
	FOREIGN KEY (ServiceTicketID) REFERENCES ServiceTicket(ID),
	FOREIGN KEY (CarPartID) REFERENCES CarPart(ID)
);

CREATE TABLE MechanicSpeciality(
	ID INT PRIMARY KEY,
	SpecialityName VARCHAR(100) NOT NULL
);

CREATE TABLE Mechanic (
	ID INT PRIMARY KEY,
	FullName VARCHAR(100) NOT NULL,
	BirthDate DATE NOT NULL,
	Email VARCHAR(100) NOT NULL,
	MechanicAddress VARCHAR(100) NOT NULL,
	CityID INT NOT NULL,
	HireDate DATE NOT NULL,
	SpecialityID INT NOT NULL,
	FOREIGN KEY (CityID) REFERENCES City(ID),
	FOREIGN KEY (SpecialityID) REFERENCES MechanicSpeciality(ID)
);

CREATE TABLE MechanicTicket (
	MechanicID INT NOT NULL,
	ServiceTicketID INT NOT NULL,
	HoursWorked INT NOT NULL,
	FOREIGN KEY (MechanicID) REFERENCES Mechanic(ID),
	FOREIGN KEY (ServiceTicketID) REFERENCES ServiceTicket(ID)
);
