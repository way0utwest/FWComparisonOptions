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
INSERT INTO [dbo].[ParentTable] ([SomeID], [SomeName], [OrderValue], [AStatus], [MyDate]) VALUES (5, 'Ryan', 6, 'Design', '2024-08-15 14:02:14.937')
SET IDENTITY_INSERT [dbo].[ParentTable] OFF

