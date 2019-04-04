USE TestDb2
GO

/*
Run this script on:

CMTOWDGMOSSQL01.TestDb2    -  This database will be modified

to synchronize it with:

CMTOWDGMOSSQL01.TestDb

You are recommended to back up your database before running this script

Script created by SQL Data Compare version 13.7.3.9483 from Red Gate Software Ltd at 4/4/2019 1:22:52 PM

*/
		
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL Serializable
GO
BEGIN TRANSACTION

PRINT(N'Drop constraints from [dbo].[Courses]')
ALTER TABLE [dbo].[Courses] NOCHECK CONSTRAINT [FK_Courses_CourseList]
ALTER TABLE [dbo].[Courses] NOCHECK CONSTRAINT [FK_courses_courses]

PRINT(N'Add 5 rows to [dbo].[CourseList]')
SET IDENTITY_INSERT [dbo].[CourseList] ON
INSERT INTO [dbo].[CourseList] ([CourseListId], [CourseName]) VALUES (1, 'Math 1')
INSERT INTO [dbo].[CourseList] ([CourseListId], [CourseName]) VALUES (2, 'History')
INSERT INTO [dbo].[CourseList] ([CourseListId], [CourseName]) VALUES (3, 'English')
INSERT INTO [dbo].[CourseList] ([CourseListId], [CourseName]) VALUES (4, 'Philosophy 1')
INSERT INTO [dbo].[CourseList] ([CourseListId], [CourseName]) VALUES (6, 'Gym (advanced squatting)')
SET IDENTITY_INSERT [dbo].[CourseList] OFF

PRINT(N'Add 12 rows to [dbo].[Students]')
SET IDENTITY_INSERT [dbo].[Students] ON
INSERT INTO [dbo].[Students] ([StudentId], [FirstName], [LastName], [Grade], [Major], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (1, 'John', 'Rossi', 'Freshman', 'IT', '2019-04-03 17:47:51.793', NULL, '2019-04-04 08:30:13.163', 'Mark')
INSERT INTO [dbo].[Students] ([StudentId], [FirstName], [LastName], [Grade], [Major], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (3, 'Joe', 'Shmoe', 'Sophomore', 'Science', '2019-04-03 18:27:09.107', NULL, '2019-04-04 00:00:00.000', 'Mark')
INSERT INTO [dbo].[Students] ([StudentId], [FirstName], [LastName], [Grade], [Major], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (4, 'Sam', 'Harris', 'Freshman', '', '2019-04-03 22:41:30.080', NULL, '2019-04-04 00:00:00.000', 'Mark')
INSERT INTO [dbo].[Students] ([StudentId], [FirstName], [LastName], [Grade], [Major], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (5, 'Peter', 'Peteresn', 'Freshman', 'English', '2019-04-03 22:46:43.437', NULL, '2019-04-04 08:54:18.760', 'Mark')
INSERT INTO [dbo].[Students] ([StudentId], [FirstName], [LastName], [Grade], [Major], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (6, 'Steve', 'Austin', 'Freshman', '', '2019-04-03 22:48:37.010', NULL, '2019-04-04 00:00:00.000', 'Mark')
INSERT INTO [dbo].[Students] ([StudentId], [FirstName], [LastName], [Grade], [Major], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (7, 'appollo', 'creed', 'Freshman', '', '2019-04-03 22:51:15.820', NULL, '2019-04-04 06:26:55.737', 'Mark')
INSERT INTO [dbo].[Students] ([StudentId], [FirstName], [LastName], [Grade], [Major], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (8, 'jj', 'jj', 'Freshman', '', '2019-04-03 22:56:03.877', NULL, '2019-04-04 00:00:00.000', 'Mark')
INSERT INTO [dbo].[Students] ([StudentId], [FirstName], [LastName], [Grade], [Major], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (9, 'mary', 'contrary', 'Freshman', '', '2019-04-03 22:58:36.683', NULL, '2019-04-04 00:00:00.000', 'Mark')
INSERT INTO [dbo].[Students] ([StudentId], [FirstName], [LastName], [Grade], [Major], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (10, 'dick', 'mcgricj', 'Freshman', '', '2019-04-03 23:00:06.870', NULL, '2019-04-04 00:00:00.000', 'Mark')
INSERT INTO [dbo].[Students] ([StudentId], [FirstName], [LastName], [Grade], [Major], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (11, 'tim', 'sadasd', 'Freshman', 'Math', '2019-04-03 23:02:17.690', NULL, '2019-04-04 00:00:00.000', 'Mark')
INSERT INTO [dbo].[Students] ([StudentId], [FirstName], [LastName], [Grade], [Major], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (13, 'Bob', 'Roy', 'Freshman', 'Chemistry', '2019-04-04 08:54:43.797', NULL, '2019-04-04 00:00:00.000', 'Mark')
INSERT INTO [dbo].[Students] ([StudentId], [FirstName], [LastName], [Grade], [Major], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (14, 'Mark', 'Sampson', 'Freshman', 'Criminal Justice', '2019-04-04 10:05:38.707', NULL, '2019-04-04 10:05:53.223', 'Mark')
SET IDENTITY_INSERT [dbo].[Students] OFF

PRINT(N'Add 17 rows to [dbo].[Courses]')
SET IDENTITY_INSERT [dbo].[Courses] ON
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (6, 2, 1, '2019-04-03 21:57:54.533', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (10, 2, 9, '2019-04-03 22:58:58.423', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (12, 1, 11, '2019-04-03 23:02:27.553', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (13, 2, 11, '2019-04-03 23:02:27.573', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (14, 3, 11, '2019-04-03 23:02:27.597', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (19, 1, 5, '2019-04-03 23:19:25.607', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (20, 2, 5, '2019-04-03 23:19:25.643', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (21, 3, 5, '2019-04-03 23:19:25.667', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (22, 1, 7, '2019-04-04 06:26:55.983', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (23, 2, 7, '2019-04-04 06:26:56.013', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (24, 3, 7, '2019-04-04 06:26:56.033', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (25, 4, 1, '2019-04-04 08:30:13.457', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (26, 4, 5, '2019-04-04 08:54:19.023', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (27, 2, 13, '2019-04-04 08:54:44.470', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (28, 3, 13, '2019-04-04 08:54:44.490', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (29, 2, 14, '2019-04-04 10:05:53.407', 'jrossi', NULL, NULL)
INSERT INTO [dbo].[Courses] ([CourseId], [CourseListId], [StudentId], [DateCreated], [CreatedBy], [DateUpdated], [UpdatedBy]) VALUES (30, 3, 14, '2019-04-04 10:05:53.427', 'jrossi', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Courses] OFF

PRINT(N'Add constraints to [dbo].[Courses]')
ALTER TABLE [dbo].[Courses] WITH CHECK CHECK CONSTRAINT [FK_Courses_CourseList]
ALTER TABLE [dbo].[Courses] WITH CHECK CHECK CONSTRAINT [FK_courses_courses]
COMMIT TRANSACTION
GO
