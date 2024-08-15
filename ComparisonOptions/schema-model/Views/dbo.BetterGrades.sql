SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[BetterGrades]
AS
SELECT newgrade FROM dbo.GradeMap AS gm WHERE newgrade > gm.OldGrade;
GO
