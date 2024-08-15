CREATE TABLE [dbo].[Question]
(
[questionid] [int] NOT NULL IDENTITY(1, 1),
[questiontext] [varchar] (500) NULL,
[questionorder] [smallint] NULL,
[freeform] [bit] NULL
)
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [QuestionPK] PRIMARY KEY CLUSTERED ([questionid])
GO
