USE [BNSStore]
GO
/****** Object:  StoredProcedure [Store].[uspUpdateMarkAndComment]    Script Date: 5/17/2015 4:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.11.6
-- Description:	Add Translation
-- =============================================

CREATE PROCEDURE [Store].[uspUpdateMarkAndComment]
	  @Username varchar(100) = NULL,
	  @UserID int = NULL,
	  @Date date = NULL,
	  @Mark tinyint = NULL,
	  @Comment nvarchar(max) = NULL
AS
	BEGIN
	    -- SET NOCOUNT ON added to prevent extra result sets from
	    -- interfering with SELECT statements.

	    SET NOCOUNT ON;

	    -- Insert statements for procedure here

	    IF @UserID IS NULL
		   BEGIN EXEC [User].[uspGetUserID]
				    @Username = @Username,
				    @UserID = @UserID OUTPUT;
		   END;

	    UPDATE [Store].[Schedule]
		 SET [Mark] = @Mark, [Comment] = @Comment
	    WHERE [Date] = @Date AND
			[UserID] = @UserID;
	END;

GO
USE [BNSStore]
GO
/****** Object:  StoredProcedure [Store].[uspUpdateMarkAndComment]    Script Date: 5/17/2015 5:38:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.11.6
-- Description:	Add Translation
-- =============================================

CREATE PROCEDURE [Store].[uspUpdateMarkAndComment]
	  @Username varchar(100) = NULL,
	  @UserID int = NULL,
	  @Date date = NULL,
	  @Mark tinyint = NULL,
	  @Comment nvarchar(max) = NULL
AS
	BEGIN
	    -- SET NOCOUNT ON added to prevent extra result sets from
	    -- interfering with SELECT statements.

	    SET NOCOUNT ON;

	    -- Insert statements for procedure here

	    IF @UserID IS NULL
		   BEGIN EXEC [User].[uspGetUserID]
				    @Username = @Username,
				    @UserID = @UserID OUTPUT;
		   END;

	    UPDATE [Store].[Schedule]
		 SET [Mark] = @Mark, [Comment] = @Comment
	    WHERE [Date] = @Date AND
			[UserID] = @UserID;
	END;

GO
