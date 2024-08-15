CREATE TABLE [dbo].[StudentGrade]
(
[StudentGradeID] [int] NOT NULL,
[StudentID] [int] NULL,
[Grade] [char] (1) NULL
)
GO
ALTER TABLE [dbo].[StudentGrade] ADD CONSTRAINT [StudentGradePK] PRIMARY KEY CLUSTERED ([StudentGradeID])
GO
