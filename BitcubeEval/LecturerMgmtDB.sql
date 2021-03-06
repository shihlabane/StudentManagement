/****** Object:  ForeignKey [FK__COURSE__degreeNa__2C3393D0]    Script Date: 04/24/2021 16:08:50 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__COURSE__degreeNa__2C3393D0]') AND parent_object_id = OBJECT_ID(N'[dbo].[COURSE]'))
ALTER TABLE [dbo].[COURSE] DROP CONSTRAINT [FK__COURSE__degreeNa__2C3393D0]
GO
/****** Object:  ForeignKey [FK__DEGREE__emailAdd__286302EC]    Script Date: 04/24/2021 16:08:50 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DEGREE__emailAdd__286302EC]') AND parent_object_id = OBJECT_ID(N'[dbo].[DEGREE]'))
ALTER TABLE [dbo].[DEGREE] DROP CONSTRAINT [FK__DEGREE__emailAdd__286302EC]
GO
/****** Object:  ForeignKey [FK__DEGREE__emailAdd__29572725]    Script Date: 04/24/2021 16:08:50 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DEGREE__emailAdd__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[DEGREE]'))
ALTER TABLE [dbo].[DEGREE] DROP CONSTRAINT [FK__DEGREE__emailAdd__29572725]
GO
/****** Object:  Table [dbo].[COURSE]    Script Date: 04/24/2021 16:08:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSE]') AND type in (N'U'))
DROP TABLE [dbo].[COURSE]
GO
/****** Object:  Table [dbo].[DEGREE]    Script Date: 04/24/2021 16:08:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEGREE]') AND type in (N'U'))
DROP TABLE [dbo].[DEGREE]
GO
/****** Object:  Table [dbo].[LECTURER]    Script Date: 04/24/2021 16:08:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LECTURER]') AND type in (N'U'))
DROP TABLE [dbo].[LECTURER]
GO
/****** Object:  Table [dbo].[STUDENT]    Script Date: 04/24/2021 16:08:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STUDENT]') AND type in (N'U'))
DROP TABLE [dbo].[STUDENT]
GO
/****** Object:  Table [dbo].[STUDENT]    Script Date: 04/24/2021 16:08:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STUDENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[STUDENT](
	[emailAddress_Student] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[forename] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[surname] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[dateOfBirth] [date] NOT NULL,
 CONSTRAINT [PK__STUDENT__0C1368E3E9CC768B] PRIMARY KEY CLUSTERED 
(
	[emailAddress_Student] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[STUDENT] ([emailAddress_Student], [forename], [surname], [dateOfBirth]) VALUES (N'gudani', N'ramashia', N'ramashia@vut.ac.za', CAST(0x03250B00 AS Date))
INSERT [dbo].[STUDENT] ([emailAddress_Student], [forename], [surname], [dateOfBirth]) VALUES (N'gudani@gmail.com', N'gudani', N'ramashia', CAST(0x38240B00 AS Date))
INSERT [dbo].[STUDENT] ([emailAddress_Student], [forename], [surname], [dateOfBirth]) VALUES (N'Mukhethwa', N'shihlabane', N'mukhethwa@vut.ac.za', CAST(0x03250B00 AS Date))
INSERT [dbo].[STUDENT] ([emailAddress_Student], [forename], [surname], [dateOfBirth]) VALUES (N'mukhethwa@vut.ac.za', N'Mukhethwa', N'shihlabane', CAST(0x03250B00 AS Date))
INSERT [dbo].[STUDENT] ([emailAddress_Student], [forename], [surname], [dateOfBirth]) VALUES (N'nancy', N'ramashia', N'nancy@vut.ac.za', CAST(0x03250B00 AS Date))
INSERT [dbo].[STUDENT] ([emailAddress_Student], [forename], [surname], [dateOfBirth]) VALUES (N'nancy@gmail.com', N'nancy', N'ramashia', CAST(0x38240B00 AS Date))
INSERT [dbo].[STUDENT] ([emailAddress_Student], [forename], [surname], [dateOfBirth]) VALUES (N'ndivhuwo', N'ramashia', N'ndivhuwo@vut.ac.za', CAST(0x03250B00 AS Date))
INSERT [dbo].[STUDENT] ([emailAddress_Student], [forename], [surname], [dateOfBirth]) VALUES (N'ndivhuwo@gmail.com', N'ndivhuwo', N'ramashia', CAST(0x38240B00 AS Date))
/****** Object:  Table [dbo].[LECTURER]    Script Date: 04/24/2021 16:08:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LECTURER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LECTURER](
	[emailAddress_Lecturer] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[forename] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[surname] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[dateOfBirth] [date] NOT NULL,
 CONSTRAINT [PK__LECTURER__034A9A939F2ABFCA] PRIMARY KEY CLUSTERED 
(
	[emailAddress_Lecturer] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[LECTURER] ([emailAddress_Lecturer], [forename], [surname], [dateOfBirth]) VALUES (N'joseph@gmail.com', N'joseph', N'shi', CAST(0x4AAD0600 AS Date))
INSERT [dbo].[LECTURER] ([emailAddress_Lecturer], [forename], [surname], [dateOfBirth]) VALUES (N'smith@gmail.com', N'smith', N'wood', CAST(0x4AAD0600 AS Date))
INSERT [dbo].[LECTURER] ([emailAddress_Lecturer], [forename], [surname], [dateOfBirth]) VALUES (N'victor@gmail.com', N'victor', N'rama', CAST(0x4AAD0600 AS Date))
/****** Object:  Table [dbo].[DEGREE]    Script Date: 04/24/2021 16:08:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEGREE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DEGREE](
	[degreeName] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[degreeDurationInYear] [int] NOT NULL,
	[emailAddress_Student] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[emailAddress_Lecturer] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__DEGREE__ECDA853D6BA26DF6] PRIMARY KEY CLUSTERED 
(
	[degreeName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DEGREE] ([degreeName], [degreeDurationInYear], [emailAddress_Student], [emailAddress_Lecturer]) VALUES (N'Computer information', 3, N'ndivhuwo@gmail.com', N'smith@gmail.com')
INSERT [dbo].[DEGREE] ([degreeName], [degreeDurationInYear], [emailAddress_Student], [emailAddress_Lecturer]) VALUES (N'Computer Systems', 3, N'gudani@gmail.com', N'smith@gmail.com')
INSERT [dbo].[DEGREE] ([degreeName], [degreeDurationInYear], [emailAddress_Student], [emailAddress_Lecturer]) VALUES (N'IT', 3, N'nancy@gmail.com', N'joseph@gmail.com')
/****** Object:  Table [dbo].[COURSE]    Script Date: 04/24/2021 16:08:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COURSE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COURSE](
	[courseName] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[courseDurationInMonths] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[degreeName] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__COURSE__BEEA9EED65229271] PRIMARY KEY CLUSTERED 
(
	[courseName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[COURSE] ([courseName], [courseDurationInMonths], [degreeName]) VALUES (N'database', N'6', N'Computer Systems')
INSERT [dbo].[COURSE] ([courseName], [courseDurationInMonths], [degreeName]) VALUES (N'math', N'6', N'IT')
INSERT [dbo].[COURSE] ([courseName], [courseDurationInMonths], [degreeName]) VALUES (N'programming', N'6', N'Computer Systems')
/****** Object:  ForeignKey [FK__COURSE__degreeNa__2C3393D0]    Script Date: 04/24/2021 16:08:50 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__COURSE__degreeNa__2C3393D0]') AND parent_object_id = OBJECT_ID(N'[dbo].[COURSE]'))
ALTER TABLE [dbo].[COURSE]  WITH CHECK ADD  CONSTRAINT [FK__COURSE__degreeNa__2C3393D0] FOREIGN KEY([degreeName])
REFERENCES [dbo].[DEGREE] ([degreeName])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__COURSE__degreeNa__2C3393D0]') AND parent_object_id = OBJECT_ID(N'[dbo].[COURSE]'))
ALTER TABLE [dbo].[COURSE] CHECK CONSTRAINT [FK__COURSE__degreeNa__2C3393D0]
GO
/****** Object:  ForeignKey [FK__DEGREE__emailAdd__286302EC]    Script Date: 04/24/2021 16:08:50 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DEGREE__emailAdd__286302EC]') AND parent_object_id = OBJECT_ID(N'[dbo].[DEGREE]'))
ALTER TABLE [dbo].[DEGREE]  WITH CHECK ADD  CONSTRAINT [FK__DEGREE__emailAdd__286302EC] FOREIGN KEY([emailAddress_Student])
REFERENCES [dbo].[STUDENT] ([emailAddress_Student])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DEGREE__emailAdd__286302EC]') AND parent_object_id = OBJECT_ID(N'[dbo].[DEGREE]'))
ALTER TABLE [dbo].[DEGREE] CHECK CONSTRAINT [FK__DEGREE__emailAdd__286302EC]
GO
/****** Object:  ForeignKey [FK__DEGREE__emailAdd__29572725]    Script Date: 04/24/2021 16:08:50 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DEGREE__emailAdd__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[DEGREE]'))
ALTER TABLE [dbo].[DEGREE]  WITH CHECK ADD  CONSTRAINT [FK__DEGREE__emailAdd__29572725] FOREIGN KEY([emailAddress_Lecturer])
REFERENCES [dbo].[LECTURER] ([emailAddress_Lecturer])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DEGREE__emailAdd__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[DEGREE]'))
ALTER TABLE [dbo].[DEGREE] CHECK CONSTRAINT [FK__DEGREE__emailAdd__29572725]
GO
