SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

PRINT(N'Add 1 row to [dbo].[CompanyInfo]')
INSERT INTO [dbo].[CompanyInfo] ([CompanyID], [CompanyName], [RegistrationNumber], [EstablishedDate]) VALUES (9, 'Company D', '84-24333', '2024-06-01')

PRINT(N'Add 1 row to [dbo].[CompanyAddress]')
SET IDENTITY_INSERT [dbo].[CompanyAddress] ON
INSERT INTO [dbo].[CompanyAddress] ([AddressID], [CompanyID], [Address1], [Address2], [City], [StateID], [CountryCode]) VALUES (7, 9, '54 Bluebonnet Ct', NULL, 'Parker', 6, NULL)
SET IDENTITY_INSERT [dbo].[CompanyAddress] OFF

