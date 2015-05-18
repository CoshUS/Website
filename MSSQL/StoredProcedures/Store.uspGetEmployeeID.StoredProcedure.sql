USE [BNSStore]
GO
/****** Object:  StoredProcedure [Store].[uspGetEmployeeID]    Script Date: 5/17/2015 4:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.11.6
-- Description:	Add Translation
-- =============================================

CREATE PROCEDURE [Store].[uspGetEmployeeID]
	  @FirstName nvarchar(100) = NULL,
	  @LastName nvarchar(100) = NULL,
	  @UserID int = NULL OUTPUT
AS
	BEGIN
	    -- SET NOCOUNT ON added to prevent extra result sets from
	    -- interfering with SELECT statements.

	    SET NOCOUNT ON;

	    -- Insert statements for procedure here

	    SET @UserID = (SELECT [i].[UserID] FROM [User].[Info] [i], [Store].[Employee] [e]
				    WHERE [i].[FirstName] = @FirstName AND
						[i].[LastName] = @LastName AND
						[e].[UserID] = [i].[UserID]);
	END;

GO
USE [BNSStore]
GO
/****** Object:  StoredProcedure [Store].[uspGetEmployeeID]    Script Date: 5/17/2015 5:38:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.11.6
-- Description:	Add Translation
-- =============================================

CREATE PROCEDURE [Store].[uspGetEmployeeID]
	  @FirstName nvarchar(100) = NULL,
	  @LastName nvarchar(100) = NULL,
	  @UserID int = NULL OUTPUT
AS
	BEGIN
	    -- SET NOCOUNT ON added to prevent extra result sets from
	    -- interfering with SELECT statements.

	    SET NOCOUNT ON;

	    -- Insert statements for procedure here

	    SET @UserID = (SELECT [i].[UserID] FROM [User].[Info] [i], [Store].[Employee] [e]
				    WHERE [i].[FirstName] = @FirstName AND
						[i].[LastName] = @LastName AND
						[e].[UserID] = [i].[UserID]);
	END;

GO
