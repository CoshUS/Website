USE [BNSStore]
GO
/****** Object:  StoredProcedure [Svc].[uspGetProviderID]    Script Date: 5/17/2015 4:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.9.13
-- Description:	Create simple user
-- =============================================
CREATE PROCEDURE [Svc].[uspGetProviderID]
	@ProviderName varchar(100) = NULL,
	@ProviderID int = NULL OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @ProviderID = (SELECT ProviderID FROM Svc.Provider WHERE ProviderName = @ProviderName)
END

GO
USE [BNSStore]
GO
/****** Object:  StoredProcedure [Svc].[uspGetProviderID]    Script Date: 5/17/2015 5:38:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Cosh_
-- Create date: 2014.9.13
-- Description:	Create simple user
-- =============================================
CREATE PROCEDURE [Svc].[uspGetProviderID]
	@ProviderName varchar(100) = NULL,
	@ProviderID int = NULL OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SET @ProviderID = (SELECT ProviderID FROM Svc.Provider WHERE ProviderName = @ProviderName)
END

GO
