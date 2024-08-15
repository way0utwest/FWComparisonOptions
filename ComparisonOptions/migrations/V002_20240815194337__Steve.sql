SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[ParentTable]'
GO
CREATE TABLE [dbo].[ParentTable]
(
[SomeID] [int] NOT NULL IDENTITY(1, 1),
[SomeName] [varchar] (20) NULL,
[OrderValue] [tinyint] NULL,
[AStatus] [varchar] (20) NULL,
[MyDate] [datetime] NULL
)
GO
PRINT N'Creating primary key [ParentTablePK] on [dbo].[ParentTable]'
GO
ALTER TABLE [dbo].[ParentTable] ADD CONSTRAINT [ParentTablePK] PRIMARY KEY CLUSTERED ([SomeID])
GO

