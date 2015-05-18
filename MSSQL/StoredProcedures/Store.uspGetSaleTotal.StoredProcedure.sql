USE [BNSStore]
GO
/****** Object:  StoredProcedure [Store].[uspGetSaleTotal]    Script Date: 5/18/2015 12:56:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.11.6
-- Description:	Add Translation

-- =============================================
CREATE PROCEDURE [Store].[uspGetSaleTotal]
	@Store char = NULL,
	@Date date = NULL,
	@Total smallmoney = NULL OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	IF @Date IS NULL
	BEGIN
		SET @Date = CONVERT(date, GETDATE());
	END

	SET @Total = (SELECT SUM(((ProductPrice * [Count]) + (EmployeePrice * EmployeeCount))) AS Total FROM Store.Sale WHERE [Date] = @Date AND Store = @Store);
	IF @Total IS NULL
	BEGIN
		SET @Total = 0
	END
END

GO
