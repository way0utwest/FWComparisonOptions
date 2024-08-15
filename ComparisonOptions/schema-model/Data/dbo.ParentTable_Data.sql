SET IDENTITY_INSERT [dbo].[ParentTable] ON
INSERT INTO [dbo].[ParentTable] ([SomeID], [SomeName], [OrderValue], [AStatus], [MyDate]) VALUES (1, 'Andrew', 1, 'Active', '2024-02-12 00:00:00.000')
INSERT INTO [dbo].[ParentTable] ([SomeID], [SomeName], [OrderValue], [AStatus], [MyDate]) VALUES (2, 'Steve', 2, 'Active', '2024-04-12 00:00:00.000')
INSERT INTO [dbo].[ParentTable] ([SomeID], [SomeName], [OrderValue], [AStatus], [MyDate]) VALUES (3, 'Paul', 3, 'Active', '2024-04-18 00:00:00.000')
INSERT INTO [dbo].[ParentTable] ([SomeID], [SomeName], [OrderValue], [AStatus], [MyDate]) VALUES (4, 'Jake', 5, 'Future', NULL)
INSERT INTO [dbo].[ParentTable] ([SomeID], [SomeName], [OrderValue], [AStatus], [MyDate]) VALUES (5, 'Ryan', 8, 'REDGATE', '2024-08-15 14:02:14.937')
SET IDENTITY_INSERT [dbo].[ParentTable] OFF
