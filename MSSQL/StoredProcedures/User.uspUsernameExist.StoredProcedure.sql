USE [BNSStore]
GO
/****** Object:  StoredProcedure [User].[uspUsernameExist]    Script Date: 5/18/2015 12:56:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.11.6
-- Description:	Add Translation
-- =============================================
CREATE PROCEDURE [User].[uspUsernameExist]
	@Username varchar(100) = NULL,
	@Exist bit = 0 OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF (SELECT UserID FROM [User].Account WHERE Username = @Username) IS NOT NULL
	BEGIN
		SET @Exist = 1
	END
	ELSE
	BEGIN
		SET @Exist = 0
	END
END

GO
