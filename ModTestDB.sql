USE [master]
GO
/****** Object:  Database [ModTestDB]    Script Date: 27.09.2024 20:26:58 ******/
CREATE DATABASE [ModTestDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ModTestDB', FILENAME = N'D:\programs\MSSQL16.MSSQLSERVER\MSSQL\DATA\ModTestDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ModTestDB_log', FILENAME = N'D:\programs\MSSQL16.MSSQLSERVER\MSSQL\DATA\ModTestDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ModTestDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ModTestDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ModTestDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ModTestDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ModTestDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ModTestDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ModTestDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ModTestDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ModTestDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ModTestDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ModTestDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ModTestDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ModTestDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ModTestDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ModTestDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ModTestDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ModTestDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ModTestDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ModTestDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ModTestDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ModTestDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ModTestDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ModTestDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ModTestDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ModTestDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ModTestDB] SET  MULTI_USER 
GO
ALTER DATABASE [ModTestDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ModTestDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ModTestDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ModTestDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ModTestDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ModTestDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ModTestDB', N'ON'
GO
ALTER DATABASE [ModTestDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [ModTestDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ModTestDB]
GO
/****** Object:  Table [dbo].[ModTestData]    Script Date: 27.09.2024 20:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModTestData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Dividend] [bigint] NOT NULL,
	[Divisor] [bigint] NOT NULL,
	[ExpectedResult] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ModTestDB] SET  READ_WRITE 
GO
