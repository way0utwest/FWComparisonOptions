SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

PRINT(N'Add 3 rows to [dbo].[ParentTable]')
SET IDENTITY_INSERT [dbo].[ParentTable] ON
INSERT INTO [dbo].[ParentTable] ([SomeID], [SomeName], [OrderValue], [AStatus], [MyDate]) VALUES (1, 'Andrew', 1, 'Active', '2024-02-12 00:00:00.000')
INSERT INTO [dbo].[ParentTable] ([SomeID], [SomeName], [OrderValue], [AStatus], [MyDate]) VALUES (2, 'Steve', 2, 'Active', '2024-04-12 00:00:00.000')
INSERT INTO [dbo].[ParentTable] ([SomeID], [SomeName], [OrderValue], [AStatus], [MyDate]) VALUES (3, 'Paul', 3, 'Active', '2024-04-18 00:00:00.000')
SET IDENTITY_INSERT [dbo].[ParentTable] OFF

PRINT(N'Add 10 rows to [dbo].[ChildTable]')
SET IDENTITY_INSERT [dbo].[ChildTable] ON
INSERT INTO [dbo].[ChildTable] ([ChildTableID], [ParentTableID], [address1], [address2], [City], [StateID], [countrycode]) VALUES (1, 1, '123 Maple St.', NULL, 'Springfield', 1, 'USA')
INSERT INTO [dbo].[ChildTable] ([ChildTableID], [ParentTableID], [address1], [address2], [City], [StateID], [countrycode]) VALUES (2, 1, '124 Maple St.', NULL, 'Shelbyville', 2, 'CAN')
INSERT INTO [dbo].[ChildTable] ([ChildTableID], [ParentTableID], [address1], [address2], [City], [StateID], [countrycode]) VALUES (3, 2, '125 Oak St.', 'Apt 1', 'Springfield', 1, 'USA')
INSERT INTO [dbo].[ChildTable] ([ChildTableID], [ParentTableID], [address1], [address2], [City], [StateID], [countrycode]) VALUES (4, 2, '126 Oak St.', 'Apt 2', 'Shelbyville', 2, 'CAN')
INSERT INTO [dbo].[ChildTable] ([ChildTableID], [ParentTableID], [address1], [address2], [City], [StateID], [countrycode]) VALUES (5, 3, '127 Pine St.', NULL, 'Springfield', 1, 'USA')
INSERT INTO [dbo].[ChildTable] ([ChildTableID], [ParentTableID], [address1], [address2], [City], [StateID], [countrycode]) VALUES (6, 3, '128 Pine St.', NULL, 'Shelbyville', 2, 'CAN')
INSERT INTO [dbo].[ChildTable] ([ChildTableID], [ParentTableID], [address1], [address2], [City], [StateID], [countrycode]) VALUES (7, 3, '129 Birch St.', NULL, 'Springfield', 1, 'USA')
INSERT INTO [dbo].[ChildTable] ([ChildTableID], [ParentTableID], [address1], [address2], [City], [StateID], [countrycode]) VALUES (8, 2, '130 Cedar St.', NULL, 'Shelbyville', 2, 'CAN')
INSERT INTO [dbo].[ChildTable] ([ChildTableID], [ParentTableID], [address1], [address2], [City], [StateID], [countrycode]) VALUES (9, 1, '131 Cedar St.', NULL, 'Springfield', 1, 'USA')
INSERT INTO [dbo].[ChildTable] ([ChildTableID], [ParentTableID], [address1], [address2], [City], [StateID], [countrycode]) VALUES (10, 2, '132 Elm St.', NULL, 'Shelbyville', 2, 'CAN')
SET IDENTITY_INSERT [dbo].[ChildTable] OFF

