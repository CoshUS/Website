USE [BNSStore]
GO
/****** Object:  StoredProcedure [User].[uspDelSession]    Script Date: 5/18/2015 12:56:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.9.13
-- Description:	Create simple user
-- =============================================
CREATE PROCEDURE [User].[uspDelSession]
	@UserID int = NULL,
	@Username varchar(100) = NULL,
	@SessionToken char(32) = NULL
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
	DELETE FROM [User].[Session] WHERE UserID = @UserID AND SessionToken = @SessionToken
END


GO
