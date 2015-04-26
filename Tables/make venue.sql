USE [s15guest29]
GO

CREATE TABLE dbo.Venue
	(VenueID int IDENTITY PRIMARY KEY NOT NULL,
	 fk_AddressID int NOT NULL
	 CONSTRAINT fk_Venue_AddressID FOREIGN KEY (fk_AddressID) REFERENCES Addresses (AddressID)) 

GO