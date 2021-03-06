USE [master]
GO
/****** Object:  Database [ProjectPRJ321]    Script Date: 8/11/2020 11:25:44 PM ******/
CREATE DATABASE [ProjectPRJ321]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectPRJ321', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProjectPRJ321.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProjectPRJ321_log', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProjectPRJ321_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProjectPRJ321] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectPRJ321].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectPRJ321] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectPRJ321] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectPRJ321] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectPRJ321] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectPRJ321] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectPRJ321] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectPRJ321] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectPRJ321] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectPRJ321] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectPRJ321] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProjectPRJ321] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProjectPRJ321]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 8/11/2020 11:25:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[Author_ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[BirthDate] [date] NULL,
	[Country] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Pic] [nvarchar](50) NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[Author_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Brand]    Script Date: 8/11/2020 11:25:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID_Brand] [int] NOT NULL,
	[Name_Brand] [nvarchar](70) NOT NULL,
	[ID_Category] [int] NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[ID_Brand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/11/2020 11:25:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID_Cate] [int] NOT NULL,
	[Name_Cate] [nvarchar](70) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID_Cate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 8/11/2020 11:25:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID_Order] [nvarchar](50) NOT NULL,
	[ID_User] [int] NULL,
	[Total] [float] NOT NULL,
	[Date] [date] NOT NULL,
	[Status] [bit] NOT NULL,
	[firstname] [nvarchar](100) NULL,
	[lastname] [nvarchar](100) NULL,
	[phone] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[address] [nvarchar](200) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 8/11/2020 11:25:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[ID_Detail] [int] IDENTITY(1,1) NOT NULL,
	[ID_Order] [nvarchar](50) NOT NULL,
	[ID_Product] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[ID_Detail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 8/11/2020 11:25:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID_Product] [int] NOT NULL,
	[Name_Product] [nvarchar](100) NOT NULL,
	[Pic_Product] [nvarchar](150) NOT NULL,
	[Info_Product] [nvarchar](max) NOT NULL,
	[Date] [date] NOT NULL,
	[ID_Brand] [int] NOT NULL,
	[Price] [float] NULL,
	[Author_ID] [int] NULL,
	[Publisher_ID] [int] NULL,
 CONSTRAINT [PK_Product_1] PRIMARY KEY CLUSTERED 
(
	[ID_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Publish]    Script Date: 8/11/2020 11:25:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Publish](
	[ID_Publish] [int] NOT NULL,
	[Name_Publish] [nvarchar](150) NOT NULL,
	[Address] [nvarchar](150) NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Publish] PRIMARY KEY CLUSTERED 
(
	[ID_Publish] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/11/2020 11:25:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Username] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[BirthDate] [date] NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](300) NULL,
	[Gender] [bit] NULL,
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Author] ([Author_ID], [FirstName], [LastName], [BirthDate], [Country], [Description], [Pic]) VALUES (1, N'Haruki', N'Murakami', CAST(N'1949-01-12' AS Date), N'Nhật Bản', N' Murakami Haruki là một trong những tiểu thuyết gia, dịch giả văn học người Nhật Bản được biết đến nhiều nhất hiện nay cả trong lẫn ngoài nước Nhật. Ông sinh năm 1949 tại Tokyo - Nhật Bản nhưng hiện tại ông định cư tại Boston, Mỹ', N'haruki.jpg')
INSERT [dbo].[Author] ([Author_ID], [FirstName], [LastName], [BirthDate], [Country], [Description], [Pic]) VALUES (2, N'Shinkai', N'Makoto', CAST(N'1973-09-02' AS Date), N'Nhật Bản', N'Shinkai Makoto, tên khai sinh là Nītsu Makoto, còn được biết đến với biệt danh phù thủy của những nỗi buồn, là một nhà làm phim, tiểu thuyết gia, đạo diễn, trước kia là nhà thiết kế đồ hoạ xuất thân từ quận Minamisaku, Nagano, Nhật Bản.', N'shinkai.jpg')
INSERT [dbo].[Author] ([Author_ID], [FirstName], [LastName], [BirthDate], [Country], [Description], [Pic]) VALUES (3, N'Phỉ Ngã ', N'Tư Tồn', CAST(N'1978-06-26' AS Date), N'Trung Quốc', N'Phỉ Ngã Tư Tồn tên thật là Ngải Tinh Tinh, một nhà văn nữ thuộc dòng văn học hiện đại người Trung Quốc. Cô là tác giả của 20 cuốn tiểu thuyết, trong đó có 11 tác phẩm đang được chuyển thể thành các dự án điện ảnh. Hiện nay, đã có 3 tiểu thuyết và một truyện ngắn của cô được dựng thành phim truyền hình.', N'phinga.jpg')
INSERT [dbo].[Author] ([Author_ID], [FirstName], [LastName], [BirthDate], [Country], [Description], [Pic]) VALUES (4, N'Cửu ', N'Nguyệt Hi', CAST(N'1985-11-01' AS Date), N'Trung Quốc', N'Tác giả Cửu Nguyệt Hi là tác giả người Trung Quốc chuyên viết truyện ngôn tình, những ai đã từng đọc truyện ngôn tình hay đam mê chắc hẳn không thể không biết đến cô. Cửu Nguyệt Hi sinh ngày: 1 tháng 11. Với biệt danh trước đó người ta thường gọi là Cửu Nguyệt Vị Hy nay đã đổi thành Cửu Nguyệt Hi', N'cuu.jpg')
INSERT [dbo].[Author] ([Author_ID], [FirstName], [LastName], [BirthDate], [Country], [Description], [Pic]) VALUES (5, N'Paul', N'Kalanithi', CAST(N'1977-04-01' AS Date), N'Mỹ', N'Paul Sudhir Arul Kalanithi (1 tháng 4 năm 1977 – 9 tháng 3 năm 2015) là một nhà giải phẫu thần kinh và nhà văn người Mỹ gốc Ấn Độ. Cuốn sách When Breath Becomes Air của anh là một cuốn hồi ký về cuộc đời và cuộc chiến đấu với bệnh ung thư phổi di căn giai đoạn IV của anh. Nó được xuất bản sau khi anh qua đời bởi Random House vào tháng 1 năm 2016.[1] Cuốn sách đã lọt vào danh sách những cuốn sách phi hư cấu bán chạy nhất của The New York Times trong nhiều tuần liên tiếp.[2] Tại Việt Nam, cuốn sách này đã được Nhà xuất bản Lao Động dịch và xuất bản vào tháng 7 năm 2017 với tên gọi Khi hơi thở hoá thinh không.', N'paul.jpg')
INSERT [dbo].[Author] ([Author_ID], [FirstName], [LastName], [BirthDate], [Country], [Description], [Pic]) VALUES (6, N'Michelle', N'Obama', CAST(N'1964-01-17' AS Date), N'Mỹ', N'Michelle Obama một luật sư, quản trị viên đại học Chicago và cựu Đệ Nhất Phu nhân Hoa Kỳ, phu nhân cựu Tổng thống Hoa Kỳ, Barack Obama. Sinh trưởng ở South Side, Chicago, Michelle tốt nghiệp Viện Đại học Princeton và Trường Luật Viện Đại học Harvard. Bà trở về Chicago để làm việc cho công ty luật Sidley Austin, có tên trong ban nhân viên của Thị trưởng Chicago Richard M. Daley, bà cũng làm việc cho Viện Đại học Chicago và Trung tâm Y khoa Viện Đại học Chicago. Bà là em của Craig Robinson, huấn luyện viên đội bóng rổ nam của Viện Đại học Oregon State.', N'michelle.jpg')
INSERT [dbo].[Author] ([Author_ID], [FirstName], [LastName], [BirthDate], [Country], [Description], [Pic]) VALUES (8, N'Phạm Quang', N'Huy', CAST(N'1973-03-11' AS Date), N'Việt Nam', NULL, N'huy.jpg')
INSERT [dbo].[Author] ([Author_ID], [FirstName], [LastName], [BirthDate], [Country], [Description], [Pic]) VALUES (9, N'Nhiều', N'Tác Giả', NULL, NULL, NULL, NULL)
INSERT [dbo].[Author] ([Author_ID], [FirstName], [LastName], [BirthDate], [Country], [Description], [Pic]) VALUES (10, N'Din', N'Lougheed', NULL, N'Mỹ', NULL, N'din.jpg')
INSERT [dbo].[Author] ([Author_ID], [FirstName], [LastName], [BirthDate], [Country], [Description], [Pic]) VALUES (11, N'Eriko', N'Sato', CAST(N'1962-12-27' AS Date), N'Nhật Bản', NULL, N'Eriko.jpg')
INSERT [dbo].[Author] ([Author_ID], [FirstName], [LastName], [BirthDate], [Country], [Description], [Pic]) VALUES (12, N'Lê', N'Huy Khoa', CAST(N'1974-03-02' AS Date), N'Việt Nam', N'Lê Huy Khoa (bút danh Lê Cát An Châu) tốt nghiệp đại học Ngoại ngữ Hà Nội, Học viện ngôn ngữ Đại học Yonsei – Hàn Quốc, Thạc sĩ Đại học S.Columbia – Mỹ. Hiện đang là nghiên cứu sinh Tiến sĩ Đại học Chunchohyang – Hàn Quốc.', N'lehuykhoa.jpg')
INSERT [dbo].[Author] ([Author_ID], [FirstName], [LastName], [BirthDate], [Country], [Description], [Pic]) VALUES (13, N'Paulo', N'Coelho ', CAST(N'1947-06-24' AS Date), N'Brazil', N'Thành công chưa từng có tiền lệ của Nhà giả kim đưa Coelho lên vị thế nhà văn của thế giới và trong số rất nhiều người hâm mộ tác phẩm của ông, có những tên tuổi độc giả đặc biệt như tổng thống Bill Clinton, ca sĩ Madonna, diễn viên - ca sĩ  Will Smith…', N'paulo.jpg')
INSERT [dbo].[Author] ([Author_ID], [FirstName], [LastName], [BirthDate], [Country], [Description], [Pic]) VALUES (14, N'Walter ', N'Isaacson', CAST(N'1952-05-20' AS Date), N'Mỹ', N'Walter Isaacson sinh 20 tháng 5 năm 1952, là nhà văn, nhà báo người Mỹ. Ông là chủ tịch và giám đốc điều hành của Aspen Institute - một tổ chức nghiên cứu chính sách giáo dục trung lập có trụ sở tại Washington, D.C. và tại Cable News Network (CNN).', N'issac.jpg')
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [ID_Category]) VALUES (1, N'Tiểu Thuyết', 1)
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [ID_Category]) VALUES (2, N'Ngôn Tình', 1)
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [ID_Category]) VALUES (3, N'Tiểu Sử/Hồi Kí', 1)
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [ID_Category]) VALUES (4, N'Lập Trình', 2)
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [ID_Category]) VALUES (5, N'Thiết Kế Đồ Họa', 2)
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [ID_Category]) VALUES (6, N'Tin Học Văn Phòng', 2)
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [ID_Category]) VALUES (7, N'Sách Học Tiếng Anh', 3)
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [ID_Category]) VALUES (8, N'Sách Học Tiếng Nhật', 3)
INSERT [dbo].[Brand] ([ID_Brand], [Name_Brand], [ID_Category]) VALUES (9, N'Sách Học Tiếng Hàn', 3)
INSERT [dbo].[Category] ([ID_Cate], [Name_Cate]) VALUES (1, N'Sách Văn Học')
INSERT [dbo].[Category] ([ID_Cate], [Name_Cate]) VALUES (2, N'Sách CNTT')
INSERT [dbo].[Category] ([ID_Cate], [Name_Cate]) VALUES (3, N'Sách Học Ngoại Ngữ')
INSERT [dbo].[Order] ([ID_Order], [ID_User], [Total], [Date], [Status], [firstname], [lastname], [phone], [email], [address]) VALUES (N'5Sx00Q', 1, 84, CAST(N'2020-03-31' AS Date), 1, N'Thiên', N'Diệp', N'0842000612', N'hoathiendiep@gmail.com', N'hà tĩnh')
INSERT [dbo].[Order] ([ID_Order], [ID_User], [Total], [Date], [Status], [firstname], [lastname], [phone], [email], [address]) VALUES (N'7xhOeB', 5, 145.8, CAST(N'2020-08-11' AS Date), 0, N'Như', N'Diệp', N'0123456789', N'koco@gmail.com', N'thôn 8, nhà trọ quảng cáo trọng bảng')
INSERT [dbo].[Order] ([ID_Order], [ID_User], [Total], [Date], [Status], [firstname], [lastname], [phone], [email], [address]) VALUES (N'CdIXBT', 7, 76.8, CAST(N'2020-04-01' AS Date), 0, N'erf', N'fre', N'0842000612', N'hoathiendiep@gmail.com', N'thôn 8, nhà trọ quảng cáo trọng bảng')
INSERT [dbo].[Order] ([ID_Order], [ID_User], [Total], [Date], [Status], [firstname], [lastname], [phone], [email], [address]) VALUES (N'El85H0', 5, 153.6, CAST(N'2020-03-31' AS Date), 0, N'leuleu', N'Diệp', N'0123456789', N'koco@gmail.com', N'thôn 8, nhà trọ quảng cáo trọng bảng')
INSERT [dbo].[Order] ([ID_Order], [ID_User], [Total], [Date], [Status], [firstname], [lastname], [phone], [email], [address]) VALUES (N'GCMnK9', 6, 386.75, CAST(N'2020-04-01' AS Date), 0, N'tamago', N'neko', N'0842000612', N'hoathiendiep@gmail.com', N'thôn 8, nhà trọ quảng cáo trọng bảng')
INSERT [dbo].[Order] ([ID_Order], [ID_User], [Total], [Date], [Status], [firstname], [lastname], [phone], [email], [address]) VALUES (N'pGBMIP', 8, 326.8, CAST(N'2020-08-11' AS Date), 1, N'Diệp', N'Thiên', N'0842000612', N'hoathiendiep@gmail.com', N'thôn 8, nhà trọ quảng cáo trọng bảng')
INSERT [dbo].[Order] ([ID_Order], [ID_User], [Total], [Date], [Status], [firstname], [lastname], [phone], [email], [address]) VALUES (N'r3BaPX', 5, 76.8, CAST(N'2020-03-31' AS Date), 0, N'Như', N'Diệp', N'0123456789', N'koco@gmail.com', N'thôn 8, nhà trọ quảng cáo trọng bảng')
INSERT [dbo].[Order] ([ID_Order], [ID_User], [Total], [Date], [Status], [firstname], [lastname], [phone], [email], [address]) VALUES (N'W0Vbgy', 5, 413.75, CAST(N'2020-03-31' AS Date), 0, N'Haha', N'HEHE', N'0123456789', N'koco@gmail.com', N'thôn 8, nhà trọ quảng cáo trọng bảng')
INSERT [dbo].[Order] ([ID_Order], [ID_User], [Total], [Date], [Status], [firstname], [lastname], [phone], [email], [address]) VALUES (N'wV8DVJ', 1, 68.6, CAST(N'2020-03-31' AS Date), 1, N'Như', N'Diệp', N'0842000612', N'hoathiendiep@gmail.com', N'hà tĩnh')
INSERT [dbo].[Order] ([ID_Order], [ID_User], [Total], [Date], [Status], [firstname], [lastname], [phone], [email], [address]) VALUES (N'y7abYu', 5, 242.985, CAST(N'2020-03-31' AS Date), 0, N'Doremon', N'Diệp', N'0123456789', N'koco@gmail.com', N'tokyo')
SET IDENTITY_INSERT [dbo].[Order_Details] ON 

INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (12, N'wV8DVJ', 2, 1)
INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (16, N'r3BaPX', 1, 1)
INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (17, N'W0Vbgy', 6, 1)
INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (18, N'W0Vbgy', 7, 1)
INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (19, N'El85H0', 1, 2)
INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (20, N'5Sx00Q', 3, 1)
INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (21, N'y7abYu', 4, 3)
INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (23, N'CdIXBT', 1, 1)
INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (30, N'GCMnK9', 17, 1)
INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (31, N'GCMnK9', 16, 1)
INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (36, N'7xhOeB', 1, 1)
INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (37, N'7xhOeB', 9, 1)
INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (38, N'pGBMIP', 1, 1)
INSERT [dbo].[Order_Details] ([ID_Detail], [ID_Order], [ID_Product], [Quantity]) VALUES (39, N'pGBMIP', 16, 2)
SET IDENTITY_INSERT [dbo].[Order_Details] OFF
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (1, N' Rừng Na Uy', N'rungnauy.jpg', N'Cùng thoát thai từ nỗi buồn thương trong sáng về tồn tại, Rừng Na Uy, bài hát năm nào của Beatles, đã được lấy làm tên gọi cho cuốn tiểu thuyết tình yêu ngọt ngào và u sầu của Haruki Murakami. Bước vào cõi sống của Rừng Na Uy, qua sự sớm cô đơn như định mệnh của những người trẻ tuổi, qua mối tình tay ba vừa quấn quýt xác thân vừa u mặc sầu bi của Naoko-Toru-Midori, người ta cảm thấy ngỡ ngàng trước tình yêu như là nơi trú ngụ duy nhất của người đàn ông và người đàn bà trên thế gian này, và khám phá ra một nỗi buồn mênh mang, trống vắng rất Nhật Bản của thời hiện đại. Trong nỗi ưu tư và cô đơn như một định mệnh đã cài đặt nơi những người mới lớn, trong sự tuyệt vọng của những tâm hồn trong sáng sẵn sàng hy sinh thân mình để khỏi thoả hiệp với cuộc sống thế gian. Và tình yêu đã là nơi trú ngụ duy nhất. tình yêu và sự giải phóng của xác thân bao bọc lấy nó, làm cho người đàn ông và người đàn bà có thể yêu nhau với tất cả những gì có thể trước cuộc đời ngắn ngủi và quý giá. Với ý nghĩa đó, mối tình tay ba Naoko-Toru-Midori đã lay động hàng chục triệu độc giả trên toàn thề giới trong một tác phẩm được coi là tuyệt bút của Murakami.', CAST(N'2014-05-04' AS Date), 1, 76.8, 1, 1)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (2, N'5 Centimet Trên Giây', N'5cm.jpg', N'Nếu coi tiểu thuyết 5 CENTIMET TRÊN GI Y là một bức tranh ghép hình, khắc họa chuyện đời, chuyện tình của Tono Takaki, thì 5 CENTIMET TRÊN GI Y ONE MORE SIDE giống như phần mở rộng và hoàn thiện của bức tranh ấy.

Những mảnh ghép vốn có được thay mới cả về nội dung và cách thể hiện. Những mảnh ghép ẩn được hé lộ đầy đủ và sáng tỏ. Bức tranh tổng thể vì thế mà toàn vẹn hơn, đa chiều hơn.

Được chắp bút bởi tác giả quen thuộc Kanoh Arata, 5 CENTIMET TRÊN GIÂY - ONE MORE SIDE sẽ đưa độc giả tiếp cận câu chuyện đượm buồn nhưng tuyệt đẹp của Shinkai Makoto một lần nữa, qua “một góc nhìn khác”.', CAST(N'2020-03-02' AS Date), 1, 68.6, 2, 2)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (3, N'Vì Gió Ở Nơi Ấy', N'ngontinh1.jpg', N'Chuyện bắt đầu từ chuyến đi khảo sát địa chất trên vùng cao nguyên đầy gió ở Á Đinh của nhóm sinh viên Chu Dao. Họ ở trọ tại một khách sạn, tại đây Chu Dao gặp được anh, một người đàn ông thâm trầm, lạnh lùng, cũng chính là ông chủ khách sạn cô đang nghỉ. Cô cứ thế bị anh cuốn hút, và cứ thế chủ động tiếp cận, mặc kệ sự phớt lờ nơi anh. Cô thu hẹp khoảng cách, anh thì lại cố kéo giãn nó ra. Và cứ thế, không biết từ lúc nào, họ từng bước đến gần nhau. Họ cùng nhau trải qua bao biến cố, bao hiểm nguy, để dần dần những ân oán năm xưa được tiết lộ. Từ đầu đến cuối anh chưa tùng nói một lời yêu cô, đều là cô chủ động bày tỏ, “Ông chủ Lạc, em thích anh”, “Ông chủ Lạc, em yêu anh”. Nhưng không sao cả, cô biết tình yêu anh dành cho cô còn bao la hơn cả cao nguyên ấy…', CAST(N'2019-11-08' AS Date), 2, 84, 4, 3)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (4, N'Đông Cung', N'ngontinh2.jpg', N'Nàng, vốn là cửu công chúa của Tây Lương quốc, ở Tây Lương nàng được vô vàn ân sủng, chỉ vì cầu thân mới phải lên đường đến Trung Nguyên.

Hắn, thân là đương kim thái tử, địa vị chỉ khom lưng dưới một người mà đứng trên cả ngàn vạn kẻ khác, vì hôn nhân chính trị, bất đắc dĩ mới phải lấy công chúa của dị quốc.

Hắn có ái phi của riêng mình, Triệu lương đệ. Nàng cũng có cuộc sống của riêng nàng, ấy là lén xuất cung, chặn ngựa lồng dở chứng, trừ gian diệt ác, đuổi trộm cắp, tiễn trẻ lạc về tận nhà, lại còn có uống rượu, ngao du kỹ viện….

Họ tưởng đâu chỉ là 2 đường thẳng song song vĩnh viễn không bao giờ giao nhau. Thế rồi những tranh đoạt địa vị trong Đông Cung, những phải trái vô duyên cớ, những nham hiểm ngấm ngầm, lại cứ từng bước từng bước cuốn nàng công chúa ấy vào dòng nước xoáy.', CAST(N'2013-03-06' AS Date), 2, 80.995, 3, 3)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (5, N'Khi Hơi Thở Hóa Thinh Không', N'breath.jpg', N'Khi Hơi Thở Hóa Thinh Không là tự truyện của một bác sĩ bị mắc bệnh ung thư phổi. Trong cuốn sách này, tác giả đã chia sẻ những trải nghiệm từ khi mới bắt đầu học ngành y, tiếp xúc với bệnh nhân cho tới khi phát hiện ra mình bị ung thư và phải điều trị lâu dài.

Kalanithi rất yêu thích văn chương nên câu chuyện của anh đã được thuật lại theo một phong cách mượt mà, dung dị và đầy cảm xúc. Độc giả cũng được hiểu thêm về triết lý sống, triết lý nghề y của Kalanithi, thông qua ký ức về những ngày anh còn là sinh viên, rồi thực tập, cho đến khi chính thức hành nghề phẫu thuật thần kinh. “Đối với bệnh nhân và gia đình, phẫu thuật não là sự kiện bi thảm nhất mà họ từng phải đối mặt và nó có tác động như bất kỳ một biến cố lớn lao trong đời. Trong những thời điểm nguy cấp đó, câu hỏi không chỉ đơn thuần là sống hay chết mà còn là cuộc sống nào đáng sống.” – Kalanithi luôn biết cách đưa vào câu chuyện những suy nghĩ sâu sắc và đầy sự đồng cảm như thế.

Bạn bè và gia đình đã dành tặng những lời trìu mến nhất cho con người đáng kính trọng cả về tài năng lẫn nhân cách này. Dù không thể vượt qua cơn bệnh nan y, nhưng thông điệp của tác giả sẽ còn khiến người đọc nhớ mãi.', CAST(N'2017-07-11' AS Date), 3, 73, 5, 4)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (6, N'Becoming - Chất Michelle', N'chat.jpg', N'Với quan điểm sống thành công không phải là bạn kiếm được bao nhiêu tiền mà là sự khác biệt bạn tạo nên cho cuộc sống của những người khác, chia sẻ về lý do viết cuốn sách Chất Michelle, cựu Đệ nhất Phu nhân Hoa Kỳ viết: “Tôi là một con người bình thường tham gia vào một chuyến hành trình phi thường. Khi chia sẻ câu chuyện về cuộc đời mình, tôi hy vọng có thể tạo đất cho những câu chuyện khác, những tiếng nói khác, để nới rộng con đường cho những con người thuộc về một nơi chốn và vì sao họ đang như thế.”

Nhận xét về cuốn sách Chất Michelle - Nữ hoàng Truyền hình Oprah Winfrey chia sẻ: “Đây không chỉ là câu chuyện của riêng Michelle – nó sẽ là ngọn lửa gợi mở, định hướng, truyền cảm hứng, đam mê cho bất cứ ai muốn khẳng định mình trên thế giới này !”.', CAST(N'2019-07-14' AS Date), 3, 315, 6, 5)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (7, N'Lập Trình Với C#', N'ptweb.jpg', N'Lập Trình Windows Form Và Web Form Với C#
Sách gồm 3 phần:
Phần 1: Ứng dụng Windows form
Phần 2: Xây dụng ứng dụng quản lý bán hàng
Phần 3: Xây dụng ứng dụng quản lý tuyển sinh', CAST(N'2018-07-05' AS Date), 4, 98.75, 9, 7)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (8, N'Khai Thác, Ứng Dụng Adobe Flash Vba', N'pts.jpg', N'Khai Thác, Ứng Dụng Adobe Flash Vba', CAST(N'2018-01-30' AS Date), 5, 78.75, 8, 7)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (9, N'Thực Hành Tin Học Văn Phòng', N'excel.jpg', N'Microsoft Office là bộ ứng dụng văn phòng phổ biến nhất hiện nay, và phiên bản gần đây nhất được ra mắt vào năm 2013. Trong phiên bản năm 2016, một lần nữa lại thu hút sự quan tâm của nhiều người dùng.

Sách Thực hành Microsoft Word, Excel, PowerPoint 2016 Bằng Các Tuyệt Chiêu bao gồm 13 Chương và đính kèm theo CD Bài tập, được trình bày với nội dung thực hành thực tiễn từng bước một thông qua các hình ảnh minh họa - các thủ thuật giúp bạn tự học, tự thực hành một cách nhanh chóng và chuyên nghiệp hơn', CAST(N'2019-04-02' AS Date), 6, 69, 9, 8)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (10, N'Barron''s Essential Words For The Ielts', N'IELTS.jpg', N'Quyển sách được chia thành mười bài học, mỗi bài học tập trung vào một chủ đề chính. Mỗi chủ đề chính trong mỗi bài học lại được triển khai theo ba đề tài, mỗi đề tài giới thiệu hai mươi từ mới theo bối cảnh của chủ đề bài học. Bạn sẽ luyện tập những từ vựng mới này bằng cách làm những bài tập được biên soạn giống như những câu hỏi trong bài thi IELTS. Với cuốn sách này, bạn cũng có thể kết hợp với quyển Barron’s IELTS và quyển Barron’s IELTS Practice Exams để củng cố những kỹ năng thực hành. Ngoài ra, bạn cũng có thể học các bài học theo thứ tự mình thích. Có nhiều từ đã được giới thiệu ở bài học trước sẽ được lặp lại ở những bài sau. Vì lý do này, có lẽ học theo đúng thứ tự bài sẽ hiệu quả hơn, dù điều này không bắt buộc.', CAST(N'2019-03-11' AS Date), 7, 145.6, 10, 5)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (11, N'Tự Học Viết Tiếng Nhật 200 Chữ Kanji', N'kanji.jpg', N'Bất cứ người học tiếng Nhật nào cũng gặp khó khăn khi phải ghi nhớ và học viết chữ Kanji. Tự Học Viết Tiếng Nhật 200 Chữ Kanji Căn Bản (Tập 1) có hướng tiếp cận theo cấu tạo chữ, nhằm giúp người học mau chóng nắm vững cách viết Kanji căn bản - vốn là nền tảng cho việc học tiếng Nhật.

Nhắm đến đối tượng là người mới học tiếng Nhật, vì vậy cuốn sách giới thiệu những chữ thông dụng nhất. Các chữ này được tuyển lọc kĩ càng nhằm đáp ứng nhu cầu học nhanh và hiệu quả. Mỗi chữ Kanji được giới thiệu cả phần phiên âm tương ứng (bằng chữ Hiragana, Katakana và Romaji - tức phiên âm chữ Latinh), nghĩa và các từ ghép có dùng chữ Kanji đó. Phần tập viết gồm có một chữ cái lớn, kèm theo các nét được in mờ để người học biết được cần viết các nét theo thứ tự nào. Ở cuối sách là ba phụ lục để tra cứu các chữ đã học.', CAST(N'2015-08-23' AS Date), 8, 42, 11, 5)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (12, N'Những Mẫu Văn Bản Tiếng Hàn', N'han.jpg', N'Quyển sách những mẫu văn bản tiếng hàn ra đời nhằm giúp người đi làm trong các công ty Hàn Quốc có thể soạn thảo những mẫu văn bản theo đúng văn phong, cách trình bày để người Hàn Quốc có thể hiệu chính xác và đúng nhất những gì mình muốn diễn đạt', CAST(N'2018-04-05' AS Date), 9, 96.6, 12, 9)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (13, N'Biên Niên Ký Chim Vặn Dây Cót', N'bien.jpg', N'Tiếng hót của con chim vặn dây cót chỉ vang lên vào những thời khắc quyết định, khi con người tỉnh thức những tiếng lòng thầm kín, hay khoảnh khắc thấu suốt cảm giác về định mệnh; tiếng chim tiên báo những thảm họa khốc liệt khơi nguồn từ chính con người, cũng là tiếng thúc giục âm thầm của khát vọng đi tìm chân lý. Tiếng hót của chim vặn dây cót trở thành biểu tượng sự thức tỉnh những xúc cảm mãnh liệt và sự trưởng thành về bản ngã của con người trong đời sống hiện đại. Đó chính là ý nghĩa của hình tượng chim dây cót xuyên suốt cuốn tiểu thuyết lớn của Haruki Murakami.', CAST(N'2018-08-04' AS Date), 1, 123.75, 1, 1)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (14, N'Nhà Giả Kim', N'kim.jpg', N'“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”', CAST(N'2013-05-16' AS Date), 1, 43.5, 13, 1)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (15, N' Luyện Thi Năng Lực Tiếng Nhật', N'tuvung.jpg', N'Vào đến trung cấp, việc bổ sung vốn từ vựng là vô cùng cần thiết. 1800 từ vựng trong cuốn sách này đã được lựa chọn từ các đề thi năng lực tiếng Nhật trong quá khứ vì vậy vô cùng phù hợp với những đối tượng đã học hết sơ cấp và muốn ôn tập lại kiến thức của mình.

Các điểm đặc trưng của cuốn sách!

① Bố cục dễ nhớ

Dễ nhớ nhờ bố cục phân chia các từ loại. Ngoài ra phù hợp với cả những đối tượng muốn tự ôn tập.

② Xác nhận lại ý nghĩa qua các câu văn Nắm bắt được ấn tượng của các từ vựng thông qua các ví dụ tự nhiên và dễ hiểu.

③ Ôn tập lại từ vựng đã học qua các đoạn văn “ 読んでみよう” Cứ khoảng 200 từ, sẽ có các bài đọc sử dụng các từ vựng đã học (sẽ được biểu thị bằng các từ in đậm) để người học ôn tập lại.

④ Nghe và xác nhận

Trên website có phát âm các từ vựng trong  danh sách từ vựng và phần “ 読んでみよ う” nên người học có thể xác nhận lại các từ vựng đã ghi nhớ bằng đôi tai của mình. 

⑤ Nâng cao năng lực từ vựng thông qua các từ vựng tham khảo phong phú Cung cấp thêm các từ vựng tham khảo có liên quan, giúp người học có thể hiểu sâu', CAST(N'2018-05-06' AS Date), 8, 92, 9, 2)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (16, N'Shinkanzen Master N3 Từ Vựng', N'n3.jpg', N'Số lượng từ vựng trong phạm vi ra đề từ 10.000 đến 15.000 từ
Vốn từ vựng phục vụ cho cấu trúc đề thi: từ vựng trong bài thi được lựa chọn dựa trên mục đích học tiếng Nhật và vận dụng tiếng Nhật.
Bắt đầu từ 2010, danh sách từ vựng trong đề thi không còn được công khai nên đòi hỏi người học phải nắm chắc và ghi nhớ vốn từ vựng mở rộng hơn.
Cuốn sách này có giúp bạn đạt được những mục tiêu trên không?
1. 1024 từ vựng được nghiên cứu và qua các tài liệu và đề thi, có khả năng cao xuất hiện trong các bài thi tiếng Nhật.
Trong quá trình học tiếng Nhật, hẳn bạn sẽ từng làm rất nhiều đề thi thử hoặc các đề thi từ các năm trước để làm quen với cấu trúc đề thi và rút kinh nghiệm để làm bài tốt trong kỳ thi thật. Được tổng hợp và nghiên cứu từ rất nhiều các bài thi năng lực N3 các năm trước cùng với tài liệu tiếng Nhật, cuốn sách Tài liệu luyện thi năng lực tiếng Nhật N3 – Từ vựng giúp bạn rút ngắn thời gian học và chia sẻ những bí quyết ghi nhớ tốt nhất.', CAST(N'2017-03-04' AS Date), 8, 125, 9, 2)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (17, N'Tiểu Sử Steve Jobs', N'steve.jpg', N'Tiểu Sử Steve Jobs (Tái Bản 2017)

Cuốn tiểu sử với tiêu đề ngắn gọn “Steve Jobs” do cựu thư ký tòa soạn của tạp chí “Time”, Walter Isaacson biên soạn, dựa trên 40 cuộc phỏng vấn với Steve Jobs trong 2 năm cùng các cuộc phỏng vấn với hơn 100 người thân, bạn bè, đồng nghiệp và đối thủ của ông, khi vừa được phát hành trên Amazon đã liên tục đứng vị trí số 1 danh sách sách bán chạy nhất của cả Amazon lẫn Barnes & Nobles. Đây cũng là cuốn tiểu sử đầu tiên và duy nhất nhận được sự đồng ý của Steve Jobs. Walter Isaacson cũng là người viết tiểu sử nổi tiếng, với 2 tác phẩm viết về Benjamin Franklin và Albert Einstein.

Cuốn sách Steve Jobs tiết lộ nhiều thông tin chưa từng được kể về Steve Jobs như tính cách cay nghiệt, kỳ dị, chuyện ông chiến đấu với bệnh ung thư, những mối quan hệ lãng mạn của ông và cuộc hôn nhân với bà Laurene Powell... Và trên hết đó là quá trình ông đã gây dựng và chèo lái Apple đi đến thành công như ngày hôm nay với không ít sai lầm cũng như những ám ảnh không thôi về sự hoàn hảo. Tác phẩm vì thế đã cung cấp cho người đọc một cái nhìn sâu sắc về nhân cách và cả những thành tựu của cuộc đời Steve Jobs. Đó là một cuốn sách chứa đựng những điều Steve Jobs muốn nói với thế giới.', CAST(N'2017-05-02' AS Date), 3, 261.75, 14, 10)
INSERT [dbo].[Product] ([ID_Product], [Name_Product], [Pic_Product], [Info_Product], [Date], [ID_Brand], [Price], [Author_ID], [Publisher_ID]) VALUES (18, N'Benjamin Franklin', N'ben.jpg', N'Benjamin Franklin: Cuộc Đời Một Người Mỹ

Benjamin Franklin, người cha sáng lập nước Mỹ, như thể đang hóm hỉnh nháy mắt với chúng ta trong từng trang cuốn tiểu sử này […] Walter Isaacson ghi lại những cuộc phiêu lưu của một người học việc, trong suốt cuộc đời dài tám mươi tư năm của ông, rồi trở thành nhà văn, nhà phát minh, người truyền thông hay nhất nước Mỹ, đồng thời cũng là nhà khoa học, nhà ngoại giao, và chiến lược gia kinh doanh, và là một trong những nhà lãnh đạo chính trị thực tiễn và khéo léo nhất đất nước này.

Tác giả nhìn ra trí thông minh đằng sau cuốn Niên giám Richard Nghèo Khổ và sự khôn ngoan đằng sau bản Tuyên ngôn Độc lập, sự thông thái đằng sau thỏa thuận Liên minh của các thuộc địa Mỹ với Pháp, một hiệp ước đã kết thúc Cách mạng và các thỏa hiệp đã tạo nên bản Hiến pháp Mỹ 1787 gần như hoàn hảo. […] câu chuyện đầy màu sắc và thân mật này […] cho thấy Benjamin Franklin đã góp phần định hình bản sắc dân tộc Mỹ như thế nào và lý do tại sao ông càng trở nên đặc biệt trong thế kỷ 21.”', CAST(N'2017-06-02' AS Date), 3, 257.6, 14, 10)
INSERT [dbo].[Publish] ([ID_Publish], [Name_Publish], [Address], [Phone]) VALUES (1, N'Nhà Xuất Bản Hội Nhà Văn', N' Nguyễn Du, quận Hai Bà Trưng, Hà Nội ', N'024 382 22135')
INSERT [dbo].[Publish] ([ID_Publish], [Name_Publish], [Address], [Phone]) VALUES (2, N'Nhà Xuất Bản Hồng Đức', N'65 Tràng Thi, Hàng Bông, Hoàn Kiếm, Hà Nội', N' 024 3926 0024')
INSERT [dbo].[Publish] ([ID_Publish], [Name_Publish], [Address], [Phone]) VALUES (3, N'Nhà Xuất Bản Hà Nội', N'số 4 Tống Duy Tân, Hàng Bông, Hoàn Kiếm, Hà Nội', NULL)
INSERT [dbo].[Publish] ([ID_Publish], [Name_Publish], [Address], [Phone]) VALUES (4, N'Nhà Xuất Bản Lao Động', N'175 Giảng Võ, Chợ Dừa, Đống Đa, Hà Nội', N'024 3851 5380')
INSERT [dbo].[Publish] ([ID_Publish], [Name_Publish], [Address], [Phone]) VALUES (5, N'Nhà Xuất Bản Tổng hợp TP.HCM', N'62 Nguyễn Thị Minh Khai, Đa Kao, Quận 1, Hồ Chí Minh', N'028 3822 5340')
INSERT [dbo].[Publish] ([ID_Publish], [Name_Publish], [Address], [Phone]) VALUES (6, N'Nhà Xuất Bản Bách Khoa Hà Nội', N'Ngõ 17 Tạ Quang Bửu, Bách Khoa, Hai Bà Trưng, Hà Nội', N'024 3868 4569')
INSERT [dbo].[Publish] ([ID_Publish], [Name_Publish], [Address], [Phone]) VALUES (7, N'Nhà Xuất Bản Thanh Niên', N'64 Bà Triệu, Trần Hưng Đạo, Hoàn Kiếm, Hà Nội', N'024 6263 1704')
INSERT [dbo].[Publish] ([ID_Publish], [Name_Publish], [Address], [Phone]) VALUES (8, N'Nhà Xuất Bản Đồng Nai', N'Chung cư A5, 1953J (210, Nguyễn Ái Quốc, Trung Dũng, Thành phố Biên Hòa, Đồng Nai', N'0251 3946 521')
INSERT [dbo].[Publish] ([ID_Publish], [Name_Publish], [Address], [Phone]) VALUES (9, N'Nhà Xuất Bản Đại Học Quốc Gia TP.HCM', N'3 Công Trường Quốc Tế, Phường 6, 3, Hồ Chí Minh', N'028 3823 9170')
INSERT [dbo].[Publish] ([ID_Publish], [Name_Publish], [Address], [Phone]) VALUES (10, N'	Nhà Xuất Bản Thế Giới', N' 46 Trần Hưng Đạo, Hàng Bài, Hoàn Kiếm, Hà Nội 100000', N'024 3825 3841')
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Username], [Password], [FirstName], [LastName], [Email], [BirthDate], [Phone], [Address], [Gender], [User_ID]) VALUES (N't', N'2', N'Thiên', N'Diệp', N'hoathiendiep@gmail.com', CAST(N'2000-06-12' AS Date), N'0842000612', N'hà tĩnh', 0, 1)
INSERT [dbo].[User] ([Username], [Password], [FirstName], [LastName], [Email], [BirthDate], [Phone], [Address], [Gender], [User_ID]) VALUES (N'n', N'1', N'Như', N'Diệp', N'koco@gmail.com', CAST(N'1973-11-03' AS Date), N'0123456789', N'thôn 8, nhà trọ quảng cáo trọng bảng', 0, 5)
INSERT [dbo].[User] ([Username], [Password], [FirstName], [LastName], [Email], [BirthDate], [Phone], [Address], [Gender], [User_ID]) VALUES (N'mra', N'1', N'fw', N'ef', N'hoathiendiep@gmail.com', CAST(N'2000-06-22' AS Date), N'0842000612', N'thôn 8, nhà trọ quảng cáo trọng bảng', 1, 6)
INSERT [dbo].[User] ([Username], [Password], [FirstName], [LastName], [Email], [BirthDate], [Phone], [Address], [Gender], [User_ID]) VALUES (N'mrb', N'1', N'erf', N'fre', N'hoathiendiep@gmail.com', CAST(N'2000-06-12' AS Date), N'0842000612', N'thôn 8, nhà trọ quảng cáo trọng bảng', 1, 7)
INSERT [dbo].[User] ([Username], [Password], [FirstName], [LastName], [Email], [BirthDate], [Phone], [Address], [Gender], [User_ID]) VALUES (N'ta', N'1', N'Diệp', N'Thiên', N'hoathiendiep@gmail.com', CAST(N'2020-05-31' AS Date), N'0842000612', N'thôn 8, nhà trọ quảng cáo trọng bảng', 1, 8)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Brand]  WITH CHECK ADD  CONSTRAINT [FK_Brand_Category] FOREIGN KEY([ID_Category])
REFERENCES [dbo].[Category] ([ID_Cate])
GO
ALTER TABLE [dbo].[Brand] CHECK CONSTRAINT [FK_Brand_Category]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([ID_User])
REFERENCES [dbo].[User] ([User_ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Order] FOREIGN KEY([ID_Order])
REFERENCES [dbo].[Order] ([ID_Order])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Order]
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_Order_Details_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Author] FOREIGN KEY([Author_ID])
REFERENCES [dbo].[Author] ([Author_ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Author]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([ID_Brand])
REFERENCES [dbo].[Brand] ([ID_Brand])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Publish] FOREIGN KEY([Publisher_ID])
REFERENCES [dbo].[Publish] ([ID_Publish])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Publish]
GO
USE [master]
GO
ALTER DATABASE [ProjectPRJ321] SET  READ_WRITE 
GO
