USE [s15guest29]
GO

CREATE TABLE dbo.Rooms
	(RoomID int IDENTITY PRIMARY KEY NOT NULL,
	 Capacity int NOT NULL,
	 fk_VenueID int NOT NULL,
	 CONSTRAINT fk_Rooms_VenueID FOREIGN KEY (fk_VenueID) REFERENCES Venue (VenueID))

GO