SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

PRINT(N'Add 1 row to [dbo].[ParentTable]')
SET IDENTITY_INSERT [dbo].[ParentTable] ON
INSERT INTO [dbo].[ParentTable] ([SomeID], [SomeName], [OrderValue], [AStatus], [MyDate]) VALUES (4, 'Jake', 5, 'Future', NULL)
SET IDENTITY_INSERT [dbo].[ParentTable] OFF

PRINT(N'Add 3 rows to [dbo].[ChildTable]')
SET IDENTITY_INSERT [dbo].[ChildTable] ON
INSERT INTO [dbo].[ChildTable] ([ChildTableID], [ParentTableID], [address1], [address2], [City], [StateID], [countrycode]) VALUES (11, 4, '123 My St', NULL, 'Denver', 4, 'USA')
INSERT INTO [dbo].[ChildTable] ([ChildTableID], [ParentTableID], [address1], [address2], [City], [StateID], [countrycode]) VALUES (12, 4, '456 Old Stone Ave', NULL, 'Littleton', 4, 'USA')
INSERT INTO [dbo].[ChildTable] ([ChildTableID], [ParentTableID], [address1], [address2], [City], [StateID], [countrycode]) VALUES (13, 4, '165 Colorado Blvd', 'Suite 10', 'Pasadena', 3, 'USA')
SET IDENTITY_INSERT [dbo].[ChildTable] OFF

