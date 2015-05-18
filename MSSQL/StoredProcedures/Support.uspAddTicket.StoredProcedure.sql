USE [BNSStore]
GO
/****** Object:  StoredProcedure [Support].[uspAddTicket]    Script Date: 5/18/2015 12:56:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.11.6
-- Description:	Add Translation
-- =============================================
CREATE PROCEDURE [Support].[uspAddTicket]
	@TicketTitle nvarchar(200) = NULL,
	@TicketCategoryName nvarchar(100) = NULL,
	@TicketCategoryID tinyint = NULL,
	@Rating tinyint = NULL,
	@Comment nvarchar(MAX) = NULL,
	@Email nvarchar(254) = NULL,
	@PhoneNumber varchar(15) = NULL,
	@Name nvarchar(100) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @TicketCategoryID IS NULL
	BEGIN
		SET @TicketCategoryID = (SELECT TicketCategoryID FROM Store.TicketCategoryList WHERE TicketCategoryName = @TicketCategoryName)
	END
	IF @Rating > 10
	BEGIN
		SET @Rating = 10;
	END
	ELSE IF @Rating < 0
	BEGIN
		SET @Rating = 0;
	END
	INSERT INTO Store.Ticket (TicketTitle, TicketCategoryID, Rating, Comment, Email, PhoneNumber, Name) VALUES
	(@TicketTitle, @TicketCategoryID, @Rating, @Comment, @Email, @PhoneNumber, @Name)
END

GO
