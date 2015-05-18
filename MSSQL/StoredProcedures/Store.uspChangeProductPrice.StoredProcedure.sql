USE [BNSStore]
GO
/****** Object:  StoredProcedure [Store].[uspChangeProductPrice]    Script Date: 5/18/2015 12:56:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.11.6
-- Description:	Add Translation
-- =============================================

CREATE PROCEDURE [Store].[uspChangeProductPrice]
    @ProductID smallint = NULL,
    @ProductName varchar(100) = NULL,
    @ProductPrice smallmoney = NULL
AS
	BEGIN
	    -- SET NOCOUNT ON added to prevent extra result sets from
	    -- interfering with SELECT statements.

	    SET NOCOUNT ON;

	    -- Insert statements for procedure here

	    IF @ProductID IS NULL
	    BEGIN
		  EXEC Store.uspGetProductID @ProductID = @ProductID OUTPUT, @ProductName = @ProductName
	    END

	    UPDATE Store.Product SET ProductPrice = @ProductPrice WHERE ProductID = @ProductID
	END;

GO
