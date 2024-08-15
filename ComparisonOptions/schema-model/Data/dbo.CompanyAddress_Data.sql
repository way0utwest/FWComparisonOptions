SET IDENTITY_INSERT [dbo].[CompanyAddress] ON
INSERT INTO [dbo].[CompanyAddress] ([AddressID], [CompanyID], [Address1], [Address2], [City], [StateID], [CountryCode]) VALUES (1, 1, '100 Main St.', NULL, 'Metropolis', 1, 'USA')
INSERT INTO [dbo].[CompanyAddress] ([AddressID], [CompanyID], [Address1], [Address2], [City], [StateID], [CountryCode]) VALUES (2, 1, '101 Main St.', 'Unit 2', 'Metropolis', 1, 'USA')
INSERT INTO [dbo].[CompanyAddress] ([AddressID], [CompanyID], [Address1], [Address2], [City], [StateID], [CountryCode]) VALUES (3, 2, '200 Oak Ave.', NULL, 'Gotham', 2, 'USA')
INSERT INTO [dbo].[CompanyAddress] ([AddressID], [CompanyID], [Address1], [Address2], [City], [StateID], [CountryCode]) VALUES (4, 2, '201 Oak Ave.', 'Apt 3', 'Gotham', 2, 'USA')
INSERT INTO [dbo].[CompanyAddress] ([AddressID], [CompanyID], [Address1], [Address2], [City], [StateID], [CountryCode]) VALUES (5, 3, '300 Pine Rd.', NULL, 'Star City', 3, 'USA')
INSERT INTO [dbo].[CompanyAddress] ([AddressID], [CompanyID], [Address1], [Address2], [City], [StateID], [CountryCode]) VALUES (6, 3, '301 Pine Rd.', 'Suite 4', 'Star City', 3, 'USA')
SET IDENTITY_INSERT [dbo].[CompanyAddress] OFF
