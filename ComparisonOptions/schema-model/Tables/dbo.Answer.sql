CREATE TABLE [dbo].[Answer]
(
[AnswerID] [int] NOT NULL IDENTITY(1, 1),
[AnswerValue] [char] (1) NULL,
[UserID] [int] NULL
)
GO
ALTER TABLE [dbo].[Answer] ADD CONSTRAINT [AnswerPK] PRIMARY KEY CLUSTERED ([AnswerID])
GO
