USE [master]
GO

/****** Object:  Database [projek]    Script Date: 2/11/2021 12:57:18 ******/
CREATE DATABASE [projek]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'projek', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\projek.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'projek_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\projek_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [projek].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [projek] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [projek] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [projek] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [projek] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [projek] SET ARITHABORT OFF 
GO

ALTER DATABASE [projek] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [projek] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [projek] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [projek] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [projek] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [projek] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [projek] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [projek] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [projek] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [projek] SET  DISABLE_BROKER 
GO

ALTER DATABASE [projek] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [projek] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [projek] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [projek] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [projek] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [projek] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [projek] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [projek] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [projek] SET  MULTI_USER 
GO

ALTER DATABASE [projek] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [projek] SET DB_CHAINING OFF 
GO

ALTER DATABASE [projek] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [projek] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [projek] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [projek] SET QUERY_STORE = OFF
GO

ALTER DATABASE [projek] SET  READ_WRITE 
GO
