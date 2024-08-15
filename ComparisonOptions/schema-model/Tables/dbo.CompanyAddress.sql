CREATE TABLE [dbo].[CompanyAddress]
(
[AddressID] [int] NOT NULL IDENTITY(1, 1),
[CompanyID] [int] NOT NULL,
[Address1] [varchar] (100) NULL,
[Address2] [varchar] (100) NULL,
[City] [varchar] (50) NULL,
[StateID] [int] NULL,
[CountryCode] [varchar] (3) NULL
)
GO
ALTER TABLE [dbo].[CompanyAddress] ADD CONSTRAINT [PK__CompanyA__091C2A1BB959F782] PRIMARY KEY CLUSTERED ([AddressID])
GO
ALTER TABLE [dbo].[CompanyAddress] ADD CONSTRAINT [FK__CompanyAd__Compa__0B91BA14] FOREIGN KEY ([CompanyID]) REFERENCES [dbo].[CompanyInfo] ([CompanyID])
GO
