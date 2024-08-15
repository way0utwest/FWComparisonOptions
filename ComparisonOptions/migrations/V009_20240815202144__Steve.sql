SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating sequences'
GO
CREATE SEQUENCE [dbo].[CompanyInfoSeq]
AS int
START WITH 1
INCREMENT BY 1
MINVALUE -2147483648
MAXVALUE 2147483647
NO CYCLE
CACHE 
GO
PRINT N'Creating [dbo].[CompanyInfo]'
GO
CREATE TABLE [dbo].[CompanyInfo]
(
[CompanyID] [int] NOT NULL CONSTRAINT [DF__CompanyIn__Compa__08B54D69] DEFAULT (NEXT VALUE FOR [dbo].[CompanyInfoSeq]),
[CompanyName] [varchar] (100) NULL,
[RegistrationNumber] [varchar] (50) NULL,
[EstablishedDate] [date] NULL
)
GO
PRINT N'Creating primary key [PK__CompanyI__2D971C4C7D34E1BC] on [dbo].[CompanyInfo]'
GO
ALTER TABLE [dbo].[CompanyInfo] ADD CONSTRAINT [PK__CompanyI__2D971C4C7D34E1BC] PRIMARY KEY CLUSTERED ([CompanyID])
GO
PRINT N'Creating [dbo].[CompanyAddress]'
GO
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
PRINT N'Creating primary key [PK__CompanyA__091C2A1BB959F782] on [dbo].[CompanyAddress]'
GO
ALTER TABLE [dbo].[CompanyAddress] ADD CONSTRAINT [PK__CompanyA__091C2A1BB959F782] PRIMARY KEY CLUSTERED ([AddressID])
GO
PRINT N'Adding foreign keys to [dbo].[CompanyAddress]'
GO
ALTER TABLE [dbo].[CompanyAddress] ADD CONSTRAINT [FK__CompanyAd__Compa__0B91BA14] FOREIGN KEY ([CompanyID]) REFERENCES [dbo].[CompanyInfo] ([CompanyID])
GO

SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

