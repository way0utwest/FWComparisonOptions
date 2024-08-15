SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[ChildTable]'
GO
CREATE TABLE [dbo].[ChildTable]
(
[ChildTableID] [int] NOT NULL IDENTITY(1, 1),
[ParentTableID] [int] NULL,
[address1] [varchar] (100) NULL,
[address2] [varchar] (100) NULL,
[City] [varchar] (20) NULL,
[StateID] [int] NULL,
[countrycode] [varchar] (3) NULL
)
GO
PRINT N'Creating primary key [ChildTablePK] on [dbo].[ChildTable]'
GO
ALTER TABLE [dbo].[ChildTable] ADD CONSTRAINT [ChildTablePK] PRIMARY KEY CLUSTERED ([ChildTableID])
GO
PRINT N'Adding foreign keys to [dbo].[ChildTable]'
GO
ALTER TABLE [dbo].[ChildTable] ADD CONSTRAINT [Child_Parent_FK] FOREIGN KEY ([ParentTableID]) REFERENCES [dbo].[ParentTable] ([SomeID])
GO

