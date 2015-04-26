USE [s15guest29]
GO

CREATE TABLE dbo.Vendor
	(CompanyName varchar(25) PRIMARY KEY NOT NULL,
	 TableNum int NOT NULL,
	 fk_PersonID int NOT NULL,
	 fk_RoomID int NOT NULL,
	 CONSTRAINT fk_Vendor_PersonID FOREIGN KEY (fk_PersonID) REFERENCES Person (PersonID),
	 CONSTRAINT fk_Vendor_RoomID FOREIGN KEY (fk_RoomID) REFERENCES Rooms(RoomID))

GO