USE [s15guest29]
GO

CREATE TABLE dbo.Addresses
	(AddressID int IDENTITY PRIMARY KEY NOT NULL,
	 fk_StreetID int NOT NULL,
	 fk_ZipID int NOT NULL,
	 fk_CityID int NOT NULL,
	 fk_ProvidenceID int NOT NULL,
	 CONSTRAINT fk_Addresses_StreetID FOREIGN KEY (fk_StreetID) REFERENCES Street (StreetID),
	 CONSTRAINT fk_Addresses_ZipID FOREIGN KEY (fk_ZipID) REFERENCES Zip (ZipID),
	 CONSTRAINT fk_Addresses_CityID FOREIGN KEY (fk_CityID) REFERENCES City (CityID),
	 CONSTRAINT fk_Addresses_ProvidenceID FOREIGN KEY (fk_ProvidenceID) REFERENCES Providence (ProvidenceID))

GO