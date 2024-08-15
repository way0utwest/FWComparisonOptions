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
ALTER TABLE [dbo].[ChildTable] ADD CONSTRAINT [ChildTablePK] PRIMARY KEY CLUSTERED ([ChildTableID])
GO
ALTER TABLE [dbo].[ChildTable] ADD CONSTRAINT [Child_Parent_FK] FOREIGN KEY ([ParentTableID]) REFERENCES [dbo].[ParentTable] ([SomeID])
GO
