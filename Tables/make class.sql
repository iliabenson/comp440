USE [s15guest29]
GO

CREATE TABLE dbo.Class
	(ClassID int IDENTITY PRIMARY KEY NOT NULL,
	 DateAndTime varchar(50) NOT NULL,
	 Tittle varchar(250) NOT NULL,
	 Decription varchar(250) NOT NULL,
	 Duration varchar(250) NOT NULL,
	 PresenterGrade varchar(25) NOT NULL,
	 fk_PersonID int NOT NULL,
	 fk_DifficultyID varchar(25) NOT NULL,
	 fk_Topic varchar(250),
	 fk_RoomID int NOT NULL,
	 CONSTRAINT fk_Class_PersonID FOREIGN KEY (fk_PersonID) REFERENCES Person (PersonID),
	 CONSTRAINT fk_Class_DifficultyID FOREIGN KEY (fk_DifficultyID) REFERENCES Difficulty (DifficultyID),
	 CONSTRAINT fk_Class_Topic FOREIGN KEY (fk_Topic) REFERENCES Track (Topic),
	 CONSTRAINT fk_Class_Rooms FOREIGN KEY (fk_RoomID) REFERENCES Rooms (RoomID))

GO