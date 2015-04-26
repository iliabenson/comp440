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
CREATE PROCEDURE AddClassToSchedule
	-- Add the parameters for the stored procedure here
	@DateAndTime varchar(50),
	@Tittle varchar(250),
	@Decription varchar(250),
	@Duration varchar(250),
	@PresenterGrade varchar(25),
	@fk_PersonID int,
	@fk_DifficultyID varchar(25),
	@fk_Topic varchar(250),
	@fk_RoomID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Class (
		DateAndTime,
		Tittle,
		Decription,
		Duration,
		PresenterGrade,
		fk_PersonID,
		fk_DifficultyID,
		fk_Topic,
		fk_RoomID
	)
    VALUES(
		@DateAndTime,
		@Tittle,
		@Decription,
		@Duration,
		@PresenterGrade,
		(SELECT PersonID FROM Person WHERE PersonID=@fk_PersonID),
		(SELECT DifficultyID FROM Difficulty WHERE DifficultyID=@fk_DifficultyID),
		(SELECT Topic FROM Track WHERE Topic=@fk_Topic),
		(SELECT RoomID FROM Rooms WHERE RoomID=@fk_RoomID)
	)
END
GO