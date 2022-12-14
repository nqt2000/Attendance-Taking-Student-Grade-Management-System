USE [master]
GO

DROP DATABASE [Assignment_PRJ301]
GO

/****** Object:  Database [ Assignment_PRJ301]    Script Date: 10/27/2022 04:20:17 ******/
CREATE DATABASE [Assignment_PRJ301]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N' Assignment_PRJ301', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER\MSSQL\DATA\ Assignment_PRJ301.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N' Assignment_PRJ301_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER\MSSQL\DATA\ Assignment_PRJ301_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Assignment_PRJ301] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment_PRJ301].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment_PRJ301] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment_PRJ301] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment_PRJ301] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Assignment_PRJ301] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment_PRJ301] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Assignment_PRJ301] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment_PRJ301] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment_PRJ301] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment_PRJ301] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment_PRJ301] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assignment_PRJ301] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assignment_PRJ301] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Assignment_PRJ301] SET QUERY_STORE = OFF
GO
USE [Assignment_PRJ301]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[sesid] [int] NOT NULL,
	[stdid] [int] NOT NULL,
	[present] [bit] NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[record_time] [datetime] NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC,
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[fid] [int] NOT NULL,
	[fname] [varchar](150) NOT NULL,
	[url] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [varchar](150) NOT NULL,
	[subid] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[sem] [varchar](150) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lid] [int] NOT NULL,
	[lname] [nvarchar](150) NOT NULL,
	[lemail] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parent]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent](
	[prid] [int] NOT NULL,
	[prname] [nvarchar](150) NOT NULL,
	[premail] [varchar](150) NOT NULL,
	[prphone] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Parent] PRIMARY KEY CLUSTERED 
(
	[prid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Account]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Account](
	[rid] [int] NOT NULL,
	[username] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role_Account] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[rid] [int] NOT NULL,
	[fid] [int] NOT NULL,
 CONSTRAINT [PK_Role_Feature] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sesid] [int] NOT NULL,
	[gid] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[tid] [int] NOT NULL,
	[index] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[attended] [bit] NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stdid] [int] NOT NULL,
	[stdname] [nvarchar](150) NOT NULL,
	[stdgender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[stdphone] [varchar](10) NOT NULL,
	[stdemail] [varchar](150) NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[idcard] [varchar](12) NOT NULL,
	[dateofissue] [date] NOT NULL,
	[placeofissue] [nvarchar](max) NOT NULL,
	[prid] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentGroup]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentGroup](
	[stdid] [int] NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_StudentGroup] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subid] [int] NOT NULL,
	[subname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 10/27/2022 04:20:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [int] NOT NULL,
	[description] [varchar](150) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'admin', N'admin', N'admin')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'hapn', N'12321', N'hapn')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'minhtn', N'123456789', N'Tran Nhat Minh')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'sonnt', N'123', N'sonnt5')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'tuannq', N'123', N'Nguyen Quang Tuan')
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 1, 1, N' ', NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 2, 0, N' ', NULL)
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 3, 1, N'test', NULL)
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (1, N'Add Student', N'/student/add')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (2, N'Edit Student', N'/student/edit')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (3, N'Delete Student', N'/student/delete')
GO
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (1, N'PRJ031-SE1401', 1, 1, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (2, N'PRJ301-SE160', 1, 1, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (3, N'PRJ301-SE1603', 1, 2, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (4, N'MLN101', 3, 3, N'FALL', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (5, N'IOT101', 2, 2, N'FALL', 2022)
GO
INSERT [dbo].[Lecturer] ([lid], [lname], [lemail]) VALUES (1, N'Sonnt5', N'sonnt5@fpt.edu.vn')
INSERT [dbo].[Lecturer] ([lid], [lname], [lemail]) VALUES (2, N'Hapn', N'HaPN10@fe.edu.vn
')
INSERT [dbo].[Lecturer] ([lid], [lname], [lemail]) VALUES (3, N'NamKV', N'namkv@fe.edu.vn')
GO
INSERT [dbo].[Parent] ([prid], [prname], [premail], [prphone]) VALUES (1, N'Nguyễn Quang Vinh', N'vinhnq@yahoo.com.vn', N'0987654321')
INSERT [dbo].[Parent] ([prid], [prname], [premail], [prphone]) VALUES (2, N'Trần Quang Minh', N'minh1988@gmail.com', N'0123456789')
INSERT [dbo].[Parent] ([prid], [prname], [premail], [prphone]) VALUES (3, N'Phạm Nhật Vượng ', N'email@email.email', N'9999999999')
GO
INSERT [dbo].[Role] ([rid], [rname]) VALUES (1, N'Teacher')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (2, N'Accounting')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (3, N'IT')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (4, N'Student')
GO
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'hapn')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'sonnt')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'admin')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (4, N'minhtn')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (4, N'tuannq')
GO
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 1)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 2)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (3, 1)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (3, 2)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (3, 3)
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (1, N'AL102L')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (2, N'DE204C')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (3, N'BE103')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (4, N'DE101')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (5, N'DE101')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (6, N'BE201')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (7, N'DE303')
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (1, 1, 1, CAST(N'2022-10-24' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (2, 1, 1, CAST(N'2022-10-26' AS Date), 1, 2, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (3, 1, 1, CAST(N'2022-10-28' AS Date), 1, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (4, 1, 1, CAST(N'2022-10-31' AS Date), 1, 4, 2, 1)
GO
INSERT [dbo].[Student] ([stdid], [stdname], [stdgender], [dob], [stdphone], [stdemail], [address], [idcard], [dateofissue], [placeofissue], [prid]) VALUES (1, N'Nguyễn Quang Tuấn', 1, CAST(N'2000-01-25' AS Date), N'0336598662', N'tuannqhe141164@fpt.edu.vn', N'Cầu Giấy, Hà Nội', N'001200000726', CAST(N'2014-08-06' AS Date), N'Cục cảnh sát', 1)
INSERT [dbo].[Student] ([stdid], [stdname], [stdgender], [dob], [stdphone], [stdemail], [address], [idcard], [dateofissue], [placeofissue], [prid]) VALUES (2, N'Nguyễn Quang Anh', 1, CAST(N'2003-06-25' AS Date), N'0983123128', N'anhnq123@gmail.com', N'Đống Đa, Hà Nội', N'001200002136', CAST(N'2018-05-01' AS Date), N'Cục quản lý dữ liệu', 1)
INSERT [dbo].[Student] ([stdid], [stdname], [stdgender], [dob], [stdphone], [stdemail], [address], [idcard], [dateofissue], [placeofissue], [prid]) VALUES (3, N'Trần Nhật Minh', 1, CAST(N'2000-08-20' AS Date), N'0945362000', N'minhtnhe140791@fpt.edu.vn', N'Thanh Xuân, Hà Nội', N'001201238512', CAST(N'2015-02-06' AS Date), N'Cục cảnh sát', 3)
INSERT [dbo].[Student] ([stdid], [stdname], [stdgender], [dob], [stdphone], [stdemail], [address], [idcard], [dateofissue], [placeofissue], [prid]) VALUES (4, N'Phạm Minh Anh', 0, CAST(N'2001-07-02' AS Date), N'0982971952', N'anhpm@gmail.com', N'Hải Dương', N'038500185921', CAST(N'2016-07-19' AS Date), N'Cục quản lý dữ liệu', 2)
GO
INSERT [dbo].[StudentGroup] ([stdid], [gid]) VALUES (1, 1)
INSERT [dbo].[StudentGroup] ([stdid], [gid]) VALUES (1, 2)
INSERT [dbo].[StudentGroup] ([stdid], [gid]) VALUES (1, 3)
INSERT [dbo].[StudentGroup] ([stdid], [gid]) VALUES (1, 4)
INSERT [dbo].[StudentGroup] ([stdid], [gid]) VALUES (1, 5)
INSERT [dbo].[StudentGroup] ([stdid], [gid]) VALUES (2, 1)
INSERT [dbo].[StudentGroup] ([stdid], [gid]) VALUES (2, 3)
INSERT [dbo].[StudentGroup] ([stdid], [gid]) VALUES (2, 5)
INSERT [dbo].[StudentGroup] ([stdid], [gid]) VALUES (3, 1)
INSERT [dbo].[StudentGroup] ([stdid], [gid]) VALUES (3, 4)
INSERT [dbo].[StudentGroup] ([stdid], [gid]) VALUES (4, 1)
GO
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (1, N'PRJ301')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (2, N'DBI202')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (3, N'IOT101')
GO
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (1, N'07H30 - 09H00')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (2, N'09H10 - 10H40')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (3, N'10H50 - 12H20')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (4, N'12H50 - 14H20')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (5, N'14H30 - 16H00')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (6, N'16H10 - 17H40')
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Session] FOREIGN KEY([sesid])
REFERENCES [dbo].[Session] ([sesid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Session]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecturer]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([subid])
REFERENCES [dbo].[Subject] ([subid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Account]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Role]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Feature] FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([fid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Feature]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Role]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Lecturer]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_TimeSlot] FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSlot] ([tid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_TimeSlot]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Parent] FOREIGN KEY([prid])
REFERENCES [dbo].[Parent] ([prid])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Parent]
GO
ALTER TABLE [dbo].[StudentGroup]  WITH CHECK ADD  CONSTRAINT [FK_StudentGroup_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[StudentGroup] CHECK CONSTRAINT [FK_StudentGroup_Group]
GO
ALTER TABLE [dbo].[StudentGroup]  WITH CHECK ADD  CONSTRAINT [FK_StudentGroup_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[StudentGroup] CHECK CONSTRAINT [FK_StudentGroup_Student]
GO
USE [master]
GO
ALTER DATABASE [Assignment_PRJ301] SET  READ_WRITE 
GO
