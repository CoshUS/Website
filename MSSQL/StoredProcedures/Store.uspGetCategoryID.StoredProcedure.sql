USE [BNSStore]
GO
/****** Object:  StoredProcedure [Store].[uspGetCategoryID]    Script Date: 5/17/2015 5:38:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.11.6
-- Description:	Add Translation
-- =============================================

CREATE PROCEDURE [Store].[uspGetCategoryID]
    @CategoryID tinyint = NULL OUTPUT,
    @CategoryName varchar(100) = NULL 
AS
	BEGIN
	    -- SET NOCOUNT ON added to prevent extra result sets from
	    -- interfering with SELECT statements.

	    SET NOCOUNT ON;

	    -- Insert statements for procedure here

	    SET @CategoryID = (SELECT CategoryID FROM Store.ProductCategory WHERE CategoryName = @CategoryName)
	END;


GO
