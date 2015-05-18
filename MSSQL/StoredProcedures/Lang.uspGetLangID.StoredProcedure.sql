USE [BNSStore]
GO
/****** Object:  StoredProcedure [Lang].[uspGetLangID]    Script Date: 5/18/2015 12:56:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.9.13
-- Description:	Create simple user
-- =============================================
CREATE PROCEDURE [Lang].[uspGetLangID]
	@LangID tinyint = NULL OUTPUT,
	@LangName varchar(100) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @LangName IS NOT NULL
	BEGIN
		SET @LangID = (SELECT LangID FROM Lang.LangList WHERE LangName = @LangName)
	END
END

GO
