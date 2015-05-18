USE [BNSStore]
GO
/****** Object:  StoredProcedure [User].[uspGetMainLang]    Script Date: 5/18/2015 12:56:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.9.13
-- Description:	Create simple user
-- =============================================
CREATE PROCEDURE [User].[uspGetMainLang]
	@UserID int = NULL,
	@Username char(64) = NULL,
	@LangID tinyint = NULL OUTPUT
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

	SET @LangID = (SELECT TOP 1 [LangID] FROM [User].Lang WHERE UserID = @UserID AND Main = 1)
END


GO
