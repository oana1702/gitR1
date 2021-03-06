USE [master]
GO
/****** Object:  Database [MyData]    Script Date: 2/1/2018 10:02:28 AM ******/
CREATE DATABASE [MyData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyData', FILENAME = N'C:\ProgramData\SOLIDWORKS Electrical\MSSQL11.TEW_SQLEXPRESS\MSSQL\DATA\MyData.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MyData_log', FILENAME = N'C:\ProgramData\SOLIDWORKS Electrical\MSSQL11.TEW_SQLEXPRESS\MSSQL\DATA\MyData_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MyData] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyData] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyData] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyData] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MyData] SET  MULTI_USER 
GO
ALTER DATABASE [MyData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyData] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [MyData]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 2/1/2018 10:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Operating time] [datetime] NULL,
	[Number of uses] [int] NULL,
	[Updates] [xml] NULL,
	[Initial properties] [xml] NULL,
	[Properties modified] [xml] NULL,
	[Performance criteria] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model Details]    Script Date: 2/1/2018 10:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Properties] [xml] NULL,
	[Materials] [varchar](50) NULL,
	[Steps] [float] NULL,
	[Step rate] [decimal](18, 0) NULL,
	[Power] [decimal](18, 0) NULL,
	[Type] [varchar](50) NULL,
	[Identifier] [uniqueidentifier] NULL,
	[Model Points] [int] NULL,
 CONSTRAINT [PK_Model Details] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operator]    Script Date: 2/1/2018 10:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operator](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[First Name] [varchar](50) NULL,
	[Last Name] [varchar](50) NULL,
	[Identifier] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Operator] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operator Details]    Script Date: 2/1/2018 10:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operator Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employed since] [datetime] NULL,
	[Tests] [xml] NULL,
	[Updates] [xml] NULL,
	[Errors handled] [int] NULL,
	[History] [xml] NULL,
	[Properties modified] [xml] NULL,
	[Consulting] [xml] NULL,
	[Performance criteria] [nchar](10) NULL,
	[Operator ID] [int] NULL,
 CONSTRAINT [PK_Operator Details] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Performance]    Script Date: 2/1/2018 10:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Performance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Properties] [xml] NULL,
	[Properties modified] [xml] NULL,
	[Errors] [xml] NULL,
	[Number of errors] [int] NULL,
	[Tests] [int] NULL,
	[Updates] [xml] NULL,
	[Performance criteria] [nchar](10) NULL,
	[Precision points] [int] NULL,
 CONSTRAINT [PK_Performance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2/1/2018 10:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[First Name] [varchar](50) NULL,
	[Last Name] [varchar](50) NULL,
	[Age] [int] NULL,
	[Email] [nchar](10) NULL,
	[UseID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User Details]    Script Date: 2/1/2018 10:02:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Number of user] [int] NULL,
	[Operating time] [datetime] NULL,
	[Advice needed] [xml] NULL,
	[History] [xml] NULL,
	[Properties Modified] [xml] NULL,
	[Performance criteria] [nchar](10) NULL,
	[User ID] [int] NOT NULL,
 CONSTRAINT [PK_User Details] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Model Details]  WITH CHECK ADD  CONSTRAINT [FK_Model Details_Model] FOREIGN KEY([Model Points])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[Model Details] CHECK CONSTRAINT [FK_Model Details_Model]
GO
ALTER TABLE [dbo].[Operator Details]  WITH CHECK ADD  CONSTRAINT [FK_Operator Details_Operator] FOREIGN KEY([Operator ID])
REFERENCES [dbo].[Operator] ([ID])
GO
ALTER TABLE [dbo].[Operator Details] CHECK CONSTRAINT [FK_Operator Details_Operator]
GO
ALTER TABLE [dbo].[Performance]  WITH CHECK ADD  CONSTRAINT [FK_Performance_Model] FOREIGN KEY([Precision points])
REFERENCES [dbo].[Model] ([ID])
GO
ALTER TABLE [dbo].[Performance] CHECK CONSTRAINT [FK_Performance_Model]
GO
ALTER TABLE [dbo].[User Details]  WITH CHECK ADD  CONSTRAINT [FK_User Details_User] FOREIGN KEY([User ID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[User Details] CHECK CONSTRAINT [FK_User Details_User]
GO
USE [master]
GO
ALTER DATABASE [MyData] SET  READ_WRITE 
GO
