USE [BNSStore]
GO
/****** Object:  StoredProcedure [User].[uspGetPasswordHash]    Script Date: 5/17/2015 4:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.9.13
-- Description:	Create simple user
-- =============================================
CREATE PROCEDURE [User].[uspGetPasswordHash]
	@UserID int = NULL,
	@Username varchar(100) = NULL,
	@PasswordHash char(128) = NULL OUTPUT
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

	SET @PasswordHash = (SELECT PasswordHash FROM [User].Account WHERE UserID = @UserID)

END


GO
USE [BNSStore]
GO
/****** Object:  StoredProcedure [User].[uspGetPasswordHash]    Script Date: 5/17/2015 5:38:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.9.13
-- Description:	Create simple user
-- =============================================
CREATE PROCEDURE [User].[uspGetPasswordHash]
	@UserID int = NULL,
	@Username varchar(100) = NULL,
	@PasswordHash char(128) = NULL OUTPUT
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

	SET @PasswordHash = (SELECT PasswordHash FROM [User].Account WHERE UserID = @UserID)

END


GO
