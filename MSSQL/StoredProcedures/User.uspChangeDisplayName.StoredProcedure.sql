USE [BNSStore]
GO
/****** Object:  StoredProcedure [User].[uspChangeDisplayName]    Script Date: 5/18/2015 12:56:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.9.13
-- Description:	Create simple user
-- =============================================
CREATE PROCEDURE [User].[uspChangeDisplayName]
	@UserID int = NULL,
	@Username varchar(100) = NULL,
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

	DECLARE @OldDisplayName nvarchar(100),
	@OldDisplayNameDateTime datetime2(0)

	EXEC [User].uspGetDisplayName @UserID = @UserID, @DisplayName = @OldDisplayName OUTPUT
	EXEC [User].uspGetDisplayNameDateTime @UserID = @UserID, @DisplayNameDateTime = @OldDisplayNameDateTime OUTPUT

	UPDATE [User].DisplayName SET DisplayName = @DisplayName, DisplayNameDateTime = GETDATE() WHERE UserID = @UserID
	INSERT INTO [User].DisplayNameHistory (UserID, DisplayName, DisplayNameDateTime)VALUES(@UserID, @OldDisplayName, @OldDisplayNameDateTime)
END


GO
