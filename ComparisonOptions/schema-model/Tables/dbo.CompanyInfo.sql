CREATE TABLE [dbo].[CompanyInfo]
(
[CompanyID] [int] NOT NULL CONSTRAINT [DF__CompanyIn__Compa__08B54D69] DEFAULT (NEXT VALUE FOR [dbo].[CompanyInfoSeq]),
[CompanyName] [varchar] (100) NULL,
[RegistrationNumber] [varchar] (50) NULL,
[EstablishedDate] [date] NULL
)
GO
ALTER TABLE [dbo].[CompanyInfo] ADD CONSTRAINT [PK__CompanyI__2D971C4C7D34E1BC] PRIMARY KEY CLUSTERED ([CompanyID])
GO
