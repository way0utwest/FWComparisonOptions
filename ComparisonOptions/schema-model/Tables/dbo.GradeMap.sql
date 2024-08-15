CREATE TABLE [dbo].[GradeMap]
(
[OldGrade] [char] (1) NOT NULL,
[NewGrade] [char] (1) NOT NULL
)
GO
ALTER TABLE [dbo].[GradeMap] ADD CONSTRAINT [PK__GradeMap__1B7831302C51D2E5] PRIMARY KEY CLUSTERED ([OldGrade])
GO
