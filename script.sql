USE [master]
GO
/****** Object:  Database [ResturantSite]    Script Date: 6/20/2020 5:37:41 PM ******/
CREATE DATABASE [ResturantSite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ResturantSite', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ResturantSite.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ResturantSite_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ResturantSite_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ResturantSite] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ResturantSite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ResturantSite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ResturantSite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ResturantSite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ResturantSite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ResturantSite] SET ARITHABORT OFF 
GO
ALTER DATABASE [ResturantSite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ResturantSite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ResturantSite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ResturantSite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ResturantSite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ResturantSite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ResturantSite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ResturantSite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ResturantSite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ResturantSite] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ResturantSite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ResturantSite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ResturantSite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ResturantSite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ResturantSite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ResturantSite] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ResturantSite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ResturantSite] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ResturantSite] SET  MULTI_USER 
GO
ALTER DATABASE [ResturantSite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ResturantSite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ResturantSite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ResturantSite] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ResturantSite] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ResturantSite] SET QUERY_STORE = OFF
GO
USE [ResturantSite]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/20/2020 5:37:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 6/20/2020 5:37:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Message] [varchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[items]    Script Date: 6/20/2020 5:37:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[items](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Product] [varchar](50) NULL,
	[Ingredient] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
 CONSTRAINT [PK_items] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/20/2020 5:37:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Item] [varchar](50) NULL,
	[Qty] [varchar](50) NULL,
	[bill] [varchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([id], [Email], [Password]) VALUES (1, N'admin@gmail.com', N'admin')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [Name], [Email], [Contact], [Message]) VALUES (2, N'qwqw', N'qw@as.com', N'qwq', N'qww')
INSERT [dbo].[Contact] ([id], [Name], [Email], [Contact], [Message]) VALUES (3, N'qwqw', N'qw@as.com', N'qwq', N'qww')
SET IDENTITY_INSERT [dbo].[Contact] OFF
SET IDENTITY_INSERT [dbo].[items] ON 

INSERT [dbo].[items] ([id], [Product], [Ingredient], [Price]) VALUES (1, N'dosa', N'potato', N'$23')
SET IDENTITY_INSERT [dbo].[items] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [Name], [Contact], [Date], [Item], [Qty], [bill]) VALUES (1, N'hapz', N'1234', N'06/20/2020', N'dosa', N'1', N'40')
SET IDENTITY_INSERT [dbo].[Order] OFF
USE [master]
GO
ALTER DATABASE [ResturantSite] SET  READ_WRITE 
GO
