USE [s15guest29]
GO

CREATE TABLE dbo.Raffle
	(Ticket int IDENTITY PRIMARY KEY NOT NULL,
	 Prize varchar(25) NOT NULL,
	 fk_PersonID int NOT NULL,
	 fk_CompanyName varchar(25) NOT NULL,
	 CONSTRAINT fk_Raffle_PersonID FOREIGN KEY (fk_PersonID) REFERENCES Person (PersonID),
	 CONSTRAINT fk_Raffle_CompanyName FOREIGN KEY (fk_CompanyName) REFERENCES Vendor (CompanyName))

GO