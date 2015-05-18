USE [BNSStore]
GO
/****** Object:  StoredProcedure [Store].[uspAddMarkAndComment]    Script Date: 5/18/2015 12:56:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.11.6
-- Description:	Add Translation
-- =============================================
CREATE PROCEDURE [Store].[uspAddMarkAndComment]
	@Date date = NULL,
	@UserID int = NULL,
	@Store char = NULL,
	@Mark tinyint = NULL,
	@Comment nvarchar(MAX) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Store.Schedule SET Mark = @Mark, Comment = @Comment WHERE [Date] = @Date AND UserID = @UserID AND Store = @Store;
END

GO
