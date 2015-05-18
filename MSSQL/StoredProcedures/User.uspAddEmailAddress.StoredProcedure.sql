USE [BNSStore]
GO
/****** Object:  StoredProcedure [User].[uspAddEmailAddress]    Script Date: 5/17/2015 4:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.11.6
-- Description:	Add Translation
-- =============================================
CREATE PROCEDURE [User].[uspAddEmailAddress]
	@UserID int = NULL,
	@Username varchar(100) = NULL,
	@EmailAddress nvarchar(254) = NULL,
	@Main bit = 0,
	@VerifyString varchar(64) = NULL OUTPUT
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
	IF @Main IS NULL
	BEGIN
		SET @Main = 0
	END
	EXEC dbo.uspGenerateRandomString @Length = 64, @LetterCase = 'L', @Numbers = 1, @RandomString = @VerifyString OUTPUT

	INSERT INTO [User].Email(UserID, EmailAddress,VerifyString, Main)
	VALUES (@UserID, @EmailAddress, @VerifyString, @Main)
END

GO
USE [BNSStore]
GO
/****** Object:  StoredProcedure [User].[uspAddEmailAddress]    Script Date: 5/17/2015 5:38:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.11.6
-- Description:	Add Translation
-- =============================================
CREATE PROCEDURE [User].[uspAddEmailAddress]
	@UserID int = NULL,
	@Username varchar(100) = NULL,
	@EmailAddress nvarchar(254) = NULL,
	@Main bit = 0,
	@VerifyString varchar(64) = NULL OUTPUT
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
	IF @Main IS NULL
	BEGIN
		SET @Main = 0
	END
	EXEC dbo.uspGenerateRandomString @Length = 64, @LetterCase = 'L', @Numbers = 1, @RandomString = @VerifyString OUTPUT

	INSERT INTO [User].Email(UserID, EmailAddress,VerifyString, Main)
	VALUES (@UserID, @EmailAddress, @VerifyString, @Main)
END

GO
