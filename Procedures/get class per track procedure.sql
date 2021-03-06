-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ilia Benson
-- Create date: 4/25/2015
-- Description:	Adds topic to Track table
-- =============================================
CREATE PROCEDURE GetClassesPerTrack
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	SELECT Class.Tittle, Class.fk_Topic, Person.Fname, Person.Lname
	FROM Class, Person
	WHERE Class.fk_PersonID=Person.PersonID
	GROUP BY Class.fk_Topic, Class.Tittle, Person.Fname, Person.Lname
END
GO
