CREATE DATABASE DemoKunder;
USE DemoKunder;

CREATE TABLE Kunder
(
	KundeID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	KundeNavn VARCHAR(45) NULL,
	KundeAdresse VARCHAR(45) NULL,
    KundePostnr VARCHAR(10) NULL,
	KundeBy VARCHAR(45) NULL,
	KundeOpretDato DATE NOT NULL
);

INSERT INTO Kunder (KundeNavn, KundeAdresse, KundePostnr, KundeBy, KundeOpretDato)
VALUES ('Auto importen', 'Autovej 5', 3000, 'Helsingør', CURDATE()),
	('Cykel importen', 'Cykelvej 5', 3000, 'Helsingør', CURDATE()),
    ('Vin importen', 'Vinvej 5', 3000, 'Helsingør', CURDATE()),
    ('Møbel importen', 'Møbelvej 5', 3000, 'Helsingør', CURDATE());

SELECT * FROM Kunder;