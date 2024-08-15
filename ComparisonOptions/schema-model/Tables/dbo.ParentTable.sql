CREATE TABLE [dbo].[ParentTable]
(
[SomeID] [int] NOT NULL IDENTITY(1, 1),
[SomeName] [varchar] (20) NULL,
[OrderValue] [tinyint] NULL,
[AStatus] [varchar] (20) NULL,
[MyDate] [datetime] NULL
)
GO
ALTER TABLE [dbo].[ParentTable] ADD CONSTRAINT [ParentTablePK] PRIMARY KEY CLUSTERED ([SomeID])
GO
