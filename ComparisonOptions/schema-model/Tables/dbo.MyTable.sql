CREATE TABLE [dbo].[MyTable]
(
[MyID] [int] NOT NULL,
[Mychar] [varchar] (20) NULL,
[Myint] [int] NOT NULL
)
GO
CREATE NONCLUSTERED INDEX [IDX_mychar] ON [dbo].[MyTable] ([Mychar])
GO
