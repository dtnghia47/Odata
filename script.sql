USE [master]
GO
/****** Object:  Database [OData]    Script Date: 09-Dec-16 12:16:59 AM ******/
CREATE DATABASE [OData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\OData.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\OData_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OData] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OData] SET ARITHABORT OFF 
GO
ALTER DATABASE [OData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OData] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OData] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OData] SET  MULTI_USER 
GO
ALTER DATABASE [OData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OData] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [OData] SET DELAYED_DURABILITY = DISABLED 
GO
USE [OData]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 09-Dec-16 12:16:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Product] ([id], [Name], [Country], [Type]) VALUES (1, N'Nokia', N'VietNam', N'A')
INSERT [dbo].[Product] ([id], [Name], [Country], [Type]) VALUES (2, N'SamSung', N'Cambodia', N'B')
INSERT [dbo].[Product] ([id], [Name], [Country], [Type]) VALUES (3, N'Iphone', N'VietNam', N'C')
INSERT [dbo].[Product] ([id], [Name], [Country], [Type]) VALUES (4, N'SamSung2', N'ThaiLand', N'D')
INSERT [dbo].[Product] ([id], [Name], [Country], [Type]) VALUES (5, N'Nokia2', N'VietNam', N'A')
USE [master]
GO
ALTER DATABASE [OData] SET  READ_WRITE 
GO
