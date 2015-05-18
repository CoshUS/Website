USE [BNSStore]
GO
/****** Object:  StoredProcedure [Store].[uspDelCategory]    Script Date: 5/18/2015 12:56:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.11.6
-- Description:	Add Translation
-- =============================================

CREATE PROCEDURE [Store].[uspDelCategory]
    @CategoryID tinyint = NULL,
    @CategoryName varchar(100) = NULL
AS
	BEGIN
	    -- SET NOCOUNT ON added to prevent extra result sets from
	    -- interfering with SELECT statements.

	    SET NOCOUNT ON;

	    -- Insert statements for procedure here

	    IF @CategoryID IS NULL
	    BEGIN
		  EXEC Store.uspGetCategoryID @CategoryID = @CategoryID OUTPUT, @CategoryName = @CategoryName;
	    END

	    DELETE FROM Store.ProductCategory WHERE CategoryID = @CategoryID
	END;

GO
