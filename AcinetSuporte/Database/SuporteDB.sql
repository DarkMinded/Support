USE [master]
GO
/****** Object:  Database [Suporte]    Script Date: 24-11-2017 16:18:31 ******/
CREATE DATABASE [Suporte]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Suporte', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Suporte.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Suporte_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Suporte_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Suporte] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Suporte].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Suporte] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Suporte] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Suporte] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Suporte] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Suporte] SET ARITHABORT OFF 
GO
ALTER DATABASE [Suporte] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Suporte] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Suporte] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Suporte] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Suporte] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Suporte] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Suporte] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Suporte] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Suporte] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Suporte] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Suporte] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Suporte] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Suporte] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Suporte] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Suporte] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Suporte] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Suporte] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Suporte] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Suporte] SET  MULTI_USER 
GO
ALTER DATABASE [Suporte] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Suporte] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Suporte] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Suporte] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Suporte] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Suporte]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[APPCorrection]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APPCorrection](
	[CorrectionID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](4000) NULL,
	[BugDocumentId] [bigint] NOT NULL,
	[VersionId] [bigint] NOT NULL,
 CONSTRAINT [PK_Correction] PRIMARY KEY CLUSTERED 
(
	[CorrectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[APPFeature]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APPFeature](
	[FeatureId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](4000) NULL,
	[VersionId] [bigint] NOT NULL,
	[DocumentoOrigem] [bigint] NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[FeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Application]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[ApplicationId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationGroupRoles]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationGroupRoles](
	[ApplicationRoleId] [nvarchar](128) NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.ApplicationGroupRoles] PRIMARY KEY CLUSTERED 
(
	[ApplicationRoleId] ASC,
	[ApplicationGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationGroups]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationGroups](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ApplicationGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationUserGroups]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationUserGroups](
	[ApplicationUserId] [nvarchar](128) NOT NULL,
	[ApplicationGroupId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.ApplicationUserGroups] PRIMARY KEY CLUSTERED 
(
	[ApplicationUserId] ASC,
	[ApplicationGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BArea]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BArea](
	[BAreaID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](4000) NULL,
 CONSTRAINT [PK_BArea] PRIMARY KEY CLUSTERED 
(
	[BAreaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Client]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](75) NOT NULL,
	[GTTId] [nchar](10) NOT NULL,
	[PRIId] [nchar](10) NOT NULL,
	[BAreaID] [bigint] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientContact]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientContact](
	[ClienteContactId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](75) NOT NULL,
	[email] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_ClientContact] PRIMARY KEY CLUSTERED 
(
	[ClienteContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colaborador]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colaborador](
	[ColaboradorId] [bigint] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[CellPhone] [nvarchar](21) NULL,
 CONSTRAINT [PK_Colaborador] PRIMARY KEY CLUSTERED 
(
	[ColaboradorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[DepartamentoID] [bigint] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[ResponsavelId] [bigint] NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[DepartamentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocNote]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocNote](
	[DocNoteId] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentoId] [bigint] NULL,
	[Autor] [bigint] NOT NULL,
	[DataInicioPrevisto] [datetime] NOT NULL,
	[DataInicio] [datetime] NOT NULL,
	[DataFim] [datetime] NULL,
	[DuracaoPrevista] [datetime] NULL,
	[Duracao] [bigint] NULL,
	[TempoImputar] [bigint] NULL,
	[ApplicationId] [bigint] NOT NULL,
	[VersionId] [bigint] NOT NULL,
	[Description] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_DocNote] PRIMARY KEY CLUSTERED 
(
	[DocNoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocNoteReply]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocNoteReply](
	[DocNoteReplyId] [bigint] IDENTITY(1,1) NOT NULL,
	[DocNoteId] [bigint] NOT NULL,
	[Autor] [bigint] NOT NULL,
	[DataInicioPrevisto] [datetime] NOT NULL,
	[DataInicio] [datetime] NOT NULL,
	[DataFim] [datetime] NULL,
	[DuracaoPrevista] [datetime] NULL,
	[Duracao] [bigint] NULL,
	[TempoImputar] [bigint] NULL,
	[ApplicationId] [bigint] NOT NULL,
	[VersionId] [bigint] NOT NULL,
	[Description] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_DocNoteReply] PRIMARY KEY CLUSTERED 
(
	[DocNoteReplyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Document]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[DocumentId] [bigint] IDENTITY(1,1) NOT NULL,
	[DocumentTypeId] [bigint] NOT NULL,
	[BAreaId] [bigint] NOT NULL,
	[ClientId] [bigint] NOT NULL,
	[ClientContactId] [bigint] NOT NULL,
	[TicketId] [nvarchar](50) NOT NULL,
	[PersonInChargeId] [bigint] NULL,
	[Estimated] [bit] NOT NULL,
	[EstimatedBy] [bigint] NOT NULL,
	[AprovedBy] [bigint] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[DeliverDate] [datetime] NULL,
	[EspectedDate] [datetime] NULL,
	[StateId] [bigint] NULL,
	[Progress] [float] NOT NULL,
	[AprovedAt] [datetime] NULL,
	[EstimatedAt] [datetime] NULL,
	[Assunto] [nvarchar](100) NULL,
	[Description] [nvarchar](4000) NULL,
	[DescriptionFact] [nvarchar](4000) NULL,
	[DescriptionTec] [nvarchar](4000) NULL,
	[EstimatedTime] [bigint] NULL,
	[InvoiceTime] [bigint] NULL,
	[TimeSpent] [bigint] NULL,
	[PriorityId] [bigint] NOT NULL,
	[Visible] [bit] NOT NULL,
	[System] [bit] NOT NULL,
	[ApplicationId] [bigint] NOT NULL,
 CONSTRAINT [PK_Documeto] PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentType](
	[DocumentTypeID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[DocumentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeatureTest]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureTest](
	[FeatureTestId] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](4000) NULL,
	[ExpectedBehaviour] [nvarchar](4000) NULL,
	[ObservedBehaviour] [nvarchar](4000) NULL,
	[TestEvolution] [float] NOT NULL,
	[TestStatusId] [bigint] NOT NULL,
	[TestId] [bigint] NOT NULL,
	[FeatureId] [bigint] NOT NULL,
 CONSTRAINT [PK_FeatureTest] PRIMARY KEY CLUSTERED 
(
	[FeatureTestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NoteFile]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoteFile](
	[NoteFileId] [bigint] IDENTITY(1,1) NOT NULL,
	[Filename] [nvarchar](256) NOT NULL,
	[Path] [nchar](256) NOT NULL,
	[DocNoteId] [bigint] NULL,
	[DocNoteReplyId] [bigint] NULL,
 CONSTRAINT [PK_NoteFile] PRIMARY KEY CLUSTERED 
(
	[NoteFileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Priority]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[PriorityId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PLevel] [int] NOT NULL,
 CONSTRAINT [PK_Priority] PRIMARY KEY CLUSTERED 
(
	[PriorityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[isFinal] [bit] NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test](
	[TesteId] [bigint] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [bigint] NOT NULL,
	[VersionId] [bigint] NOT NULL,
	[Description] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Teste] PRIMARY KEY CLUSTERED 
(
	[TesteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestStatus]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestStatus](
	[TestStatusId] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[isFinal] [bit] NOT NULL,
 CONSTRAINT [PK_TestStatus] PRIMARY KEY CLUSTERED 
(
	[TestStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Version]    Script Date: 24-11-2017 16:18:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Version](
	[VersionId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](4000) NULL,
	[ApplicationId] [bigint] NOT NULL,
 CONSTRAINT [PK_Version] PRIMARY KEY CLUSTERED 
(
	[VersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ApplicationGroupId]    Script Date: 24-11-2017 16:18:31 ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationGroupId] ON [dbo].[ApplicationGroupRoles]
(
	[ApplicationGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_ApplicationGroupId]    Script Date: 24-11-2017 16:18:31 ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationGroupId] ON [dbo].[ApplicationUserGroups]
(
	[ApplicationGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 24-11-2017 16:18:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 24-11-2017 16:18:31 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 24-11-2017 16:18:31 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 24-11-2017 16:18:31 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 24-11-2017 16:18:31 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 24-11-2017 16:18:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF_Documeto_Orcamentado]  DEFAULT ((0)) FOR [Estimated]
GO
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF_Documeto_Progress]  DEFAULT ((0)) FOR [Progress]
GO
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF_Documeto_Visible]  DEFAULT ((1)) FOR [Visible]
GO
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF_Documeto_System]  DEFAULT ((0)) FOR [System]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF_State_isFinal]  DEFAULT ((0)) FOR [isFinal]
GO
ALTER TABLE [dbo].[APPCorrection]  WITH CHECK ADD  CONSTRAINT [FK_APPCorrection_Documeto] FOREIGN KEY([BugDocumentId])
REFERENCES [dbo].[Document] ([DocumentId])
GO
ALTER TABLE [dbo].[APPCorrection] CHECK CONSTRAINT [FK_APPCorrection_Documeto]
GO
ALTER TABLE [dbo].[APPCorrection]  WITH CHECK ADD  CONSTRAINT [FK_Correction_Correction] FOREIGN KEY([VersionId])
REFERENCES [dbo].[Version] ([VersionId])
GO
ALTER TABLE [dbo].[APPCorrection] CHECK CONSTRAINT [FK_Correction_Correction]
GO
ALTER TABLE [dbo].[APPFeature]  WITH CHECK ADD  CONSTRAINT [FK_APPFeature_Documeto] FOREIGN KEY([DocumentoOrigem])
REFERENCES [dbo].[Document] ([DocumentId])
GO
ALTER TABLE [dbo].[APPFeature] CHECK CONSTRAINT [FK_APPFeature_Documeto]
GO
ALTER TABLE [dbo].[APPFeature]  WITH CHECK ADD  CONSTRAINT [FK_APPFeature_Version] FOREIGN KEY([VersionId])
REFERENCES [dbo].[Version] ([VersionId])
GO
ALTER TABLE [dbo].[APPFeature] CHECK CONSTRAINT [FK_APPFeature_Version]
GO
ALTER TABLE [dbo].[ApplicationGroupRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationGroupRoles_dbo.ApplicationGroups_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[ApplicationGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationGroupRoles] CHECK CONSTRAINT [FK_dbo.ApplicationGroupRoles_dbo.ApplicationGroups_ApplicationGroupId]
GO
ALTER TABLE [dbo].[ApplicationUserGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserGroups_dbo.ApplicationGroups_ApplicationGroupId] FOREIGN KEY([ApplicationGroupId])
REFERENCES [dbo].[ApplicationGroups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationUserGroups] CHECK CONSTRAINT [FK_dbo.ApplicationUserGroups_dbo.ApplicationGroups_ApplicationGroupId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_BArea] FOREIGN KEY([BAreaID])
REFERENCES [dbo].[BArea] ([BAreaID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_BArea]
GO
ALTER TABLE [dbo].[Colaborador]  WITH CHECK ADD  CONSTRAINT [FK_Colaborador_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Colaborador] CHECK CONSTRAINT [FK_Colaborador_AspNetUsers]
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_Departamento_Colaborador] FOREIGN KEY([ResponsavelId])
REFERENCES [dbo].[Colaborador] ([ColaboradorId])
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_Departamento_Colaborador]
GO
ALTER TABLE [dbo].[DocNote]  WITH CHECK ADD  CONSTRAINT [FK_DocNote_Documeto] FOREIGN KEY([DocumentoId])
REFERENCES [dbo].[Document] ([DocumentId])
GO
ALTER TABLE [dbo].[DocNote] CHECK CONSTRAINT [FK_DocNote_Documeto]
GO
ALTER TABLE [dbo].[DocNoteReply]  WITH CHECK ADD  CONSTRAINT [FK_DocNoteReply_DocNote] FOREIGN KEY([DocNoteId])
REFERENCES [dbo].[DocNote] ([DocNoteId])
GO
ALTER TABLE [dbo].[DocNoteReply] CHECK CONSTRAINT [FK_DocNoteReply_DocNote]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Documento_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Application] ([ApplicationId])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Documento_Application]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Documeto_BArea] FOREIGN KEY([BAreaId])
REFERENCES [dbo].[BArea] ([BAreaID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Documeto_BArea]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Documeto_Client] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([ClientId])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Documeto_Client]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Documeto_ClientContact] FOREIGN KEY([ClientContactId])
REFERENCES [dbo].[ClientContact] ([ClienteContactId])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Documeto_ClientContact]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Documeto_ClienteContact2] FOREIGN KEY([AprovedBy])
REFERENCES [dbo].[ClientContact] ([ClienteContactId])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Documeto_ClienteContact2]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Documeto_Colaborador] FOREIGN KEY([EstimatedBy])
REFERENCES [dbo].[Colaborador] ([ColaboradorId])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Documeto_Colaborador]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Documeto_Colaborador1] FOREIGN KEY([PersonInChargeId])
REFERENCES [dbo].[Colaborador] ([ColaboradorId])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Documeto_Colaborador1]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Documeto_Priority] FOREIGN KEY([PriorityId])
REFERENCES [dbo].[Priority] ([PriorityId])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Documeto_Priority]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Documeto_State] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Documeto_State]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Documeto_TipoDocumento] FOREIGN KEY([DocumentTypeId])
REFERENCES [dbo].[DocumentType] ([DocumentTypeID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Documeto_TipoDocumento]
GO
ALTER TABLE [dbo].[NoteFile]  WITH CHECK ADD  CONSTRAINT [FK_NoteFile_DocNote] FOREIGN KEY([DocNoteId])
REFERENCES [dbo].[DocNote] ([DocNoteId])
GO
ALTER TABLE [dbo].[NoteFile] CHECK CONSTRAINT [FK_NoteFile_DocNote]
GO
ALTER TABLE [dbo].[NoteFile]  WITH CHECK ADD  CONSTRAINT [FK_NoteFile_DocNoteReply] FOREIGN KEY([DocNoteReplyId])
REFERENCES [dbo].[DocNoteReply] ([DocNoteReplyId])
GO
ALTER TABLE [dbo].[NoteFile] CHECK CONSTRAINT [FK_NoteFile_DocNoteReply]
GO
ALTER TABLE [dbo].[Version]  WITH CHECK ADD  CONSTRAINT [FK_Version_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Application] ([ApplicationId])
GO
ALTER TABLE [dbo].[Version] CHECK CONSTRAINT [FK_Version_Application]
GO
USE [master]
GO
ALTER DATABASE [Suporte] SET  READ_WRITE 
GO
