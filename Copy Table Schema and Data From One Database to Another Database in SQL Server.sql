USE [master]
GO
/****** Object:  Database [ajay]    Script Date: 09-05-2022 13:40:53 ******/
CREATE DATABASE [ajay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ajay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ajay.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ajay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ajay_log.ldf' , SIZE = 10240KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ajay] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ajay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ajay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ajay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ajay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ajay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ajay] SET ARITHABORT OFF 
GO
ALTER DATABASE [ajay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ajay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ajay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ajay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ajay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ajay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ajay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ajay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ajay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ajay] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ajay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ajay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ajay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ajay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ajay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ajay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ajay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ajay] SET RECOVERY FULL 
GO
ALTER DATABASE [ajay] SET  MULTI_USER 
GO
ALTER DATABASE [ajay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ajay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ajay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ajay] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ajay] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ajay] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ajay', N'ON'
GO
ALTER DATABASE [ajay] SET QUERY_STORE = OFF
GO
USE [ajay]
GO
/****** Object:  Table [dbo].[db2]    Script Date: 09-05-2022 13:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db2](
	[Pregnancies] [int] NULL,
	[GlucoseBloodPressure] [int] NULL,
	[SkinThickness] [int] NULL,
	[Insulin] [int] NULL,
	[BMI] [float] NULL,
	[DiabetesPedigreeFunction] [float] NULL,
	[Age] [int] NULL,
	[Outcome] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[diabetes$]    Script Date: 09-05-2022 13:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diabetes$](
	[Pregnancies] [float] NULL,
	[Glucose] [float] NULL,
	[BloodPressure] [float] NULL,
	[SkinThickness] [float] NULL,
	[Insulin] [float] NULL,
	[BMI] [float] NULL,
	[DiabetesPedigreeFunction] [float] NULL,
	[Age] [float] NULL,
	[Outcome] [float] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ajay] SET  READ_WRITE 
GO

Select * into [badminton].[dbo].[diabete2] -- Distination server name and its automatically created table
from [ajay].[dbo].[diabetes$]  -- source database server name with table


