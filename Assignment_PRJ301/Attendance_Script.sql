USE [master]
GO
/****** Object:  Database [Assignment_PRJ301]    Script Date: 10/09/2022 02:33:36 ******/
CREATE DATABASE [Assignment_PRJ301]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assignment_PRJ301', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER\MSSQL\DATA\Assignment_PRJ301.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assignment_PRJ301_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLSERVER\MSSQL\DATA\Assignment_PRJ301_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/****** Object:  Table [dbo].[Attendance]    Script Date: 10/09/2022 02:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[status] [bit] NOT NULL,
	[ssid] [int] NOT NULL,
	[roll_number] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 10/09/2022 02:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [varchar](10) NOT NULL,
	[ssid] [int] NOT NULL,
	[suid] [int] NOT NULL,
	[lid] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 10/09/2022 02:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[lid] [int] IDENTITY(1,1) NOT NULL,
	[lname] [nvarchar](max) NOT NULL,
	[lcode] [varchar](15) NOT NULL,
	[email] [varchar](max) NOT NULL,
	[phone_number] [char](10) NOT NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 10/09/2022 02:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[room] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 10/09/2022 02:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[ssid] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[rid] [int] NOT NULL,
	[tid] [int] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[ssid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 10/09/2022 02:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[roll_number] [varchar](8) NOT NULL,
	[sname] [nvarchar](max) NOT NULL,
	[dob] [date] NOT NULL,
	[gender] [bit] NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[phone_number] [char](10) NOT NULL,
	[email] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[roll_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 10/09/2022 02:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[sgid] [int] IDENTITY(1,1) NOT NULL,
	[roll_number] [varchar](8) NOT NULL,
	[gid] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Student_Group] PRIMARY KEY CLUSTERED 
(
	[sgid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 10/09/2022 02:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[suid] [int] IDENTITY(1,1) NOT NULL,
	[suname] [varchar](max) NOT NULL,
	[sucode] [varchar](56) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[suid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 10/09/2022 02:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [int] IDENTITY(1,1) NOT NULL,
	[from] [time](0) NOT NULL,
	[to] [time](0) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attendance] ON 

INSERT [dbo].[Attendance] ([aid], [status], [ssid], [roll_number]) VALUES (1, 1, 1, N'HE141164')
INSERT [dbo].[Attendance] ([aid], [status], [ssid], [roll_number]) VALUES (4, 1, 1, N'HE140891')
INSERT [dbo].[Attendance] ([aid], [status], [ssid], [roll_number]) VALUES (5, 1, 1, N'HA140045')
INSERT [dbo].[Attendance] ([aid], [status], [ssid], [roll_number]) VALUES (6, 0, 1, N'HA130031')
SET IDENTITY_INSERT [dbo].[Attendance] OFF
GO
INSERT [dbo].[Group] ([gid], [ssid], [suid], [lid]) VALUES (N'DBW301_1.1', 1, 2, 1)
INSERT [dbo].[Group] ([gid], [ssid], [suid], [lid]) VALUES (N'DBW301_1.2', 1, 2, 2)
INSERT [dbo].[Group] ([gid], [ssid], [suid], [lid]) VALUES (N'DBW301_1.3', 1, 2, 6)
INSERT [dbo].[Group] ([gid], [ssid], [suid], [lid]) VALUES (N'DBW301_2.1', 3, 2, 1)
INSERT [dbo].[Group] ([gid], [ssid], [suid], [lid]) VALUES (N'DBW301_2.2', 3, 2, 8)
INSERT [dbo].[Group] ([gid], [ssid], [suid], [lid]) VALUES (N'DBW301_2.3', 3, 2, 6)
INSERT [dbo].[Group] ([gid], [ssid], [suid], [lid]) VALUES (N'PRJ301_1.1', 1, 1, 1)
INSERT [dbo].[Group] ([gid], [ssid], [suid], [lid]) VALUES (N'PRJ301_1.2', 1, 1, 2)
INSERT [dbo].[Group] ([gid], [ssid], [suid], [lid]) VALUES (N'PRJ301_1.3', 1, 1, 8)
INSERT [dbo].[Group] ([gid], [ssid], [suid], [lid]) VALUES (N'PRJ301_2.1', 3, 1, 1)
INSERT [dbo].[Group] ([gid], [ssid], [suid], [lid]) VALUES (N'PRJ301_2.2', 3, 1, 2)
INSERT [dbo].[Group] ([gid], [ssid], [suid], [lid]) VALUES (N'PRJ301_2.3', 3, 1, 8)
GO
SET IDENTITY_INSERT [dbo].[Lecture] ON 

INSERT [dbo].[Lecture] ([lid], [lname], [lcode], [email], [phone_number]) VALUES (1, N'Ngô Tùng Sơn', N'SonNT5', N'sonnt69@fe.edu.vn', N'0123456789')
INSERT [dbo].[Lecture] ([lid], [lname], [lcode], [email], [phone_number]) VALUES (2, N'Lại Hiền Phương', N'PhuongLH17', N'PhuongLH17@fe.edu.vn', N'1111111111')
INSERT [dbo].[Lecture] ([lid], [lname], [lcode], [email], [phone_number]) VALUES (3, N'Kiều Văn Nam', N'Namkv', N'NamKV@fe.edu.vn
', N'2222222222')
INSERT [dbo].[Lecture] ([lid], [lname], [lcode], [email], [phone_number]) VALUES (6, N'Bùi Thị Loan', N'LoanBT7', N'LoanBT7@fe.edu.vn', N'3333333333')
INSERT [dbo].[Lecture] ([lid], [lname], [lcode], [email], [phone_number]) VALUES (8, N'Đào Quang Khải', N'KhaiDQ6', N'khaidq6@fe.edu.vn', N'4444444444')
SET IDENTITY_INSERT [dbo].[Lecture] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([rid], [room]) VALUES (1, N'AL-101L')
INSERT [dbo].[Room] ([rid], [room]) VALUES (2, N'AL-102L')
INSERT [dbo].[Room] ([rid], [room]) VALUES (3, N'AL-103L')
INSERT [dbo].[Room] ([rid], [room]) VALUES (4, N'AL-104L')
INSERT [dbo].[Room] ([rid], [room]) VALUES (5, N'AL-101R')
INSERT [dbo].[Room] ([rid], [room]) VALUES (6, N'AL-102R')
INSERT [dbo].[Room] ([rid], [room]) VALUES (7, N'AL-103R')
INSERT [dbo].[Room] ([rid], [room]) VALUES (8, N'AL-104R')
INSERT [dbo].[Room] ([rid], [room]) VALUES (9, N'AL-105R')
INSERT [dbo].[Room] ([rid], [room]) VALUES (10, N'AL-106R')
INSERT [dbo].[Room] ([rid], [room]) VALUES (11, N'BE-101')
INSERT [dbo].[Room] ([rid], [room]) VALUES (12, N'BE-102')
INSERT [dbo].[Room] ([rid], [room]) VALUES (13, N'BE-103')
INSERT [dbo].[Room] ([rid], [room]) VALUES (14, N'BE-104')
INSERT [dbo].[Room] ([rid], [room]) VALUES (15, N'BE-105')
INSERT [dbo].[Room] ([rid], [room]) VALUES (16, N'BE-106')
INSERT [dbo].[Room] ([rid], [room]) VALUES (17, N'DE-101')
INSERT [dbo].[Room] ([rid], [room]) VALUES (18, N'DE-102')
INSERT [dbo].[Room] ([rid], [room]) VALUES (19, N'DE-103')
INSERT [dbo].[Room] ([rid], [room]) VALUES (20, N'DE-104')
INSERT [dbo].[Room] ([rid], [room]) VALUES (21, N'DE-105')
INSERT [dbo].[Room] ([rid], [room]) VALUES (22, N'DE-106')
INSERT [dbo].[Room] ([rid], [room]) VALUES (23, N'DE-107')
INSERT [dbo].[Room] ([rid], [room]) VALUES (24, N'DE-108')
INSERT [dbo].[Room] ([rid], [room]) VALUES (25, N'DE-109')
INSERT [dbo].[Room] ([rid], [room]) VALUES (26, N'DE-110')
INSERT [dbo].[Room] ([rid], [room]) VALUES (27, N'AL-201')
INSERT [dbo].[Room] ([rid], [room]) VALUES (28, N'AL-202')
INSERT [dbo].[Room] ([rid], [room]) VALUES (29, N'AL-203')
INSERT [dbo].[Room] ([rid], [room]) VALUES (30, N'AL-204')
INSERT [dbo].[Room] ([rid], [room]) VALUES (31, N'AL-205')
INSERT [dbo].[Room] ([rid], [room]) VALUES (32, N'AL-206')
INSERT [dbo].[Room] ([rid], [room]) VALUES (33, N'BE-201')
INSERT [dbo].[Room] ([rid], [room]) VALUES (34, N'BE-202')
INSERT [dbo].[Room] ([rid], [room]) VALUES (35, N'BE-203')
INSERT [dbo].[Room] ([rid], [room]) VALUES (36, N'BE-204')
INSERT [dbo].[Room] ([rid], [room]) VALUES (37, N'BE-205')
INSERT [dbo].[Room] ([rid], [room]) VALUES (38, N'BE-206')
INSERT [dbo].[Room] ([rid], [room]) VALUES (39, N'DE-201')
INSERT [dbo].[Room] ([rid], [room]) VALUES (40, N'DE-202')
INSERT [dbo].[Room] ([rid], [room]) VALUES (41, N'DE-203')
INSERT [dbo].[Room] ([rid], [room]) VALUES (42, N'DE-204C')
INSERT [dbo].[Room] ([rid], [room]) VALUES (43, N'DE-205C')
INSERT [dbo].[Room] ([rid], [room]) VALUES (44, N'DE-206C')
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[Session] ON 

INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (1, CAST(N'2022-09-05' AS Date), 1, 1)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (3, CAST(N'2022-09-05' AS Date), 2, 1)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (4, CAST(N'2022-09-05' AS Date), 3, 1)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (5, CAST(N'2022-09-05' AS Date), 1, 2)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (6, CAST(N'2022-09-05' AS Date), 2, 2)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (7, CAST(N'2022-09-05' AS Date), 3, 2)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (8, CAST(N'2022-09-05' AS Date), 1, 3)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (9, CAST(N'2022-09-05' AS Date), 2, 3)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (10, CAST(N'2022-09-05' AS Date), 3, 3)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (11, CAST(N'2022-09-06' AS Date), 1, 1)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (12, CAST(N'2022-09-06' AS Date), 2, 1)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (14, CAST(N'2022-09-06' AS Date), 3, 1)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (15, CAST(N'2022-09-06' AS Date), 1, 2)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (16, CAST(N'2022-09-06' AS Date), 2, 2)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (17, CAST(N'2022-09-06' AS Date), 3, 2)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (18, CAST(N'2022-09-06' AS Date), 1, 3)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (19, CAST(N'2022-09-06' AS Date), 2, 3)
INSERT [dbo].[Session] ([ssid], [date], [rid], [tid]) VALUES (20, CAST(N'2022-09-06' AS Date), 3, 3)
SET IDENTITY_INSERT [dbo].[Session] OFF
GO
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HA130031', N'Trần Nhật Minh', CAST(N'1999-09-21' AS Date), 1, N'Happulico, Thanh Xuân, Hà Nội', N'0945362000', N'minhtnha130031@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HA140045', N'Nguyễn Thị Hồng Ngân', CAST(N'2000-06-30' AS Date), 0, N'Lai Xá, Kim Chung, Hoài Đức, Hà Nội', N'0961229604', N'ngannthha140045@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HA150216', N'Trần Hồng Ngọc', CAST(N'2001-07-13' AS Date), 0, N'Ninh Bình', N'0561876213', N'ngocthha150216@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE140891', N'Phạm Văn Mạnh', CAST(N'2000-05-13' AS Date), 1, N'Hà Giang', N'0332131724', N'manhpvhe140891@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE141164', N'Nguyễn Quang Tuấn', CAST(N'2000-01-25' AS Date), 1, N'Thăng Long Number One, Trung Hòa, Cầu Giấy, Hà Nội', N'0336598662', N'tuannqhe141164@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE141612', N'Phạm Minh Nguyệt', CAST(N'2000-02-13' AS Date), 0, N'Hà Tĩnh', N'0785295126', N'nguyetpmhe141612@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE141900', N'Nguyễn Nguyên Hồng', CAST(N'2000-07-10' AS Date), 0, N'Thanh Oai, Hoài Đức, Hà Nội', N'0989998889', N'hongnnhe141900@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE150614', N'Phạm Quốc Việt', CAST(N'2001-03-20' AS Date), 1, N'Thanh Hóa', N'0895243123', N'vietpqhe150614@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE150712', N'Hoàng Ngọc Minh', CAST(N'2001-02-06' AS Date), 0, N'Khánh Hòa', N'0902367416', N'minhhnhe150712@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE150791', N'Trần Khắc Bằng', CAST(N'2001-08-24' AS Date), 1, N'Hà Nam', N'0812892908', N'bangtkhe150791@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE150923', N'Hoàng Huyền Anh', CAST(N'2001-07-30' AS Date), 0, N'Hải Dương', N'0789651213', N'anhhhhe150923@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE150966', N'Trần Minh Vân Anh', CAST(N'2001-05-02' AS Date), 0, N'Huế', N'0876123571', N'anhtmvhe150966@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE151115', N'Nguyễn Hồng Nhung', CAST(N'2001-08-06' AS Date), 0, N'Hà Nội', N'0782136721', N'nhungnthe151115@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE151515', N'Nguyễn Minh Trí', CAST(N'2001-04-17' AS Date), 1, N'Hà Tĩnh', N'0121690151', N'trinmhe151515@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE151619', N'Trần Quốc Nghĩa', CAST(N'2001-05-14' AS Date), 1, N'Bắc Giang', N'0336289083', N'nghiatqhe151619@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE160006', N'Trần Ngọc Minh', CAST(N'2002-08-19' AS Date), 0, N'Quảng Ngãi', N'0978145213', N'minhtnhe160006@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE160375', N'Lê Trung Đức', CAST(N'2002-10-05' AS Date), 1, N'Quảng Ninh', N'0768239876', N'duclthe160375@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE160515', N'Trần Nguyễn Minh Nghi', CAST(N'1999-07-18' AS Date), 0, N'Sài Gòn', N'0998311222', N'nghitnmhe160515@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE160700', N'Chúng Lý Lan', CAST(N'2001-05-19' AS Date), 0, N'Hà Tây', N'0982543219', N'lanclhe160700@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE160789', N'Hoàng Hiệp', CAST(N'2000-08-17' AS Date), 1, N'Hà Đông, Hà Nội', N'0333214123', N'hiephhe160789@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE161616', N'Nguyễn Văn Tài', CAST(N'2002-08-18' AS Date), 1, N'Hà Tây, Hà Nội', N'0983461231', N'tainvhe161616@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE170071', N'Trần Kim Trọng', CAST(N'2003-10-10' AS Date), 1, N'Hà Tĩnh', N'0561471902', N'trongtkhe170071@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE170113', N'Phạm Minh Tú', CAST(N'2003-03-03' AS Date), 0, N'Hà Nội', N'0132876578', N'tupmhe170113@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE170389', N'Nguyễn Minh Anh', CAST(N'2003-08-29' AS Date), 0, N'Quảng Ninh', N'0985415612', N'anhnmhe170389@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE170655', N'Trần Thị Kim Anh', CAST(N'2003-05-19' AS Date), 0, N'Hưng Yên', N'0984385612', N'anhttkhe170655@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE170777', N'Nguyễn Trần Quỳnh Anh', CAST(N'2003-12-31' AS Date), 0, N'Hải Dương', N'0989765789', N'anhntqhe170777@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HE170819', N'Trần Bình Minh', CAST(N'2003-08-11' AS Date), 1, N'Hà Nội', N'0899765123', N'minhtbhe170819@fpt.edu.vn')
INSERT [dbo].[Student] ([roll_number], [sname], [dob], [gender], [address], [phone_number], [email]) VALUES (N'HS140001', N'Phạm Minh Tuấn', CAST(N'1999-02-28' AS Date), 1, N'Thanh Trì, Hà Nội', N'0982546123', N'tuanpmhs140001@fpt.edu.vn')
GO
SET IDENTITY_INSERT [dbo].[Student_Group] ON 

INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (3, N'HE141164', N'PRJ301_1.1')
INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (4, N'HA140045', N'PRJ301_1.1')
INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (8, N'HA130031', N'PRJ301_1.1')
INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (9, N'HE140891', N'PRJ301_1.1')
INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (10, N'HE151115', N'PRJ301_1.1')
INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (11, N'HE160375', N'PRJ301_1.1')
INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (12, N'HS140001', N'PRJ301_1.1')
INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (13, N'HE141164', N'PRJ301_2.1')
INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (15, N'HA140045', N'PRJ301_2.1')
INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (16, N'HA130031', N'PRJ301_2.1')
INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (17, N'HE140891', N'PRJ301_2.1')
INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (18, N'HE151115', N'PRJ301_2.1')
INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (19, N'HE160375', N'PRJ301_2.1')
INSERT [dbo].[Student_Group] ([sgid], [roll_number], [gid]) VALUES (20, N'HS140001', N'PRJ301_2.1')
SET IDENTITY_INSERT [dbo].[Student_Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([suid], [suname], [sucode]) VALUES (1, N'	Java Web Application Development', N'PRJ301')
INSERT [dbo].[Subject] ([suid], [suname], [sucode]) VALUES (2, N'Data warehouse', N'DBW301')
INSERT [dbo].[Subject] ([suid], [suname], [sucode]) VALUES (3, N'	Principles of Marxism - Leninism', N'MLN101')
INSERT [dbo].[Subject] ([suid], [suname], [sucode]) VALUES (4, N'Web Development (XML)', N'PRX301')
INSERT [dbo].[Subject] ([suid], [suname], [sucode]) VALUES (5, N'	Statistics and Probability', N'MAS291')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[TimeSlot] ON 

INSERT [dbo].[TimeSlot] ([tid], [from], [to]) VALUES (1, CAST(N'07:30:00' AS Time), CAST(N'09:00:00' AS Time))
INSERT [dbo].[TimeSlot] ([tid], [from], [to]) VALUES (2, CAST(N'09:10:00' AS Time), CAST(N'10:40:00' AS Time))
INSERT [dbo].[TimeSlot] ([tid], [from], [to]) VALUES (3, CAST(N'10:50:00' AS Time), CAST(N'12:20:00' AS Time))
INSERT [dbo].[TimeSlot] ([tid], [from], [to]) VALUES (4, CAST(N'12:50:00' AS Time), CAST(N'14:20:00' AS Time))
INSERT [dbo].[TimeSlot] ([tid], [from], [to]) VALUES (5, CAST(N'14:30:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[TimeSlot] ([tid], [from], [to]) VALUES (6, CAST(N'16:10:00' AS Time), CAST(N'17:40:00' AS Time))
INSERT [dbo].[TimeSlot] ([tid], [from], [to]) VALUES (7, CAST(N'17:50:00' AS Time), CAST(N'19:20:00' AS Time))
INSERT [dbo].[TimeSlot] ([tid], [from], [to]) VALUES (8, CAST(N'19:30:00' AS Time), CAST(N'21:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[TimeSlot] OFF
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Session] FOREIGN KEY([ssid])
REFERENCES [dbo].[Session] ([ssid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Session]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([roll_number])
REFERENCES [dbo].[Student] ([roll_number])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecture] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecture] ([lid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecture]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Session] FOREIGN KEY([ssid])
REFERENCES [dbo].[Session] ([ssid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Session]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([suid])
REFERENCES [dbo].[Subject] ([suid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
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
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Group]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Student] FOREIGN KEY([roll_number])
REFERENCES [dbo].[Student] ([roll_number])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Student]
GO
USE [master]
GO
ALTER DATABASE [Assignment_PRJ301] SET  READ_WRITE 
GO
