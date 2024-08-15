SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating schemas'
GO
IF SCHEMA_ID(N'auditing') IS NULL
EXEC sp_executesql N'CREATE SCHEMA [auditing]
AUTHORIZATION [dbo]'
GO
PRINT N'Creating [dbo].[GradeMap]'
GO
CREATE TABLE [dbo].[GradeMap]
(
[OldGrade] [char] (1) NOT NULL,
[NewGrade] [char] (1) NOT NULL
)
GO
PRINT N'Creating primary key [PK__GradeMap__1B7831302C51D2E5] on [dbo].[GradeMap]'
GO
ALTER TABLE [dbo].[GradeMap] ADD CONSTRAINT [PK__GradeMap__1B7831302C51D2E5] PRIMARY KEY CLUSTERED ([OldGrade])
GO
PRINT N'Creating [dbo].[BetterGrades]'
GO
CREATE VIEW [dbo].[BetterGrades]
AS
SELECT newgrade FROM dbo.GradeMap AS gm WHERE newgrade > gm.OldGrade;
GO
PRINT N'Creating [auditing].[customer]'
GO
CREATE TABLE [auditing].[customer]
(
[CustomerID] [int] NOT NULL,
[CustomerName] [varchar] (20) NULL,
[ModifiedDate] [datetime] NULL
)
GO
PRINT N'Creating [dbo].[Answer]'
GO
CREATE TABLE [dbo].[Answer]
(
[AnswerID] [int] NOT NULL IDENTITY(1, 1),
[AnswerValue] [char] (1) NULL,
[UserID] [int] NULL
)
GO
PRINT N'Creating primary key [AnswerPK] on [dbo].[Answer]'
GO
ALTER TABLE [dbo].[Answer] ADD CONSTRAINT [AnswerPK] PRIMARY KEY CLUSTERED ([AnswerID])
GO
PRINT N'Creating [dbo].[MyTable]'
GO
CREATE TABLE [dbo].[MyTable]
(
[MyID] [int] NOT NULL,
[Mychar] [varchar] (20) NULL,
[Myint] [int] NOT NULL
)
GO
PRINT N'Creating index [IDX_mychar] on [dbo].[MyTable]'
GO
CREATE NONCLUSTERED INDEX [IDX_mychar] ON [dbo].[MyTable] ([Mychar])
GO
PRINT N'Creating [dbo].[Question]'
GO
CREATE TABLE [dbo].[Question]
(
[questionid] [int] NOT NULL IDENTITY(1, 1),
[questiontext] [varchar] (500) NULL,
[questionorder] [smallint] NULL,
[freeform] [bit] NULL
)
GO
PRINT N'Creating primary key [QuestionPK] on [dbo].[Question]'
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [QuestionPK] PRIMARY KEY CLUSTERED ([questionid])
GO
PRINT N'Creating [dbo].[StudentGrade]'
GO
CREATE TABLE [dbo].[StudentGrade]
(
[StudentGradeID] [int] NOT NULL,
[StudentID] [int] NULL,
[Grade] [char] (1) NULL
)
GO
PRINT N'Creating primary key [StudentGradePK] on [dbo].[StudentGrade]'
GO
ALTER TABLE [dbo].[StudentGrade] ADD CONSTRAINT [StudentGradePK] PRIMARY KEY CLUSTERED ([StudentGradeID])
GO

