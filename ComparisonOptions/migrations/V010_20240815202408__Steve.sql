SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

PRINT(N'Add 3 rows to [dbo].[CompanyInfo]')
INSERT INTO [dbo].[CompanyInfo] ([CompanyID], [CompanyName], [RegistrationNumber], [EstablishedDate]) VALUES (1, 'Company A', '123456', '2000-01-01')
INSERT INTO [dbo].[CompanyInfo] ([CompanyID], [CompanyName], [RegistrationNumber], [EstablishedDate]) VALUES (2, 'Company B', '789101', '2005-05-15')
INSERT INTO [dbo].[CompanyInfo] ([CompanyID], [CompanyName], [RegistrationNumber], [EstablishedDate]) VALUES (3, 'Company C', '112131', '2010-10-20')

PRINT(N'Add 6 rows to [dbo].[CompanyAddress]')
SET IDENTITY_INSERT [dbo].[CompanyAddress] ON
INSERT INTO [dbo].[CompanyAddress] ([AddressID], [CompanyID], [Address1], [Address2], [City], [StateID], [CountryCode]) VALUES (1, 1, '100 Main St.', NULL, 'Metropolis', 1, 'USA')
INSERT INTO [dbo].[CompanyAddress] ([AddressID], [CompanyID], [Address1], [Address2], [City], [StateID], [CountryCode]) VALUES (2, 1, '101 Main St.', 'Unit 2', 'Metropolis', 1, 'USA')
INSERT INTO [dbo].[CompanyAddress] ([AddressID], [CompanyID], [Address1], [Address2], [City], [StateID], [CountryCode]) VALUES (3, 2, '200 Oak Ave.', NULL, 'Gotham', 2, 'USA')
INSERT INTO [dbo].[CompanyAddress] ([AddressID], [CompanyID], [Address1], [Address2], [City], [StateID], [CountryCode]) VALUES (4, 2, '201 Oak Ave.', 'Apt 3', 'Gotham', 2, 'USA')
INSERT INTO [dbo].[CompanyAddress] ([AddressID], [CompanyID], [Address1], [Address2], [City], [StateID], [CountryCode]) VALUES (5, 3, '300 Pine Rd.', NULL, 'Star City', 3, 'USA')
INSERT INTO [dbo].[CompanyAddress] ([AddressID], [CompanyID], [Address1], [Address2], [City], [StateID], [CountryCode]) VALUES (6, 3, '301 Pine Rd.', 'Suite 4', 'Star City', 3, 'USA')
SET IDENTITY_INSERT [dbo].[CompanyAddress] OFF

