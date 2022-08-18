-------------------
-- DML
-------------------

USE Car_Dealership;

INSERT INTO Car_ForSelling (ID, VIN, isNew, Brand, Model, ModelYear, Color)
VALUES (1, '4F19FJ74URNVY753U', 1, 'Toyota', 'Corolla', 2020, 'Black'),
	   (2, '9SL8FNV6HDLP9SUWE', 0, 'Hyundai', 'Santa Fe', 2018, 'Green'),
	   (3, '6DHFUYENVDI7DTEUH', 1, 'Honda', 'Civic', 2021, 'Blue'),
	   (4, '7SKFTHEYUDNHFOG72', 1, 'Ford', 'Ecosport', 2022, 'Black'),
	   (5, '38FUENBKIYEHF7YED', 0, 'Toyota', 'Avanza', 2015, 'White');

INSERT INTO Car_ForService (ID, VIN, Brand, Model, ModelYear, Color)
VALUES (1, '92KD6FHVMDI8SJDY7', 'Honda', 'Accord', 2021, 'White'),
	   (2, 'ESLDP9NBH7FJUASWO', 'Toyota', 'Corolla', 2010, 'Black'),
	   (3, '9DKNCVY67DJHCKFUY', 'Ford', 'Bronco', 2017, 'Black'),
	   (4, 'DJSMCYWHDLOP9ANVG', 'Hyundai', 'i20', 2015, 'White'),
	   (5, 'CKD89SHD6FGHYTEKJ', 'Hyundai', 'Grand i10', 2019, 'Green');

INSERT INTO Country (ID, CountryName)
VALUES (1, 'United States of America'),
	   (2, 'Ireland'),
	   (3, 'Norway'),
	   (4, 'Spain'),
	   (5, 'Argentina'),
	   (6, 'Canada'),
	   (7, 'Belgium');

INSERT INTO City (ID, CityName, ZipCode, CountryID)
VALUES (1, 'Ontario', '64214', 6),
(2, 'Dublin', '39293', 2),
(3, 'Los Angeles', '029442', 1),
(4, 'Stavanger', '288923', 3),
(5, 'Saint-Ghislain', '4743', 7),
(6, 'Barcelona', '22989', 4),
(7, 'Cordova', '9732', 5),
(8, 'Buenos Aires', '88232', 5),
(9, 'Madrid', '23489', 4),
(10, 'Tielt', '4283', 7);

INSERT INTO Salesperson (ID, FullName, BithDate, Email, SalespersonAddress, CityID, HireDate)
VALUES (1, 'Anuj kumar', '1980-06-13', 'anujk@gmail.com', '21, Kalbadevi Road, Mumbai-4', 2, '2020-09-05'),
	   (2, 'Ralph Gonzales', '1978-04-17', 'ralph@dfsfks.com', '15 Megeldas Rd, P.Street', 5, '2019-04-12'),
	   (3, 'Sarita Pandey', '1995-12-19', 'sarita@gmail.com', '11-56, Kiran, Nurshang', 8, '2021-12-25'),
	   (4, 'John Doe', '2001-01-09', 'john@test.com', '78, Niwas, Nehru Rd, Vile Parle (E)', 3, '2022-02-12'),
	   (5, 'Amit Mendieta', '1970-07-02', 'amit@gmail.com', 'A-586, Bindro Reclamation, Bandra (W)', 1, '2018-04-03');

INSERT INTO Customer (ID, FullName, BithDate, Email, CustomerAddress, CityID)
VALUES (1, 'Richard Gomez', '1967-01-19', 'rtyf@gmail.com', '15 Megeldas Rd, P.Street', 3),
	   (2, 'Michael Linn', '1955-12-01', 'sddfg@hotmail.com', '23 Avenue Rd, A.Street', 1),
	   (3, 'Rachel Blue', '1971-02-17', 'rty44f@outlook.com', '53 Flowers Rd, S.Street', 4),
	   (4, 'Juan Mendieta', '1982-03-23', '12ss@yahoo.com', '19 Victory Rd, U.Street', 7),
	   (5, 'Robert Smith', '1989-09-03', 'dfssc@gmail.com', '22 Megeldas Rd, F.Street', 9);

INSERT INTO Invoice (ID, InvoiceNumber, SalesPersonID, Car_ForSellingID, CustomerID, InvoiceDate, Amount)
VALUES (1, 'INV-001', 1, 3, 2, '2022-04-01', 10000),
	   (2, 'INV-002', 2, 4, 1, '2020-04-21', 50000),
	   (3, 'INV-003', 2, 1, 2, '2010-09-23', 25000),
	   (4, 'INV-004', 5, 2, 4, '2015-02-15', 35400),
	   (5, 'INV-005', 1, 5, 5, '2019-01-19', 21000);

INSERT INTO ServiceTicket (ID, CustomerID, Car_ForServiceID, ServiceDate, Amount)
VALUES (1, 2, 4, '2020-03-02', 300),
	   (2, 1, 4, '2019-05-12', 400),
	   (3, 5, 3, '2019-12-15', 100),
	   (4, 5, 3, '2022-01-13', 200),
	   (5, 5, 1, '2021-02-05', 200);

INSERT INTO CarPart (ID, PartName, PartProvider)
VALUES (1, 'Air Bag', 'Provider 1'),
	   (2, 'Battery', 'Provider 2'),
	   (3, 'Electric Windows Motor', 'Provider 1'),
	   (4, 'Oil Cooler', 'Provider 1'),
	   (5, 'Fuel Gauge', 'Provider 2');

INSERT INTO CarPart_Ticket (ServiceTicketID, CarPartID, Price)
VALUES (1, 3, 40),
	   (1, 1, 10),
	   (1, 5, 30),
	   (2, 1, 60),
	   (3, 2, 120),
	   (3, 1, 340),
	   (4, 5, 120);

INSERT INTO MechanicSpeciality (ID, SpecialityName)
VALUES (1, 'Engines'),
	   (2, 'Electrical systems'),
	   (3, 'Transmission repair and replacement'),
	   (4, 'Air conditioning and heating systems'),
	   (5, 'Brake systems and alignments');

INSERT INTO Mechanic (ID, FullName, BirthDate, Email, MechanicAddress, CityID, HireDate, SpecialityID)
VALUES (1, 'Max Peterson', '1945-02-14', 'fww@gmail.com', '32, Kalbadevi Road, Mumbai-4', 1, '2018-02-01', 3),
	   (2, 'Andy Williams', '1980-12-11', 'radgwlph@dfsfks.com', '45 Megeldas Rd, P.Street', 2, '2017-01-10', 4),
	   (3, 'Kelly Barnhill', '1943-09-24', 'dfsa@gmail.com', '121, Rase, Nurshang', 9, '2020-08-13', 5),
	   (4, 'Anita Desai', '1964-03-11', 'ggds@test.com', '14, Niyt, Vile Parle', 1, '2021-09-11', 1),
	   (5, 'Chetan Bhagatt', '1960-08-19', 'er3@gmail.com', '99, Holak', 5,'2020-03-16', 3);

INSERT INTO MechanicTicket (MechanicID, ServiceTicketID, HoursWorked)
VALUES (1, 5, 60),
	   (1, 1, 10),
	   (2, 1, 30),
	   (2, 3, 20),
	   (2, 4, 30),
	   (3, 5, 60),
	   (4, 5, 50),
	   (4, 1, 10);

-- Check if data was inserted
-- SELECT * FROM Car_ForSelling;
-- SELECT * FROM Car_ForService;
-- SELECT * FROM Country;
-- SELECT * FROM City;
-- SELECT * FROM Salesperson;
-- SELECT * FROM Customer;
-- SELECT * FROM Invoice;
-- SELECT * FROM ServiceTicket;
-- SELECT * FROM CarPart;
-- SELECT * FROM CarPart_Ticket;
-- SELECT * FROM MechanicSpeciality;
-- SELECT * FROM Mechanic;
-- SELECT * FROM MechanicTicket;
