USE [BNSStore]
GO
/****** Object:  StoredProcedure [User].[uspAddDisplayName]    Script Date: 5/18/2015 12:56:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.9.13
-- Description:	Create simple user
-- =============================================
CREATE PROCEDURE [User].[uspAddDisplayName]
	@UserID int = NULL,
	@Username char(64) = NULL,
	@DisplayName nvarchar(100) NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	IF @UserID IS NULL
	BEGIN
		EXEC [User].uspGetUserID @Username = @Username, @UserID = @UserID OUTPUT
	END

	INSERT INTO [User].DisplayName (UserID, DisplayName)VALUES(@UserID, @DisplayName)
END

GO
