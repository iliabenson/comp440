USE [s15guest29]
GO

CREATE TABLE dbo.Person
	(PersonID int IDENTITY PRIMARY KEY NOT NULL,
	 Fname varchar(25) NOT NULL,
	 Lname varchar(25) NOT NULL,
	 Email varchar(100),
	 fk_AddressID int,
	 fk_RoleID varchar(25) NOT NULL,
	 CONSTRAINT fk_Person_RoleID FOREIGN KEY (fk_RoleID) REFERENCES Roles (RoleID),
	 CONSTRAINT fk_Person_AddressID FOREIGN KEY (fk_AddressID) REFERENCES Addresses (AddressID))

GO