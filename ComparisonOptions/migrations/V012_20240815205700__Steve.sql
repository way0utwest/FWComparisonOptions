SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

PRINT(N'Update 1 row in [dbo].[ParentTable]')
UPDATE [dbo].[ParentTable] SET [AStatus]='REDGATE' WHERE [SomeID] = 5

PRINT(N'Add 1 row to [dbo].[CompanyInfo]')
INSERT INTO [dbo].[CompanyInfo] ([CompanyID], [CompanyName], [RegistrationNumber], [EstablishedDate]) VALUES (10, 'Company E', '84345354353', '2024-06-01')

