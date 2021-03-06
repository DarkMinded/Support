USE [master]
GO
/****** Object:  Database [DBG3T]    Script Date: 24-11-2017 16:18:10 ******/
CREATE DATABASE [DBG3T]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBG3T', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBG3T.mdf' , SIZE = 7168KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBG3T_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBG3T_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBG3T] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBG3T].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBG3T] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBG3T] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBG3T] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBG3T] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBG3T] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBG3T] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBG3T] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBG3T] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBG3T] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBG3T] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBG3T] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBG3T] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBG3T] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBG3T] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBG3T] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBG3T] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBG3T] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBG3T] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBG3T] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBG3T] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBG3T] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBG3T] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBG3T] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBG3T] SET  MULTI_USER 
GO
ALTER DATABASE [DBG3T] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBG3T] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBG3T] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBG3T] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBG3T] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DBG3T]
GO
/****** Object:  Table [dbo].[_Acidentes]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Acidentes](
	[Nº pess#] [nvarchar](255) NULL,
	[F2] [float] NULL,
	[EMPRESA] [nvarchar](255) NULL,
	[Tipo] [nvarchar](255) NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Centro Trabalho] [nvarchar](255) NULL,
	[Descrição] [nvarchar](255) NULL,
	[Data de Participação] [datetime] NULL,
	[Data Acidente] [datetime] NULL,
	[Hora Participação] [nvarchar](255) NULL,
	[Hora Acidente] [nvarchar](255) NULL,
	[Cód] [nvarchar](255) NULL,
	[Descrição1] [nvarchar](255) NULL,
	[Dt#event] [nvarchar](255) NULL,
	[Fin#event] [nvarchar](255) NULL,
	[Observação] [nvarchar](255) NULL,
	[Cód1] [nvarchar](255) NULL,
	[Descrição2] [nvarchar](255) NULL,
	[Dt#event1] [nvarchar](255) NULL,
	[Fin#event1] [nvarchar](255) NULL,
	[Observação1] [nvarchar](255) NULL,
	[Cód2] [nvarchar](255) NULL,
	[Descrição3] [nvarchar](255) NULL,
	[Dt#event2] [nvarchar](255) NULL,
	[Fin#event2] [nvarchar](255) NULL,
	[Observação2] [nvarchar](255) NULL,
	[Cód3] [nvarchar](255) NULL,
	[Descrição4] [nvarchar](255) NULL,
	[Dt#event3] [nvarchar](255) NULL,
	[Fin#event3] [datetime] NULL,
	[Observação3] [nvarchar](255) NULL,
	[Cód4] [nvarchar](255) NULL,
	[Descrição5] [nvarchar](255) NULL,
	[Dt#event4] [nvarchar](255) NULL,
	[Fin#event4] [datetime] NULL,
	[Observação4] [nvarchar](255) NULL,
	[Cód5] [nvarchar](255) NULL,
	[Descrição6] [nvarchar](255) NULL,
	[S/N] [nvarchar](255) NULL,
	[Dt#event5] [datetime] NULL,
	[Fin#event5] [nvarchar](255) NULL,
	[Observação5] [nvarchar](255) NULL,
	[Cód6] [nvarchar](255) NULL,
	[Descrição7] [nvarchar](255) NULL,
	[S/N1] [nvarchar](255) NULL,
	[Dt#event6] [datetime] NULL,
	[Fin#event6] [nvarchar](255) NULL,
	[Observação6] [nvarchar](255) NULL,
	[Cód7] [nvarchar](255) NULL,
	[Descrição8] [nvarchar](255) NULL,
	[S/N2] [nvarchar](255) NULL,
	[Dt#event7] [datetime] NULL,
	[Fin#event7] [nvarchar](255) NULL,
	[Observação7] [nvarchar](255) NULL,
	[Cód8] [nvarchar](255) NULL,
	[Descrição9] [nvarchar](255) NULL,
	[S/N3] [nvarchar](255) NULL,
	[Dt#event8] [datetime] NULL,
	[Fin#event8] [datetime] NULL,
	[Observação8] [nvarchar](255) NULL,
	[Cód9] [nvarchar](255) NULL,
	[Descrição10] [nvarchar](255) NULL,
	[S/N4] [nvarchar](255) NULL,
	[Dt#event9] [nvarchar](255) NULL,
	[Fin#event9] [datetime] NULL,
	[Observação9] [nvarchar](255) NULL,
	[Cód10] [nvarchar](255) NULL,
	[Descrição11] [nvarchar](255) NULL,
	[Dt#event10] [nvarchar](255) NULL,
	[Fin#event10] [nvarchar](255) NULL,
	[Observação10] [nvarchar](255) NULL,
	[Cód11] [nvarchar](255) NULL,
	[Descrição12] [nvarchar](255) NULL,
	[Dt#event11] [nvarchar](255) NULL,
	[Fin#event11] [nvarchar](255) NULL,
	[Observação11] [nvarchar](255) NULL,
	[Cód12] [nvarchar](255) NULL,
	[Descrição13] [nvarchar](255) NULL,
	[Dt#event12] [nvarchar](255) NULL,
	[Fin#event12] [nvarchar](255) NULL,
	[Observação12] [nvarchar](255) NULL,
	[Cód13] [nvarchar](255) NULL,
	[Descrição14] [nvarchar](255) NULL,
	[Dt#event13] [nvarchar](255) NULL,
	[Fin#event13] [nvarchar](255) NULL,
	[Observação13] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_cartaosa]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_cartaosa](
	[NIF] [float] NULL,
	[Nome] [nvarchar](255) NULL,
	[EMBOSS] [nvarchar](255) NULL,
	[DDA] [nvarchar](255) NULL,
	[Pinblock] [nvarchar](255) NULL,
	[CONTA_CRT] [nvarchar](255) NULL,
	[Plast] [nvarchar](255) NULL,
	[Codigo_Anuidade] [nvarchar](255) NULL,
	[Lote] [float] NULL,
	[Receção] [nvarchar](255) NULL,
	[Delegação] [nvarchar](255) NULL,
	[Cadastro] [float] NULL,
	[F13] [nvarchar](255) NULL,
	[Entidade] [float] NULL,
	[F15] [float] NULL,
	[Referencia] [nvarchar](255) NULL,
	[DATA Email BCP] [datetime] NULL,
	[F18] [nvarchar](255) NULL,
	[F19] [nvarchar](255) NULL,
	[F20] [nvarchar](255) NULL,
	[F21] [nvarchar](255) NULL,
	[F22] [nvarchar](255) NULL,
	[F23] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_CLINICAS]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_CLINICAS](
	[Mdt] [float] NULL,
	[Código Clínica] [float] NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[Descrição Clínica] [nvarchar](255) NULL,
	[Montante] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0002 - Dados Pessoais]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0002 - Dados Pessoais](
	[Mdt] [float] NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [nvarchar](255) NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[Iniciais] [nvarchar](255) NULL,
	[Sobrenome] [nvarchar](255) NULL,
	[Sobrenome de solteiro] [nvarchar](255) NULL,
	[Segundo nome] [nvarchar](255) NULL,
	[1º nome] [nvarchar](255) NULL,
	[Nome completo] [nvarchar](255) NULL,
	[Título] [nvarchar](255) NULL,
	[2º título] [nvarchar](255) NULL,
	[Título nobreza] [nvarchar](255) NULL,
	[Prefixo] [nvarchar](255) NULL,
	[Prefixo (nome)2] [nvarchar](255) NULL,
	[Conhecido como] [nvarchar](255) NULL,
	[Nome do meio] [nvarchar](255) NULL,
	[Cd] [nvarchar](255) NULL,
	[FrmTto#] [float] NULL,
	[Gên#] [float] NULL,
	[Dt#nasc#] [nvarchar](255) NULL,
	[PNs] [nvarchar](255) NULL,
	[Dep] [nvarchar](255) NULL,
	[Localidade de nascimento] [nvarchar](255) NULL,
	[Nac] [nvarchar](255) NULL,
	[2ªN] [nvarchar](255) NULL,
	[Na3] [nvarchar](255) NULL,
	[Idioma de comunicação e de correspondênc] [nvarchar](255) NULL,
	[Rel] [nvarchar](255) NULL,
	[EstCv] [float] NULL,
	[EstCiv#des] [nvarchar](255) NULL,
	[NúmFl] [float] NULL,
	[CN] [nvarchar](255) NULL,
	[MP] [nvarchar](255) NULL,
	[NIF] [nvarchar](255) NULL,
	[Data nasc#] [nvarchar](255) NULL,
	[1º nome (Katakana)] [nvarchar](255) NULL,
	[Relevante apenas para o Japão] [nvarchar](255) NULL,
	[1º nome (Romaji)] [nvarchar](255) NULL,
	[Sobrenome (Romaji)] [nvarchar](255) NULL,
	[Nome de solteiro (Katakana)] [nvarchar](255) NULL,
	[Nome de solteiro (Romaji)] [nvarchar](255) NULL,
	[Koseki   (Katakana)] [nvarchar](255) NULL,
	[Koseki   (Romaji)] [nvarchar](255) NULL,
	[ Ano] [float] NULL,
	[Mês] [float] NULL,
	[Data] [float] NULL,
	[Sobrenome1] [nvarchar](255) NULL,
	[1º nome1] [nvarchar](255) NULL,
	[Título nobreza2] [nvarchar](255) NULL,
	[dtn] [smalldatetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0002 - Dados PessoaisEX]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0002 - Dados PessoaisEX](
	[Mdt] [float] NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [nvarchar](255) NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[Iniciais] [nvarchar](255) NULL,
	[Sobrenome] [nvarchar](255) NULL,
	[Sobrenome de solteiro] [nvarchar](255) NULL,
	[Segundo nome] [nvarchar](255) NULL,
	[1º nome] [nvarchar](255) NULL,
	[Nome completo] [nvarchar](255) NULL,
	[Título] [nvarchar](255) NULL,
	[2º título] [nvarchar](255) NULL,
	[Título nobreza] [nvarchar](255) NULL,
	[Prefixo] [nvarchar](255) NULL,
	[Prefixo (nome)2] [nvarchar](255) NULL,
	[Conhecido como] [nvarchar](255) NULL,
	[Nome do meio] [nvarchar](255) NULL,
	[Cd] [nvarchar](255) NULL,
	[FrmTto#] [float] NULL,
	[Gên#] [float] NULL,
	[Dt#nasc#] [nvarchar](255) NULL,
	[PNs] [nvarchar](255) NULL,
	[Dep] [nvarchar](255) NULL,
	[Localidade de nascimento] [nvarchar](255) NULL,
	[Nac] [nvarchar](255) NULL,
	[2ªN] [nvarchar](255) NULL,
	[Na3] [nvarchar](255) NULL,
	[Idioma de comunicação e de correspondênc] [nvarchar](255) NULL,
	[Rel] [nvarchar](255) NULL,
	[EstCv] [float] NULL,
	[EstCiv#des] [nvarchar](255) NULL,
	[NúmFl] [float] NULL,
	[CN] [nvarchar](255) NULL,
	[MP] [nvarchar](255) NULL,
	[NIF] [nvarchar](255) NULL,
	[Data nasc#] [nvarchar](255) NULL,
	[1º nome (Katakana)] [nvarchar](255) NULL,
	[Relevante apenas para o Japão] [nvarchar](255) NULL,
	[1º nome (Romaji)] [nvarchar](255) NULL,
	[Sobrenome (Romaji)] [nvarchar](255) NULL,
	[Nome de solteiro (Katakana)] [nvarchar](255) NULL,
	[Nome de solteiro (Romaji)] [nvarchar](255) NULL,
	[Koseki   (Katakana)] [nvarchar](255) NULL,
	[Koseki   (Romaji)] [nvarchar](255) NULL,
	[ Ano] [float] NULL,
	[Mês] [float] NULL,
	[Data] [float] NULL,
	[Sobrenome1] [nvarchar](255) NULL,
	[1º nome1] [nvarchar](255) NULL,
	[Título nobreza2] [nvarchar](255) NULL,
	[dtn] [smalldatetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0006 - Endereços]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0006 - Endereços](
	[TELEF1] [nvarchar](255) NULL,
	[TELEM1] [nvarchar](255) NULL,
	[TELEF2] [nvarchar](255) NULL,
	[TELEM2] [nvarchar](255) NULL,
	[Mdt] [float] NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [float] NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[Tipo1] [float] NULL,
	[Nome c/o] [nvarchar](255) NULL,
	[Rua e nº] [nvarchar](255) NULL,
	[F31] [nvarchar](255) NULL,
	[Cidade] [nvarchar](255) NULL,
	[Bairro] [nvarchar](255) NULL,
	[Cód#postal] [nvarchar](255) NULL,
	[Ps#] [nvarchar](255) NULL,
	[Telefone] [float] NULL,
	[DKm] [float] NULL,
	[AlEm] [nvarchar](255) NULL,
	[Bus] [nvarchar](255) NULL,
	[Complemento de endereço] [nvarchar](255) NULL,
	[Rua 2] [nvarchar](255) NULL,
	[Rua 3] [nvarchar](255) NULL,
	[Rg] [nvarchar](255) NULL,
	[Nº] [nvarchar](255) NULL,
	[Habit#] [nvarchar](255) NULL,
	[Edifício] [nvarchar](255) NULL,
	[Andar] [nvarchar](255) NULL,
	[PP] [nvarchar](255) NULL,
	[DKm1] [float] NULL,
	[Tipo2] [nvarchar](255) NULL,
	[Nº1] [float] NULL,
	[Tipo3] [nvarchar](255) NULL,
	[Nº2] [nvarchar](255) NULL,
	[Tipo4] [nvarchar](255) NULL,
	[Nº3] [nvarchar](255) NULL,
	[Tipo5] [nvarchar](255) NULL,
	[Nº4] [nvarchar](255) NULL,
	[Tipo6] [nvarchar](255) NULL,
	[Nº5] [nvarchar](255) NULL,
	[Tipo7] [nvarchar](255) NULL,
	[Nº6] [nvarchar](255) NULL,
	[RL] [nvarchar](255) NULL,
	[CCD] [nvarchar](255) NULL,
	[CódCM] [nvarchar](255) NULL,
	[Relevante apenas para o Japão] [nvarchar](255) NULL,
	[Relevante apenas para o Japão1] [nvarchar](255) NULL,
	[Relevante apenas para o Japão2] [nvarchar](255) NULL,
	[Fer#] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0006 - EndereçosEX]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0006 - EndereçosEX](
	[TELEF1] [nvarchar](255) NULL,
	[TELEM1] [nvarchar](255) NULL,
	[TELEF2] [nvarchar](255) NULL,
	[TELEM2] [nvarchar](255) NULL,
	[Mdt] [float] NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [float] NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[Tipo1] [float] NULL,
	[Nome c/o] [nvarchar](255) NULL,
	[Rua e nº] [nvarchar](255) NULL,
	[F31] [nvarchar](255) NULL,
	[Cidade] [nvarchar](255) NULL,
	[Bairro] [nvarchar](255) NULL,
	[Cód#postal] [nvarchar](255) NULL,
	[Ps#] [nvarchar](255) NULL,
	[Telefone] [float] NULL,
	[DKm] [float] NULL,
	[AlEm] [nvarchar](255) NULL,
	[Bus] [nvarchar](255) NULL,
	[Complemento de endereço] [nvarchar](255) NULL,
	[Rua 2] [nvarchar](255) NULL,
	[Rua 3] [nvarchar](255) NULL,
	[Rg] [nvarchar](255) NULL,
	[Nº] [nvarchar](255) NULL,
	[Habit#] [nvarchar](255) NULL,
	[Edifício] [nvarchar](255) NULL,
	[Andar] [nvarchar](255) NULL,
	[PP] [nvarchar](255) NULL,
	[DKm1] [float] NULL,
	[Tipo2] [nvarchar](255) NULL,
	[Nº1] [float] NULL,
	[Tipo3] [nvarchar](255) NULL,
	[Nº2] [nvarchar](255) NULL,
	[Tipo4] [nvarchar](255) NULL,
	[Nº3] [nvarchar](255) NULL,
	[Tipo5] [nvarchar](255) NULL,
	[Nº4] [nvarchar](255) NULL,
	[Tipo6] [nvarchar](255) NULL,
	[Nº5] [nvarchar](255) NULL,
	[Tipo7] [nvarchar](255) NULL,
	[Nº6] [nvarchar](255) NULL,
	[RL] [nvarchar](255) NULL,
	[CCD] [nvarchar](255) NULL,
	[CódCM] [nvarchar](255) NULL,
	[Relevante apenas para o Japão] [nvarchar](255) NULL,
	[Relevante apenas para o Japão1] [nvarchar](255) NULL,
	[Relevante apenas para o Japão2] [nvarchar](255) NULL,
	[Fer#] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0009 - Dados Bancários]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0009 - Dados Bancários](
	[BT] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[CCT] [nvarchar](255) NULL,
	[Mdt] [float] NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [float] NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT1] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[CódOp] [nvarchar](255) NULL,
	[Valor stand#] [nvarchar](255) NULL,
	[Moeda pagamento] [nvarchar](255) NULL,
	[% standard] [nvarchar](255) NULL,
	[UTM] [nvarchar](255) NULL,
	[TRDB] [float] NULL,
	[FP] [nvarchar](255) NULL,
	[Recebedor] [nvarchar](255) NULL,
	[Cód#postal] [nvarchar](255) NULL,
	[Local] [nvarchar](255) NULL,
	[País] [nvarchar](255) NULL,
	[Chave do banco] [float] NULL,
	[Conta bancária] [float] NULL,
	[DC] [nvarchar](255) NULL,
	[CC] [float] NULL,
	[Cód#SWIFT] [nvarchar](255) NULL,
	[CI] [nvarchar](255) NULL,
	[N] [nvarchar](255) NULL,
	[Nº ID fiscal 1] [nvarchar](255) NULL,
	[Nº ID fiscal 2] [nvarchar](255) NULL,
	[Cta#corr#postal] [nvarchar](255) NULL,
	[Nº NDR] [nvarchar](255) NULL,
	[Nº referência NDR] [nvarchar](255) NULL,
	[DC1] [nvarchar](255) NULL,
	[ChvReceb] [nvarchar](255) NULL,
	[Motivo da operação] [nvarchar](255) NULL,
	[MPTB] [nvarchar](255) NULL,
	[Ctg#folha pgto#] [nvarchar](255) NULL,
	[Identif#cálc#flh#pgto#] [nvarchar](255) NULL,
	[Motivo] [nvarchar](255) NULL,
	[Dt#pgto#] [nvarchar](255) NULL,
	[Indicação de refer#] [nvarchar](255) NULL,
	[Rua e nº] [nvarchar](255) NULL,
	[Rg] [nvarchar](255) NULL,
	[Autoriz#débito direto existe] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0009 - Dados BancáriosEX]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0009 - Dados BancáriosEX](
	[BT] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[CCT] [nvarchar](255) NULL,
	[Mdt] [float] NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [float] NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT1] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[CódOp] [nvarchar](255) NULL,
	[Valor stand#] [nvarchar](255) NULL,
	[Moeda pagamento] [nvarchar](255) NULL,
	[% standard] [nvarchar](255) NULL,
	[UTM] [nvarchar](255) NULL,
	[TRDB] [float] NULL,
	[FP] [nvarchar](255) NULL,
	[Recebedor] [nvarchar](255) NULL,
	[Cód#postal] [nvarchar](255) NULL,
	[Local] [nvarchar](255) NULL,
	[País] [nvarchar](255) NULL,
	[Chave do banco] [float] NULL,
	[Conta bancária] [float] NULL,
	[DC] [nvarchar](255) NULL,
	[CC] [float] NULL,
	[Cód#SWIFT] [nvarchar](255) NULL,
	[CI] [nvarchar](255) NULL,
	[N] [nvarchar](255) NULL,
	[Nº ID fiscal 1] [nvarchar](255) NULL,
	[Nº ID fiscal 2] [nvarchar](255) NULL,
	[Cta#corr#postal] [nvarchar](255) NULL,
	[Nº NDR] [nvarchar](255) NULL,
	[Nº referência NDR] [nvarchar](255) NULL,
	[DC1] [nvarchar](255) NULL,
	[ChvReceb] [nvarchar](255) NULL,
	[Motivo da operação] [nvarchar](255) NULL,
	[MPTB] [nvarchar](255) NULL,
	[Ctg#folha pgto#] [nvarchar](255) NULL,
	[Identif#cálc#flh#pgto#] [nvarchar](255) NULL,
	[Motivo] [nvarchar](255) NULL,
	[Dt#pgto#] [nvarchar](255) NULL,
	[Indicação de refer#] [nvarchar](255) NULL,
	[Rua e nº] [nvarchar](255) NULL,
	[Rg] [nvarchar](255) NULL,
	[Autoriz#débito direto existe] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0028 - Medicina no trabalho]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0028 - Medicina no trabalho](
	[keyexmed] [float] NULL,
	[Mdt] [nvarchar](255) NULL,
	[Nº pess#] [nvarchar](255) NULL,
	[Tipo] [nvarchar](255) NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[Rs] [nvarchar](255) NULL,
	[Diagn#] [nvarchar](255) NULL,
	[AE] [nvarchar](255) NULL,
	[S/N] [nvarchar](255) NULL,
	[Modalidade] [nvarchar](255) NULL,
	[AE1] [nvarchar](255) NULL,
	[S/N1] [nvarchar](255) NULL,
	[Modalidade1] [nvarchar](255) NULL,
	[AE2] [nvarchar](255) NULL,
	[S/N2] [nvarchar](255) NULL,
	[Modalidade2] [nvarchar](255) NULL,
	[AE3] [nvarchar](255) NULL,
	[S/N3] [nvarchar](255) NULL,
	[Modalidade3] [nvarchar](255) NULL,
	[AE4] [nvarchar](255) NULL,
	[S/N4] [nvarchar](255) NULL,
	[Modalidade4] [nvarchar](255) NULL,
	[AE5] [nvarchar](255) NULL,
	[S/N5] [nvarchar](255) NULL,
	[Modalidade5] [nvarchar](255) NULL,
	[AE6] [nvarchar](255) NULL,
	[S/N6] [nvarchar](255) NULL,
	[Modalidade6] [nvarchar](255) NULL,
	[AE7] [nvarchar](255) NULL,
	[S/N7] [nvarchar](255) NULL,
	[Modalidade7] [nvarchar](255) NULL,
	[AE8] [nvarchar](255) NULL,
	[S/N8] [nvarchar](255) NULL,
	[Modalidade8] [nvarchar](255) NULL,
	[AE9] [nvarchar](255) NULL,
	[S/N9] [nvarchar](255) NULL,
	[Modalidade9] [nvarchar](255) NULL,
	[AE10] [nvarchar](255) NULL,
	[S/N10] [nvarchar](255) NULL,
	[Modalidade10] [nvarchar](255) NULL,
	[AE11] [nvarchar](255) NULL,
	[S/N11] [nvarchar](255) NULL,
	[Modalidade11] [nvarchar](255) NULL,
	[AE12] [nvarchar](255) NULL,
	[S/N12] [nvarchar](255) NULL,
	[Modalidade12] [nvarchar](255) NULL,
	[AE13] [nvarchar](255) NULL,
	[S/N13] [nvarchar](255) NULL,
	[Modalidade13] [nvarchar](255) NULL,
	[AE14] [nvarchar](255) NULL,
	[S/N14] [nvarchar](255) NULL,
	[Modalidade14] [nvarchar](255) NULL,
	[AE15] [nvarchar](255) NULL,
	[S/N15] [nvarchar](255) NULL,
	[Modalidade15] [nvarchar](255) NULL,
	[AE16] [nvarchar](255) NULL,
	[S/N16] [nvarchar](255) NULL,
	[Modalidade16] [nvarchar](255) NULL,
	[AE17] [nvarchar](255) NULL,
	[S/N17] [nvarchar](255) NULL,
	[Modalidade17] [nvarchar](255) NULL,
	[AE18] [nvarchar](255) NULL,
	[S/N18] [nvarchar](255) NULL,
	[Modalidade18] [nvarchar](255) NULL,
	[AE19] [nvarchar](255) NULL,
	[S/N19] [nvarchar](255) NULL,
	[Modalidade19] [nvarchar](255) NULL,
	[AE20] [nvarchar](255) NULL,
	[S/N20] [nvarchar](255) NULL,
	[Modalidade20] [nvarchar](255) NULL,
	[AE21] [nvarchar](255) NULL,
	[S/N21] [nvarchar](255) NULL,
	[Modalidade21] [nvarchar](255) NULL,
	[AE22] [nvarchar](255) NULL,
	[S/N22] [nvarchar](255) NULL,
	[Modalidade22] [nvarchar](255) NULL,
	[AE23] [nvarchar](255) NULL,
	[S/N23] [nvarchar](255) NULL,
	[Modalidade23] [nvarchar](255) NULL,
	[AE24] [nvarchar](255) NULL,
	[S/N24] [nvarchar](255) NULL,
	[Modalidade24] [nvarchar](255) NULL,
	[AE25] [nvarchar](255) NULL,
	[S/N25] [nvarchar](255) NULL,
	[Modalidade25] [nvarchar](255) NULL,
	[AE26] [nvarchar](255) NULL,
	[S/N26] [nvarchar](255) NULL,
	[Modalidade26] [nvarchar](255) NULL,
	[AE27] [nvarchar](255) NULL,
	[S/N27] [nvarchar](255) NULL,
	[Modalidade27] [nvarchar](255) NULL,
	[AE28] [nvarchar](255) NULL,
	[S/N28] [nvarchar](255) NULL,
	[Modalidade28] [nvarchar](255) NULL,
	[AE29] [nvarchar](255) NULL,
	[S/N29] [nvarchar](255) NULL,
	[Modalidade29] [nvarchar](255) NULL,
	[Tipo1] [nvarchar](255) NULL,
	[Centro de trabalho] [nvarchar](255) NULL,
	[Moeda] [nvarchar](255) NULL,
	[Código Clínica] [nvarchar](255) NULL,
	[ZZFICHAORI] [nvarchar](255) NULL,
	[ZZFICHADIG] [nvarchar](255) NULL,
	[Char80] [nvarchar](255) NULL,
	[Fim] [datetime] NULL,
	[Início] [datetime] NULL,
	[Modif#em] [datetime] NULL,
	[Data exame] [datetime] NULL,
	[Últ#exame] [datetime] NULL,
	[Valor] [float] NULL,
	[Data exame1] [datetime] NULL,
	[Valor1] [float] NULL,
	[Data exame2] [datetime] NULL,
	[Valor2] [float] NULL,
	[Data exame3] [datetime] NULL,
	[Valor3] [float] NULL,
	[Data exame4] [datetime] NULL,
	[Valor4] [float] NULL,
	[Data exame5] [datetime] NULL,
	[Valor5] [float] NULL,
	[Data exame6] [datetime] NULL,
	[Valor6] [float] NULL,
	[Data exame7] [datetime] NULL,
	[Valor7] [float] NULL,
	[Data exame8] [datetime] NULL,
	[Valor8] [float] NULL,
	[Data exame9] [datetime] NULL,
	[Valor9] [float] NULL,
	[Data exame10] [datetime] NULL,
	[Valor10] [float] NULL,
	[Data exame11] [datetime] NULL,
	[Valor11] [float] NULL,
	[Data exame12] [datetime] NULL,
	[Valor12] [float] NULL,
	[Data exame13] [datetime] NULL,
	[Valor13] [float] NULL,
	[Data exame14] [datetime] NULL,
	[Valor14] [float] NULL,
	[Data exame15] [datetime] NULL,
	[Valor15] [float] NULL,
	[Data exame16] [datetime] NULL,
	[Valor16] [float] NULL,
	[Data exame17] [datetime] NULL,
	[Valor17] [float] NULL,
	[Data exame18] [datetime] NULL,
	[Valor18] [float] NULL,
	[Data exame19] [datetime] NULL,
	[Valor19] [float] NULL,
	[Data exame20] [datetime] NULL,
	[Valor20] [float] NULL,
	[Data exame21] [datetime] NULL,
	[Valor21] [float] NULL,
	[Data exame22] [datetime] NULL,
	[Valor22] [float] NULL,
	[Data exame23] [datetime] NULL,
	[Valor23] [float] NULL,
	[Data exame24] [datetime] NULL,
	[Valor24] [float] NULL,
	[Data exame25] [datetime] NULL,
	[Valor25] [float] NULL,
	[Data exame26] [datetime] NULL,
	[Valor26] [float] NULL,
	[Data exame27] [datetime] NULL,
	[Valor27] [float] NULL,
	[Data exame28] [datetime] NULL,
	[Valor28] [float] NULL,
	[Data exame29] [datetime] NULL,
	[Valor29] [float] NULL,
	[Data exame30] [datetime] NULL,
	[ZZEXAM_COST] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0057 - Sindicato]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0057 - Sindicato](
	[Nº pessoal] [float] NULL,
	[Nome] [nvarchar](255) NULL,
	[Sindicato] [nvarchar](255) NULL,
	[Código Sindicato] [nvarchar](255) NULL,
	[Rubrica] [float] NULL,
	[Base Valorização] [float] NULL,
	[Nº de Associado] [nvarchar](255) NULL,
	[Empresa] [nvarchar](255) NULL,
	[F9] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0105 - Meios de Comuni]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0105 - Meios de Comuni](
	[Mdt] [nvarchar](255) NULL,
	[Nº pess#] [nvarchar](255) NULL,
	[Tipo] [nvarchar](255) NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[Tipo1] [nvarchar](255) NULL,
	[ID/nº] [nvarchar](255) NULL,
	[ID/nº descritivo] [nvarchar](255) NULL,
	[Fim] [datetime] NULL,
	[Início] [datetime] NULL,
	[Modif#em] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0105 - Meios de ComuniEX]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0105 - Meios de ComuniEX](
	[Mdt] [nvarchar](255) NULL,
	[Nº pess#] [nvarchar](255) NULL,
	[Tipo] [nvarchar](255) NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[Tipo1] [nvarchar](255) NULL,
	[ID/nº] [nvarchar](255) NULL,
	[ID/nº descritivo] [nvarchar](255) NULL,
	[Fim] [datetime] NULL,
	[Início] [datetime] NULL,
	[Modif#em] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0185 - Documentos de I]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0185 - Documentos de I](
	[NUMERO] [float] NULL,
	[NDOC] [nvarchar](255) NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [float] NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[ID] [float] NULL,
	[ID Number] [float] NULL,
	[Nº IC ant#] [nvarchar](255) NULL,
	[Issuing Authority] [nvarchar](255) NULL,
	[Nº] [nvarchar](255) NULL,
	[FPDAT] [nvarchar](255) NULL,
	[Validad#ID] [nvarchar](255) NULL,
	[Place of Issue] [nvarchar](255) NULL,
	[Ctry#] [nvarchar](255) NULL,
	[Ctry#1] [nvarchar](255) NULL,
	[OVC] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[Sin/mul#] [nvarchar](255) NULL,
	[Rej reason] [nvarchar](255) NULL,
	[Used from] [nvarchar](255) NULL,
	[Used to] [nvarchar](255) NULL,
	[Length] [float] NULL,
	[UT] [nvarchar](255) NULL,
	[App# date] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0185 - Documentos de IEX]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0185 - Documentos de IEX](
	[NUMERO] [float] NULL,
	[NDOC] [nvarchar](255) NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [float] NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[ID] [float] NULL,
	[ID Number] [float] NULL,
	[Nº IC ant#] [nvarchar](255) NULL,
	[Issuing Authority] [nvarchar](255) NULL,
	[Nº] [nvarchar](255) NULL,
	[FPDAT] [nvarchar](255) NULL,
	[Validad#ID] [nvarchar](255) NULL,
	[Place of Issue] [nvarchar](255) NULL,
	[Ctry#] [nvarchar](255) NULL,
	[Ctry#1] [nvarchar](255) NULL,
	[OVC] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[Sin/mul#] [nvarchar](255) NULL,
	[Rej reason] [nvarchar](255) NULL,
	[Used from] [nvarchar](255) NULL,
	[Used to] [nvarchar](255) NULL,
	[Length] [float] NULL,
	[UT] [nvarchar](255) NULL,
	[App# date] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0331 - IRS]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0331 - IRS](
	[NIF] [nvarchar](255) NULL,
	[Mdt] [float] NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [nvarchar](255) NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[NºIdFisc#] [float] NULL,
	[Nome completo] [nvarchar](255) NULL,
	[Repart#finanças] [float] NULL,
	[Ctg#rendimentos] [nvarchar](255) NULL,
	[Est#civil] [nvarchar](255) NULL,
	[Cônjuge trab#] [nvarchar](255) NULL,
	[Cônj#def#] [nvarchar](255) NULL,
	[Nº deps#] [float] NULL,
	[Dep#defic#] [nvarchar](255) NULL,
	[Tx#poup#] [nvarchar](255) NULL,
	[Residênc#] [nvarchar](255) NULL,
	[Suj#a IVA] [nvarchar](255) NULL,
	[Taxa red#] [nvarchar](255) NULL,
	[Cong#] [nvarchar](255) NULL,
	[I tx liber] [nvarchar](255) NULL,
	[Tx liber#] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0331 - IRSEX]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0331 - IRSEX](
	[NIF] [nvarchar](255) NULL,
	[Mdt] [float] NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [nvarchar](255) NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[NºIdFisc#] [float] NULL,
	[Nome completo] [nvarchar](255) NULL,
	[Repart#finanças] [float] NULL,
	[Ctg#rendimentos] [nvarchar](255) NULL,
	[Est#civil] [nvarchar](255) NULL,
	[Cônjuge trab#] [nvarchar](255) NULL,
	[Cônj#def#] [nvarchar](255) NULL,
	[Nº deps#] [float] NULL,
	[Dep#defic#] [nvarchar](255) NULL,
	[Tx#poup#] [nvarchar](255) NULL,
	[Residênc#] [nvarchar](255) NULL,
	[Suj#a IVA] [nvarchar](255) NULL,
	[Taxa red#] [nvarchar](255) NULL,
	[Cong#] [nvarchar](255) NULL,
	[I tx liber] [nvarchar](255) NULL,
	[Tx liber#] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0332 - Segurança Socia]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0332 - Segurança Socia](
	[NSS] [nvarchar](255) NULL,
	[Mdt] [float] NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [nvarchar](255) NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[Nº ben#SS] [float] NULL,
	[Ins] [float] NULL,
	[Dt#inscr#] [nvarchar](255) NULL,
	[Int] [nvarchar](255) NULL,
	[Reg] [float] NULL,
	[C] [float] NULL,
	[P] [nvarchar](255) NULL,
	[Nv] [nvarchar](255) NULL,
	[Cob#] [nvarchar](255) NULL,
	[Mont%] [nvarchar](255) NULL,
	[Nome completo] [nvarchar](255) NULL,
	[Cód#] [float] NULL,
	[Lo] [nvarchar](255) NULL,
	[CG] [nvarchar](255) NULL,
	[MONT] [nvarchar](255) NULL,
	[I] [nvarchar](255) NULL,
	[D] [nvarchar](255) NULL,
	[PR] [nvarchar](255) NULL,
	[Nº da CGA] [nvarchar](255) NULL,
	[Ins1] [nvarchar](255) NULL,
	[Cód#1] [nvarchar](255) NULL,
	[Beneficiário ADSE] [nvarchar](255) NULL,
	[ADSE isento] [nvarchar](255) NULL,
	[Tipo de contrato] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0332 - Segurança SociaEX]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0332 - Segurança SociaEX](
	[NSS] [nvarchar](255) NULL,
	[Mdt] [float] NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [nvarchar](255) NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[Nº ben#SS] [float] NULL,
	[Ins] [float] NULL,
	[Dt#inscr#] [nvarchar](255) NULL,
	[Int] [nvarchar](255) NULL,
	[Reg] [float] NULL,
	[C] [float] NULL,
	[P] [nvarchar](255) NULL,
	[Nv] [nvarchar](255) NULL,
	[Cob#] [nvarchar](255) NULL,
	[Mont%] [nvarchar](255) NULL,
	[Nome completo] [nvarchar](255) NULL,
	[Cód#] [float] NULL,
	[Lo] [nvarchar](255) NULL,
	[CG] [nvarchar](255) NULL,
	[MONT] [nvarchar](255) NULL,
	[I] [nvarchar](255) NULL,
	[D] [nvarchar](255) NULL,
	[PR] [nvarchar](255) NULL,
	[Nº da CGA] [nvarchar](255) NULL,
	[Ins1] [nvarchar](255) NULL,
	[Cód#1] [nvarchar](255) NULL,
	[Beneficiário ADSE] [nvarchar](255) NULL,
	[ADSE isento] [nvarchar](255) NULL,
	[Tipo de contrato] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0337 - Categorias Prof]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0337 - Categorias Prof](
	[Mdt] [float] NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [nvarchar](255) NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[CtgPro] [float] NULL,
	[ Cód#] [float] NULL,
	[CNP] [float] NULL,
	[Rep#] [float] NULL,
	[Sit#] [float] NULL,
	[Grupo] [nvarchar](255) NULL,
	[Func#] [float] NULL,
	[GrE] [float] NULL,
	[SC] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo 0337 - Categorias ProfEX]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo 0337 - Categorias ProfEX](
	[Mdt] [float] NULL,
	[Nº pess#] [float] NULL,
	[Tipo] [nvarchar](255) NULL,
	[ID Ob] [nvarchar](255) NULL,
	[Bl] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[H] [nvarchar](255) NULL,
	[Tx] [nvarchar](255) NULL,
	[Rf] [nvarchar](255) NULL,
	[Cf] [nvarchar](255) NULL,
	[CT] [nvarchar](255) NULL,
	[Mt] [nvarchar](255) NULL,
	[FLAG1] [nvarchar](255) NULL,
	[FLAG2] [nvarchar](255) NULL,
	[FLAG3] [nvarchar](255) NULL,
	[FLAG4] [nvarchar](255) NULL,
	[RESE1] [nvarchar](255) NULL,
	[RESE2] [nvarchar](255) NULL,
	[Valor agrupam#] [nvarchar](255) NULL,
	[CtgPro] [float] NULL,
	[ Cód#] [float] NULL,
	[CNP] [float] NULL,
	[Rep#] [float] NULL,
	[Sit#] [float] NULL,
	[Grupo] [nvarchar](255) NULL,
	[Func#] [float] NULL,
	[GrE] [float] NULL,
	[SC] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Infotipo0045-Penhoras]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Infotipo0045-Penhoras](
	[Nº Empregado] [float] NULL,
	[Nome Completo] [nvarchar](255) NULL,
	[Empresa] [float] NULL,
	[Empresa1] [nvarchar](255) NULL,
	[Área RH] [float] NULL,
	[Área RH1] [nvarchar](255) NULL,
	[Subárea RH] [float] NULL,
	[Subárea RH1] [nvarchar](255) NULL,
	[Referência Interna] [nvarchar](255) NULL,
	[Entidade Emissora] [nvarchar](255) NULL,
	[Entidade Solicitador] [nvarchar](255) NULL,
	[Entidade Requerente] [nvarchar](255) NULL,
	[F13] [float] NULL,
	[Entidade Pagamento] [nvarchar](255) NULL,
	[Montante Penhorado] [float] NULL,
	[Percentagem de deduç] [nvarchar](255) NULL,
	[Penhora - Mensalidad] [nvarchar](255) NULL,
	[Data Lançamento] [nvarchar](255) NULL,
	[Mês Referência] [nvarchar](255) NULL,
	[Mês Processamento] [nvarchar](255) NULL,
	[  Montante] [float] NULL,
	[Diferença Montantes] [float] NULL,
	[F23] [nvarchar](255) NULL,
	[ZZNIB] [nvarchar](255) NULL,
	[F25] [float] NULL,
	[ZZREFER] [nvarchar](255) NULL,
	[ZZTIPOPAG] [nvarchar](255) NULL,
	[STEXT] [nvarchar](255) NULL,
	[STEXT1] [nvarchar](255) NULL,
	[ZZCONTACTO] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_IT_1_Atrb_Organ]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_IT_1_Atrb_Organ](
	[Nº pess#] [float] NULL,
	[Tipo] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[Empr] [float] NULL,
	[ÁrRH] [float] NULL,
	[GrEmp] [float] NULL,
	[SgEmp] [float] NULL,
	[Chave de organização] [float] NULL,
	[Div] [nvarchar](255) NULL,
	[Subárea] [float] NULL,
	[PJ] [nvarchar](255) NULL,
	[ÁrPFPg] [nvarchar](255) NULL,
	[Equipa] [nvarchar](255) NULL,
	[Centro cst] [nvarchar](255) NULL,
	[UnidOrg#] [nvarchar](255) NULL,
	[ Posição] [float] NULL,
	[Cargo] [nvarchar](255) NULL,
	[Área do superior] [nvarchar](255) NULL,
	[EncFP] [nvarchar](255) NULL,
	[EncPes] [nvarchar](255) NULL,
	[EncHor] [nvarchar](255) NULL,
	[Sobrenome nome] [nvarchar](255) NULL,
	[Nome do empregado ou candidato] [nvarchar](255) NULL,
	[TO] [nvarchar](255) NULL,
	[Grp#] [nvarchar](255) NULL,
	[ÁCC] [float] NULL,
	[Cen#fin#] [nvarchar](255) NULL,
	[Fundos] [nvarchar](255) NULL,
	[Área funcional] [nvarchar](255) NULL,
	[Subsídio público] [nvarchar](255) NULL,
	[Segmento] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_IT_1_Atrb_OrganEX]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_IT_1_Atrb_OrganEX](
	[Nº pess#] [float] NULL,
	[Tipo] [nvarchar](255) NULL,
	[Fim] [nvarchar](255) NULL,
	[Início] [nvarchar](255) NULL,
	[NºR] [nvarchar](255) NULL,
	[Modif#em] [nvarchar](255) NULL,
	[Modif#por] [nvarchar](255) NULL,
	[Empr] [float] NULL,
	[ÁrRH] [float] NULL,
	[GrEmp] [float] NULL,
	[SgEmp] [float] NULL,
	[Chave de organização] [float] NULL,
	[Div] [nvarchar](255) NULL,
	[Subárea] [float] NULL,
	[PJ] [nvarchar](255) NULL,
	[ÁrPFPg] [nvarchar](255) NULL,
	[Equipa] [nvarchar](255) NULL,
	[Centro cst] [nvarchar](255) NULL,
	[UnidOrg#] [nvarchar](255) NULL,
	[ Posição] [float] NULL,
	[Cargo] [nvarchar](255) NULL,
	[Área do superior] [nvarchar](255) NULL,
	[EncFP] [nvarchar](255) NULL,
	[EncPes] [nvarchar](255) NULL,
	[EncHor] [nvarchar](255) NULL,
	[Sobrenome nome] [nvarchar](255) NULL,
	[Nome do empregado ou candidato] [nvarchar](255) NULL,
	[TO] [nvarchar](255) NULL,
	[Grp#] [nvarchar](255) NULL,
	[ÁCC] [float] NULL,
	[Cen#fin#] [nvarchar](255) NULL,
	[Fundos] [nvarchar](255) NULL,
	[Área funcional] [nvarchar](255) NULL,
	[Subsídio público] [nvarchar](255) NULL,
	[Segmento] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_ORD]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ORD](
	[AGENTEEXECUCAO] [nvarchar](255) NULL,
	[AgenteExecucaoEmail] [nvarchar](255) NULL,
	[CODIGO] [nvarchar](255) NULL,
	[OBSERVACOES] [nvarchar](255) NULL,
	[CODTIPOSOLICITADOR] [nvarchar](255) NULL,
	[DESCRICAOTIPOSOLICITADOR] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_SOL]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_SOL](
	[AGENTEEXECUCAO] [nvarchar](255) NULL,
	[AgenteExecucaoEmail] [nvarchar](255) NULL,
	[CODIGO] [nvarchar](255) NULL,
	[OBSERVACOES] [nvarchar](255) NULL,
	[CODTIPOSOLICITADOR] [nvarchar](255) NULL,
	[DESCRICAOTIPOSOLICITADOR] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Vales]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Vales](
	[Nº Empregado] [float] NULL,
	[Nome Completo] [nvarchar](255) NULL,
	[Empresa] [float] NULL,
	[Empresa1] [nvarchar](255) NULL,
	[Área RH] [float] NULL,
	[Área RH1] [nvarchar](255) NULL,
	[Subárea RH] [float] NULL,
	[Subárea RH1] [nvarchar](255) NULL,
	[Rúbrica Salarial] [float] NULL,
	[Descritivo RS] [nvarchar](255) NULL,
	[Montante Vale] [float] NULL,
	[Data Lançamento] [nvarchar](255) NULL,
	[Mês Referência] [nvarchar](255) NULL,
	[Mês Processamento] [nvarchar](255) NULL,
	[ Montante] [float] NULL,
	[Diferença Montantes] [float] NULL,
	[Nº Vale] [float] NULL,
	[Nº Meses] [float] NULL,
	[Tipo Pagamento-Cód#] [nvarchar](255) NULL,
	[Tipo Pagamento-Desc#] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[20160105_Contractos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[20160105_Contractos](
	[KeyContracto] [int] NOT NULL,
	[CodContracto] [varchar](10) NULL,
	[SalMensal] [decimal](19, 6) NULL,
	[SalMensal_BM] [decimal](19, 6) NULL,
	[ValorHoraPagar] [decimal](19, 6) NULL,
	[ValorHoraPagar_BM] [decimal](19, 6) NULL,
	[FactMensal] [decimal](19, 6) NULL,
	[FactMensal_BM] [decimal](19, 6) NULL,
	[FactValHora] [decimal](19, 6) NULL,
	[FactValHora_BM] [decimal](19, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[20160105_ContratosAbonos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[20160105_ContratosAbonos](
	[KeyContractosAbonos] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NULL,
	[CodAbono] [varchar](5) NULL,
	[DescricaoAbono] [varchar](40) NULL,
	[Valor] [decimal](19, 6) NULL,
	[Valor_BM] [decimal](19, 6) NULL,
	[Quantidade] [decimal](19, 6) NULL,
	[ValorPagar] [decimal](19, 6) NULL,
	[ValorPagar_BM] [decimal](19, 6) NULL,
	[ValorFacturar] [decimal](19, 6) NULL,
	[ValorFacturar_BM] [decimal](19, 6) NULL,
	[Coeficiente] [decimal](19, 6) NULL,
	[Apagar] [smallint] NULL,
	[AFacturar] [smallint] NULL,
	[Hor] [int] NULL,
	[TipoValor] [int] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[ChCont] [smallint] NULL,
	[VFF] [bit] NULL,
	[OutroValorHoraPagar] [decimal](19, 6) NULL,
	[OutroValorHoraPagar_BM] [decimal](19, 6) NULL,
	[KeyContractoProjecto] [int] NULL,
	[ValorDiaPagar] [decimal](19, 6) NULL,
	[ValorDiaPagar_BM] [decimal](19, 6) NULL,
	[UsoPontual] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Abonos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Abonos](
	[KeyAbonos] [int] IDENTITY(1,1) NOT NULL,
	[CodAbono] [varchar](5) NULL,
	[ABO] [varchar](40) NULL,
	[Tar] [varchar](40) NULL,
	[FHoras] [varchar](40) NULL,
	[Factura] [varchar](40) NULL,
	[VAL] [decimal](19, 6) NULL,
	[VAL_BM] [decimal](19, 6) NULL,
	[HOR] [tinyint] NULL,
	[DIA] [decimal](19, 6) NULL,
	[PRO] [bit] NULL,
	[FOR] [varchar](154) NULL,
	[GRU] [varchar](40) NULL,
	[GRUPO] [smallint] NULL,
	[CONTA] [varchar](15) NULL,
	[CCU] [varchar](40) NULL,
	[USO] [bit] NULL,
	[COL_SS] [smallint] NULL,
	[COL_QP] [smallint] NULL,
	[COL_SG] [smallint] NULL,
	[SSocial] [bit] NULL,
	[IRS] [bit] NULL,
	[CPE] [bit] NULL,
	[Seguro] [bit] NULL,
	[DATA] [smalldatetime] NULL,
	[User] [varchar](6) NULL,
	[SFerias] [bit] NULL,
	[SNatal] [bit] NULL,
	[SFeriasNGoz] [bit] NULL,
	[CompEmp] [bit] NULL,
	[TipoValor] [smallint] NULL,
	[AboReg] [int] NULL,
	[TipoSS] [varchar](1) NULL,
	[APagar] [smallint] NULL,
	[AFacturar] [smallint] NULL,
	[Sindicatos] [bit] NULL,
	[SSocialIncideDias] [bit] NULL,
	[PropTipoIncidencia] [tinyint] NULL,
	[MotivoQP] [tinyint] NULL,
	[CoeficienteSemCPE] [decimal](7, 6) NULL,
	[CoeficienteComCPE] [decimal](7, 6) NULL,
	[TipoValorSeg] [varchar](2) NULL,
	[Activo] [bit] NULL,
	[CodAbonoDerivado] [varchar](5) NULL,
	[Isento] [bit] NULL,
	[CodTipoRend] [varchar](3) NULL,
	[ExcluirDMR] [bit] NULL,
	[ValorLimiteTrib] [bit] NULL,
	[CodPerfisDescontos] [varchar](2) NULL,
	[IsConfigRegimeActivo] [bit] NULL,
	[SAMS] [bit] NULL,
	[FSA] [bit] NULL,
	[IncideFundosCompensacao] [bit] NULL,
	[PagamentoEmEspecie] [bit] NULL,
	[ProcIndependente] [bit] NULL,
	[PrimaveraTipoArtigoFact] [varchar](3) NULL,
	[PrimaveraTipoArtigoSal] [varchar](3) NULL,
	[RectificaHN] [bit] NULL,
	[CodAbonoRetifica] [varchar](5) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[FHLimiteHorasNao] [bit] NULL,
	[SemRetencaoNaFonte] [bit] NULL,
	[SAP_CodMaterial] [varchar](18) NULL,
 CONSTRAINT [PK_Abonos] PRIMARY KEY CLUSTERED 
(
	[KeyAbonos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AbonosConfRegime]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AbonosConfRegime](
	[KeyAbonosConfRegime] [int] IDENTITY(1,1) NOT NULL,
	[CodAbono] [varchar](5) NOT NULL,
	[CodPerfisDescontos] [varchar](2) NOT NULL,
	[IsConfigRegimeActivo] [bit] NOT NULL,
	[COL_SG] [smallint] NOT NULL,
	[SSocial] [bit] NOT NULL,
	[IRS] [bit] NOT NULL,
	[Seguro] [bit] NOT NULL,
	[Sindicatos] [bit] NOT NULL,
	[SSocialIncideDias] [bit] NOT NULL,
	[ExcluirDMR] [bit] NOT NULL,
	[ValorLimiteTrib] [bit] NOT NULL,
	[SAMS] [bit] NOT NULL,
	[FSA] [bit] NOT NULL,
	[TipoSS] [varchar](1) NOT NULL,
	[TipoValorSeg] [varchar](2) NOT NULL,
	[CodTipoRend] [varchar](3) NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Isento] [bit] NULL,
 CONSTRAINT [PK_AbonosConfRegime] PRIMARY KEY CLUSTERED 
(
	[KeyAbonosConfRegime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AbonosFormulasCalculo]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AbonosFormulasCalculo](
	[KeyAbonosFormulasCalculo] [int] IDENTITY(1,1) NOT NULL,
	[CodAbono] [varchar](5) NOT NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[TipoCalculo] [tinyint] NOT NULL,
	[PorFormula] [bit] NOT NULL,
	[Formula] [varchar](1024) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_AbonosFormulasCalculo] PRIMARY KEY CLUSTERED 
(
	[KeyAbonosFormulasCalculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AbonosRetencaoIRS]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AbonosRetencaoIRS](
	[KeyAbonosRetencaoIRS] [int] IDENTITY(1,1) NOT NULL,
	[CodAbono] [varchar](5) NOT NULL,
	[CodPaisISOAlpha2] [char](2) NOT NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_AbonosRetencaoIRS] PRIMARY KEY CLUSTERED 
(
	[CodAbono] ASC,
	[CodPaisISOAlpha2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AbonosTributacao]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AbonosTributacao](
	[KeyAbonosTributacao] [int] IDENTITY(1,1) NOT NULL,
	[CodAbono] [varchar](5) NOT NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[ValorMaximoNTributavel] [decimal](19, 6) NOT NULL,
	[PorValorUnitario] [bit] NOT NULL,
	[PorFormula] [bit] NOT NULL,
	[Formula] [varchar](1024) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Isento] [bit] NULL,
	[CodTipoRend] [varchar](3) NULL,
 CONSTRAINT [PK_AbonosTributacao] PRIMARY KEY CLUSTERED 
(
	[KeyAbonosTributacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AciNet_Audit_Codes]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AciNet_Audit_Codes](
	[KeyAuditCode] [int] IDENTITY(1,1) NOT NULL,
	[CodAuditCode] [varchar](8) NOT NULL,
	[DescAuditCode] [varchar](max) NOT NULL,
 CONSTRAINT [pkKeyAuditCode] PRIMARY KEY NONCLUSTERED 
(
	[KeyAuditCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AcordosCCT]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AcordosCCT](
	[KeyAcordosCCT] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[Descricao] [varchar](40) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_AcordosCCT] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Adiantamentos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Adiantamentos](
	[KeyAdiantamento] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[KeyContracto] [int] NULL,
	[DataValor] [smalldatetime] NULL,
	[Valor] [decimal](19, 6) NULL,
	[NHoras] [decimal](19, 6) NULL,
	[Motivo] [smallint] NULL,
	[Pago] [bit] NULL,
	[DataPago] [smalldatetime] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Valor_BM] [decimal](19, 6) NULL,
	[TRN] [tinyint] NULL,
	[MeioRecebimento] [varchar](25) NULL,
	[KeyReciboC] [int] NULL,
	[BanConta] [varchar](22) NULL,
	[NIB] [varchar](50) NULL,
	[NumCheque] [varchar](25) NULL,
	[DtEmissaoPAG] [smalldatetime] NULL,
	[KeyFHContracto] [int] NULL,
	[NumSemana] [int] NULL,
	[ContabilizadoPAG] [int] NULL,
	[ContaAdianta] [varchar](22) NULL,
	[ContaExcesso] [varchar](22) NULL,
	[KeyAdiantaDevolvido] [int] NULL,
	[ContabilizadoPAG_Por] [varchar](15) NULL,
	[ContabilizadoPAG_Em] [smalldatetime] NULL,
	[KeyContractosAltMensais] [int] NULL,
	[KeyContractosDeslocacoes] [int] NULL,
	[Autorizado] [bit] NULL,
	[AutorizadoPor] [varchar](25) NULL,
	[AutorizadoEm] [smalldatetime] NULL,
	[Entregue] [bit] NULL,
	[EntreguePor] [varchar](25) NULL,
	[EntregueEm] [smalldatetime] NULL,
	[CodBanco] [varchar](4) NULL,
	[DescricaoBanco] [varchar](40) NULL,
	[PagCodBanco] [varchar](4) NULL,
	[PagBanco] [varchar](40) NULL,
	[PagNIB] [varchar](50) NULL,
	[PagIBAN] [varchar](50) NULL,
	[PagSWIFT] [varchar](11) NULL,
	[PagConta] [varchar](25) NULL,
 CONSTRAINT [PK_Adiantamentos] PRIMARY KEY NONCLUSTERED 
(
	[KeyAdiantamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Adiantamentos_OBS]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Adiantamentos_OBS](
	[KeyAdiantamentosOBS] [int] IDENTITY(1,1) NOT NULL,
	[KeyAdiantamento] [int] NOT NULL,
	[Obs] [text] NOT NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AgenciaZonas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AgenciaZonas](
	[KeyAgenciaZonas] [int] IDENTITY(1,1) NOT NULL,
	[CodAgencia] [varchar](3) NULL,
	[DescricaoZona] [varchar](25) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_AgenciaZonas] PRIMARY KEY CLUSTERED 
(
	[KeyAgenciaZonas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AgendamentoContactos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AgendamentoContactos](
	[KeyAgendamentoContactos] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NULL,
	[DataContacto] [smalldatetime] NULL,
	[HoraContacto] [varchar](5) NULL,
	[CodIntCE] [varchar](10) NULL,
	[NomeCE] [varchar](60) NULL,
	[Utilizador] [varchar](30) NULL,
	[KeyCE_Contactos] [int] NULL,
	[TituloCEC] [varchar](20) NULL,
	[NomeCEC] [varchar](50) NULL,
	[CargoCEC] [varchar](25) NULL,
	[Telefone] [varchar](20) NULL,
	[Email] [varchar](128) NULL,
	[Observacoes] [varchar](2048) NULL,
	[IsObrigatoria] [bit] NULL,
	[IsRealizada] [bit] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_AgendamentoContactos] PRIMARY KEY CLUSTERED 
(
	[KeyAgendamentoContactos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AIdent]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AIdent](
	[KeyAI] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoAI] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_AIdent] PRIMARY KEY CLUSTERED 
(
	[KeyAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AlertasAutomaticos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlertasAutomaticos](
	[KeyAlertaAutomatico] [int] IDENTITY(1,1) NOT NULL,
	[StoreProcedure] [varchar](1024) NULL,
	[xmleMailTemplate] [varchar](128) NULL,
	[InternalContactoNome] [varchar](80) NULL,
	[InternalContactoeMail] [varchar](128) NULL,
	[eMailTitulo] [varchar](528) NULL,
	[emailSubject] [varchar](max) NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[RunAt] [smalldatetime] NULL,
	[LastRun] [smalldatetime] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[IsWorkflow] [bit] NULL,
	[InternalContactoNomeBcc] [varchar](80) NULL,
	[InternalContactoeMailBcc] [varchar](128) NULL,
 CONSTRAINT [PK_AlertasAutomaticos] PRIMARY KEY CLUSTERED 
(
	[KeyAlertaAutomatico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AreaActividade]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AreaActividade](
	[KeyAreaAct] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoAreaAct] [varchar](20) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodArea] [varchar](2) NULL,
	[CodAgencia] [varchar](3) NULL,
	[Activa] [bit] NULL,
	[CodUnidade] [varchar](10) NULL,
	[Pais] [varchar](15) NULL,
	[OpCompany] [varchar](30) NULL,
	[Marca] [varchar](5) NULL,
	[Regiao] [varchar](10) NULL,
	[Distrito] [varchar](40) NULL,
	[TipoMercado] [varchar](30) NULL,
	[EspecialidadeLocal] [varchar](20) NULL,
	[EspecialidadeCentral] [varchar](20) NULL,
	[TipoUnidade] [varchar](20) NULL,
	[DataCriacao] [varchar](4) NULL,
	[UnitGroup] [varchar](10) NULL,
 CONSTRAINT [PK_AreaActividade] PRIMARY KEY CLUSTERED 
(
	[KeyAreaAct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AreaInformatica]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AreaInformatica](
	[KeyAreaInfo] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoAreaInfo] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_AreaInformatica] PRIMARY KEY CLUSTERED 
(
	[KeyAreaInfo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ARQ_ComandosShell]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARQ_ComandosShell](
	[KeyExportacaoPendentes] [int] IDENTITY(1,1) NOT NULL,
	[Comando] [varchar](2048) NULL,
	[DataHora] [datetime] NULL,
	[NIP] [varchar](6) NULL,
	[Executado] [bit] NULL,
	[DataHoraExecutado] [datetime] NULL,
 CONSTRAINT [PK_ARQ_ComandosShell] PRIMARY KEY CLUSTERED 
(
	[KeyExportacaoPendentes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ARQ_ContractosFicheirosPDF]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARQ_ContractosFicheirosPDF](
	[KeyContracto] [int] NOT NULL,
	[KeyCVC_DP] [int] NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Grupo] [int] NOT NULL,
	[PathFicheiroContractoCTT] [varchar](255) NULL,
	[PathFicheiroContractoCUTT] [varchar](255) NULL,
	[DataExportacao] [smalldatetime] NULL,
	[CatalogacaoCTT] [varchar](100) NULL,
	[CatalogacaoCUTT] [varchar](100) NULL,
	[FicheiroAnexoSHST] [varchar](255) NULL,
	[CatalogacaoAnexoSHST] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ARQ_ContractosUTTFicheirosPDF]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARQ_ContractosUTTFicheirosPDF](
	[KeyContractoUTT] [int] NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Grupo] [int] NOT NULL,
	[PathFicheiroContractoCUTT] [varchar](255) NULL,
	[PathFicheiroAnexoSHST] [varchar](255) NULL,
	[DataExportacao] [smalldatetime] NULL,
	[CatalogacaoCUTT] [varchar](100) NULL,
	[CatalogacaoAnexoSHST] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ARQ_DeclaracaoRendimentosFicheirosPDF]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARQ_DeclaracaoRendimentosFicheirosPDF](
	[KeyCVC_DP] [int] NOT NULL,
	[Grupo] [int] NOT NULL,
	[PathFicheiro] [varchar](255) NULL,
	[DataExportacao] [smalldatetime] NULL,
	[Catalogacao] [varchar](100) NULL,
	[AnoDeclaracao] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ARQ_eMailTemplate]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARQ_eMailTemplate](
	[KeyARQ_eMailTemplate] [int] IDENTITY(1,1) NOT NULL,
	[TipoDoc] [smallint] NOT NULL,
	[Assunto] [varchar](40) NOT NULL,
	[Mensagem] [varchar](2048) NOT NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[ExportaTranferenciaBancaria] [bit] NULL,
	[Directoria] [varchar](255) NULL,
 CONSTRAINT [PK_ARQ_eMailTemplate] PRIMARY KEY CLUSTERED 
(
	[KeyARQ_eMailTemplate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ARQ_FacturacaoFicheirosPDF]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARQ_FacturacaoFicheirosPDF](
	[KeyDocumento] [int] NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Grupo] [int] NOT NULL,
	[PathFicheiro] [varchar](255) NULL,
	[TipoDoc] [char](4) NOT NULL,
	[FicheiroAnexo] [varchar](255) NULL,
	[DataExportacao] [smalldatetime] NULL,
	[CatalogacaoFactura] [varchar](100) NULL,
	[CatalogacaoAnexo] [varchar](100) NULL,
 CONSTRAINT [PK_ARQ_FacturacaoFicheirosPDF] PRIMARY KEY NONCLUSTERED 
(
	[KeyDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ARQ_MailsLog]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARQ_MailsLog](
	[KeyARQ_MailsLog] [int] IDENTITY(1,1) NOT NULL,
	[emailTo] [varchar](128) NULL,
	[emailFrom] [varchar](128) NULL,
	[TipoDoc] [smallint] NULL,
	[Ficheiro] [varchar](4096) NULL,
	[DataHora] [smalldatetime] NULL,
	[Entidade] [bit] NULL,
	[KeyEntidade] [int] NULL,
	[CodigoEntidade] [varchar](10) NULL,
	[NomeEntidade] [varchar](60) NULL,
	[Falhou] [bit] NULL,
	[Erro] [varchar](1000) NULL,
	[NIP] [varchar](6) NULL,
 CONSTRAINT [PK_ARQ_MailsLog] PRIMARY KEY CLUSTERED 
(
	[KeyARQ_MailsLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ARQ_RecibosFicheirosPDF]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARQ_RecibosFicheirosPDF](
	[KeyReciboC] [int] NOT NULL,
	[KeyCVC_DP] [int] NOT NULL,
	[Grupo] [int] NOT NULL,
	[PathFicheiroRecibo] [varchar](255) NULL,
	[FicheiroCarta] [varchar](255) NULL,
	[DataExportacao] [smalldatetime] NULL,
	[CatalogacaoRecibo] [varchar](100) NULL,
	[CatalogacaoCarta] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ARQ_TMP_ExportacaoAutomatica]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARQ_TMP_ExportacaoAutomatica](
	[KeyARQ_TMP_ExportacaoAutomatica] [int] IDENTITY(1,1) NOT NULL,
	[SPID] [int] NOT NULL,
	[KeyDoc] [int] NOT NULL,
	[TipoDoc] [smallint] NOT NULL,
	[FailDescription] [varchar](500) NULL,
	[EnviaPorEMail] [tinyint] NOT NULL,
	[EmailDeEnvio] [varchar](128) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ARQ_TMP_Parametros]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ARQ_TMP_Parametros](
	[SPID] [int] NOT NULL,
	[Repositorio_Facturas] [varchar](255) NULL,
	[Repositorio_Recibos] [varchar](255) NULL,
	[Repositorio_Contratos] [varchar](255) NULL,
	[RECVENC] [varchar](30) NULL,
	[FACTURAS] [varchar](30) NULL,
	[CONTRATOS] [varchar](30) NULL,
	[TipoExportacao] [smallint] NULL,
	[QueryContratos] [varchar](8000) NULL,
	[NIP] [varchar](6) NULL,
	[PathFicheiros] [varchar](100) NULL,
	[emailUser] [varchar](403) NULL,
	[emailPassword] [varchar](403) NULL,
	[ClienteeMail] [varchar](128) NULL,
	[SMTPServer] [varchar](64) NULL,
	[CPE] [decimal](19, 6) NULL,
	[DecimaisCFG] [int] NULL,
	[DecimaisFacturacao] [int] NULL,
	[Euro] [bit] NULL,
	[RepositorioCopia] [varchar](255) NULL,
	[Sigla] [varchar](10) NULL,
	[Ano] [int] NULL,
	[Mes] [tinyint] NULL,
	[Empresa] [varchar](50) NULL,
	[EmpCounter] [tinyint] NULL,
	[Localidade] [varchar](40) NULL,
	[Morada] [varchar](100) NULL,
	[CodigoPostal] [varchar](48) NULL,
	[AllowDefaultAll] [bit] NULL,
	[AllowYesAll] [bit] NULL,
	[AnoRendimentos] [smallint] NULL,
	[Repositorio_DeclaracoesRendimentos] [varchar](255) NULL,
	[AnoMesRef] [varchar](50) NULL,
	[DeclaracoesRendimento] [varchar](30) NULL,
	[cNIF] [varchar](19) NULL,
	[ExcluirRebricasDeclaracaoRendimentos] [varchar](255) NULL,
	[MensagemRecibo] [varchar](200) NULL,
	[NCNDReport] [varchar](50) NULL,
	[EmpSiglaID] [varchar](10) NULL,
	[FEExiste] [bit] NULL,
	[FEContacto] [varchar](80) NULL,
	[FELocalizacao] [varchar](40) NULL,
	[FEJustificativo] [varchar](40) NULL,
	[FETextoComplementar] [varchar](255) NULL,
	[FECertPath] [varchar](255) NULL,
	[FECertPwd] [varchar](128) NULL,
	[FESigVisible] [bit] NULL,
	[FESigLogoPath] [varchar](255) NULL,
	[FESigPosX] [decimal](6, 1) NULL,
	[FESigPosY] [decimal](6, 1) NULL,
	[FESigSizeH] [decimal](6, 1) NULL,
	[FESigSizeW] [decimal](6, 1) NULL,
	[ArqExiste] [bit] NULL,
	[ArqWebServiceURL] [varchar](255) NULL,
	[ArqUser] [varchar](25) NULL,
	[ArqPassword] [varchar](128) NULL,
	[ArqAppID] [varchar](36) NULL,
	[ArqFEDefaultFolder] [varchar](255) NULL,
	[ArqFEDefaultDocTypeFAC] [varchar](10) NULL,
	[ArqFEDefaultDocTypeNC] [varchar](10) NULL,
	[ArqFEDefaultDocTypeND] [varchar](10) NULL,
	[ArqUsaDefaultWebProxy] [bit] NULL,
	[NIBEmpresa] [varchar](50) NULL,
	[DJ_PodeExportar] [bit] NULL,
	[DJ_RefTransf] [varchar](15) NULL,
	[DJ_DataTransf] [varchar](20) NULL,
	[DJ_MeioPag] [varchar](1) NULL,
	[DJ_AgenteExec] [varchar](60) NULL,
	[DJ_AgenteExecEmail] [varchar](128) NULL,
	[DJ_AgrupaTransf] [bit] NULL,
	[App_Major] [int] NULL,
	[App_Minor] [int] NULL,
	[DJ_IncluiRecibos] [bit] NULL,
	[FAC_UsaEmailBCC] [bit] NULL,
	[FAC_EmailBCC] [varchar](128) NULL,
	[EmpresaNomeComercial] [varchar](50) NULL,
	[MoradaNum] [varchar](10) NULL,
	[MoradaPais] [varchar](50) NULL,
	[Telefone] [varchar](25) NULL,
	[Fax] [varchar](25) NULL,
	[EmpresaEmail] [varchar](128) NULL,
	[EmpresaCapitalSocial] [decimal](19, 6) NULL,
	[H_URI_0] [varchar](128) NULL,
	[PF_PodeExportar] [bit] NULL,
	[CUTTGeral_PodeExportar] [bit] NULL,
	[CUTTGeral_Repositorio] [varchar](255) NULL,
	[CUTTGeral_CUTT] [varchar](30) NULL,
	[RecVencimentoAgrupado] [bit] NULL,
	[RegComercial] [varchar](80) NULL,
	[ServSocialNumero] [varchar](20) NULL,
	[IsMostrarCamposRelatorio] [bit] NULL,
	[FiltroEmpresa] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Art9_CU_TT]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Art9_CU_TT](
	[KeyArt9_CU_TT] [int] IDENTITY(1,1) NOT NULL,
	[Alinea] [varchar](2048) NULL,
	[Duracao] [smallint] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Termo] [varchar](60) NULL,
	[Inactivo] [bit] NULL,
	[DataInactivo] [datetime] NULL,
	[DecretoLei] [varchar](15) NULL,
	[Artigo] [varchar](10) NULL,
	[IsContratoFormacao] [bit] NULL,
 CONSTRAINT [PK_Art9_CU_TT] PRIMARY KEY NONCLUSTERED 
(
	[KeyArt9_CU_TT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 95) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Art9_CU_TT_Fund]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Art9_CU_TT_Fund](
	[KeyArt9_CU_TT_Fund] [int] IDENTITY(1,1) NOT NULL,
	[KeyArt9_CU_TT] [int] NOT NULL,
	[Descricao] [text] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_Art9_CU_TT_Fund] PRIMARY KEY CLUSTERED 
(
	[KeyArt9_CU_TT_Fund] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Artigos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Artigos](
	[KeyArtigos] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](48) NOT NULL,
	[Descricao] [varchar](60) NULL,
	[EstadoArtigo] [bit] NULL,
	[CodBarras] [varchar](15) NULL,
	[TaxaIVA] [decimal](7, 3) NULL,
	[PrecoCMedio] [decimal](19, 6) NULL,
	[PrecoCUltimo] [decimal](19, 6) NULL,
	[TipoArtigo] [int] NULL,
	[Fornecedor] [varchar](100) NULL,
	[Marca] [varchar](100) NULL,
	[Garantia] [varchar](100) NULL,
	[GerirStock] [bit] NULL,
	[StockMinimo] [decimal](19, 6) NULL,
	[StockMaximo] [decimal](19, 6) NULL,
	[StockPEncomenda] [decimal](19, 6) NULL,
	[StockActual] [decimal](19, 6) NULL,
	[StockDtUltEntrada] [smalldatetime] NULL,
	[StockDtUltSaida] [smalldatetime] NULL,
	[Observacoes] [varchar](2048) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[IsToPublicarPortal] [bit] NULL,
	[CodAbonoDespesa] [varchar](5) NULL,
	[AbonoDespesaDescricao] [varchar](60) NULL,
	[ControlaCaucao] [bit] NULL,
	[CodAbonoReembolso] [varchar](5) NULL,
	[CodDescontoCaucao] [varchar](5) NULL,
	[VidaUtil] [smallint] NULL,
	[VidaUtilTipo] [varchar](1) NULL,
	[ValorCaucao] [decimal](19, 6) NULL,
	[TipoDim1] [varchar](15) NULL,
	[Dim1] [varchar](20) NULL,
	[RubDim1] [varchar](10) NULL,
	[TipoDim2] [varchar](15) NULL,
	[Dim2] [varchar](20) NULL,
	[RubDim2] [varchar](10) NULL,
	[TipoDim3] [varchar](15) NULL,
	[Dim3] [varchar](20) NULL,
	[RubDim3] [varchar](10) NULL,
	[TratamentoDim] [tinyint] NULL,
	[Riscos] [varchar](1024) NULL,
 CONSTRAINT [PK_Artigos] PRIMARY KEY CLUSTERED 
(
	[KeyArtigos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ArtigosOperacoes]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArtigosOperacoes](
	[KeyArtigosOperacoes] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](3) NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[TemCaucao] [bit] NULL,
	[TipoMov] [varchar](1) NULL,
	[NomeRPT] [varchar](40) NULL,
	[TemMovStock] [bit] NULL,
 CONSTRAINT [PK_ArtigosOperacoes] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AVALPOSTTRAB]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AVALPOSTTRAB](
	[KeyAvalPostTrab] [int] IDENTITY(1,1) NOT NULL,
	[AvalPostTrab] [varchar](80) NOT NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Excluir] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyAvalPostTrab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BalancoSocialExameMedico]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BalancoSocialExameMedico](
	[KeyBalancoSocialExameMedico] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](5) NULL,
	[designacao] [varchar](20) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[Tipo] [tinyint] NULL,
 CONSTRAINT [PK_BalancoSocialExameMedico] PRIMARY KEY CLUSTERED 
(
	[KeyBalancoSocialExameMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bancos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bancos](
	[KeyBanco] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoBanco] [varchar](40) NULL,
	[SiglaBanco] [varchar](8) NULL,
	[CodBanco] [varchar](4) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[NIB] [varchar](50) NULL,
	[CONTA] [varchar](22) NULL,
	[PlafLetras] [decimal](19, 6) NULL,
	[JuroLetras] [decimal](19, 6) NULL,
	[ComLetras] [decimal](19, 6) NULL,
	[RefLetras] [decimal](19, 6) NULL,
	[ObsvLetras] [varchar](60) NULL,
	[PlafRemessa] [decimal](19, 6) NULL,
	[JuroRemessa] [decimal](19, 6) NULL,
	[ComRemessa] [decimal](19, 6) NULL,
	[RefRemessa] [decimal](19, 6) NULL,
	[ObsvRemessa] [varchar](100) NULL,
	[PlafLivr] [decimal](19, 6) NULL,
	[JuroLivr] [decimal](19, 6) NULL,
	[ComLivr] [decimal](19, 6) NULL,
	[RefLivr] [decimal](19, 6) NULL,
	[ObsvLivr] [varchar](100) NULL,
	[PlafLetras_BM] [decimal](19, 6) NULL,
	[ComLetras_BM] [decimal](19, 6) NULL,
	[RefLetras_BM] [decimal](19, 6) NULL,
	[PlafRemessa_BM] [decimal](19, 6) NULL,
	[ComRemessa_BM] [decimal](19, 6) NULL,
	[RefRemessa_BM] [decimal](19, 6) NULL,
	[PlafLivr_BM] [decimal](19, 6) NULL,
	[ComLivr_BM] [decimal](19, 6) NULL,
	[RefLivr_BM] [decimal](19, 6) NULL,
	[Diario] [varchar](10) NULL,
	[IncCheque] [int] NULL,
	[PermiteZeros] [bit] NULL,
	[AIgnorar] [varchar](30) NULL,
	[IBAN] [varchar](50) NULL,
	[SWIFT] [varchar](11) NULL,
	[LimiteDiario] [decimal](19, 6) NULL,
	[CodEntidadeBancaria] [varchar](10) NULL,
	[IsCaixa] [bit] NULL,
	[UsarCobrancas] [bit] NULL,
	[ExpFicheiroEncriptado] [bit] NULL,
	[MetodoEncriptacao] [tinyint] NULL,
 CONSTRAINT [PK_Bancos] PRIMARY KEY NONCLUSTERED 
(
	[KeyBanco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BusinessUnits]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BusinessUnits](
	[KeyBusinessUnit] [int] IDENTITY(1,1) NOT NULL,
	[BusinessUnit] [varchar](10) NOT NULL,
	[Descricao] [varchar](30) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_BusinessUnits] PRIMARY KEY CLUSTERED 
(
	[BusinessUnit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CabListagemPesq]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CabListagemPesq](
	[KeyCabListagem] [int] IDENTITY(1,1) NOT NULL,
	[NomeListagem] [varchar](50) NULL,
 CONSTRAINT [PK_CabListagemPesq] PRIMARY KEY CLUSTERED 
(
	[KeyCabListagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAE]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAE](
	[KeyCAE] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[Descricao] [varchar](255) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CAE] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CAE_UnidNeg_SetorAtiv]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAE_UnidNeg_SetorAtiv](
	[KeyCAE_UnidNeg_SetorAtiv] [int] IDENTITY(1,1) NOT NULL,
	[CodCAE] [varchar](5) NOT NULL,
	[CodUnidadeNegocio] [varchar](3) NULL,
	[CodSetorAtividade] [varchar](5) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CAE_UnidNeg_SetorAtiv] PRIMARY KEY CLUSTERED 
(
	[CodCAE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CamposMapaFacturacaoPorCliente]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CamposMapaFacturacaoPorCliente](
	[KeyCamposMapaFacturacaoPorCliente] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[TipoMapa] [smallint] NOT NULL,
	[ColNumber] [smallint] NOT NULL,
	[IsChecked] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CapAng]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CapAng](
	[KeyCapAng] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoCapAng] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CapAng] PRIMARY KEY CLUSTERED 
(
	[KeyCapAng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Caracteristicas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Caracteristicas](
	[KeyCaracteris] [int] IDENTITY(1,1) NOT NULL,
	[KeyTemas] [int] NULL,
	[DescricaoCaracteris] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_Caracteristicas] PRIMARY KEY CLUSTERED 
(
	[KeyCaracteris] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CartaExtractoServiceLog]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CartaExtractoServiceLog](
	[KeyCartaExtractoServiceLog] [uniqueidentifier] NOT NULL,
	[ServicoInicio] [smalldatetime] NOT NULL,
	[ServicoFim] [smalldatetime] NULL,
	[KeyCE] [int] NOT NULL,
	[LimiteInferior] [smallint] NULL,
	[LimiteSuperior] [smallint] NULL,
	[NAV] [tinyint] NULL,
	[DiaParaPagamento] [tinyint] NULL,
	[Documentos] [varchar](max) NULL,
	[Estado] [tinyint] NULL,
	[ReportTemplate] [varchar](128) NULL,
	[MT_Titulo] [varchar](30) NULL,
	[MT_Mensagem] [text] NULL,
 CONSTRAINT [PK_CartaExtractoServiceLog] PRIMARY KEY CLUSTERED 
(
	[KeyCartaExtractoServiceLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categ_Grupo]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categ_Grupo](
	[KeyGrupoCateg] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](3) NULL,
	[DescricaoGrupo] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_Categ_Grupo] PRIMARY KEY CLUSTERED 
(
	[KeyGrupoCateg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[KeyCategoria] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoCategoria] [varchar](100) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[GRUPO] [varchar](3) NULL,
	[CODIGO] [varchar](10) NULL,
	[CodNacProf] [varchar](10) NULL,
	[Exportar] [bit] NULL,
	[CLASSIF_BS] [int] NULL,
	[ClassificacaoBLS] [varchar](5) NULL,
 CONSTRAINT [PK_Categoria_1] PRIMARY KEY CLUSTERED 
(
	[KeyCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CCT_GesDoc]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CCT_GesDoc](
	[KeyCCT_GesDoc] [int] IDENTITY(1,1) NOT NULL,
	[KeyCCT_Limites] [int] NOT NULL,
	[TipoDoc] [varchar](40) NULL,
	[Notas] [varchar](60) NULL,
	[Filename] [varchar](60) NULL,
	[DataReg] [smalldatetime] NULL,
	[DataEmi] [smalldatetime] NULL,
	[DataVal] [smalldatetime] NULL,
	[User] [varchar](15) NULL,
	[Data] [smalldatetime] NULL,
	[PortalPublicar] [bit] NULL,
 CONSTRAINT [PK_CCT_GesDoc] PRIMARY KEY CLUSTERED 
(
	[KeyCCT_GesDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CCT_Limites]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CCT_Limites](
	[KeyCCT_Limites] [int] IDENTITY(1,1) NOT NULL,
	[CodAcordoCCT] [varchar](5) NOT NULL,
	[CodRegiao] [varchar](5) NOT NULL,
	[CodIRCT] [varchar](5) NOT NULL,
	[Activo] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Notas] [text] NULL,
 CONSTRAINT [PK_CCT_Limites] PRIMARY KEY CLUSTERED 
(
	[KeyCCT_Limites] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CCT_LimitesRubricas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CCT_LimitesRubricas](
	[KeyCCT_LimitesRubricas] [int] IDENTITY(1,1) NOT NULL,
	[KeyCCT_Limites] [int] NOT NULL,
	[CodRubrica] [varchar](5) NOT NULL,
	[DataINI] [smalldatetime] NULL,
	[DataFIM] [smalldatetime] NULL,
	[Valor] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[CodCategoria] [varchar](10) NULL,
	[Nivel] [varchar](3) NULL,
	[Funcao] [text] NULL,
	[TipoAccaoValid] [tinyint] NULL,
	[CodProfissao] [varchar](5) NULL,
	[HorasMes] [decimal](19, 6) NULL,
 CONSTRAINT [PK_CCT_LimitesRubricas] PRIMARY KEY CLUSTERED 
(
	[KeyCCT_LimitesRubricas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE](
	[KeyCE] [int] IDENTITY(1,1) NOT NULL,
	[StatusCE] [varchar](15) NULL,
	[CodIntCE] [varchar](10) NULL,
	[NomeCE] [varchar](60) NULL,
	[EstadoCE] [bit] NULL,
	[MoradaCE] [varchar](100) NULL,
	[LocalidadeCE] [varchar](40) NULL,
	[CPCE] [varchar](8) NULL,
	[LCPCE] [varchar](40) NULL,
	[Ntelef01CE] [varchar](20) NULL,
	[NTelefaxCE] [varchar](20) NULL,
	[EmailCE] [varchar](128) NULL,
	[WWWCE] [varchar](40) NULL,
	[GrupoCE] [varchar](5) NULL,
	[NumContCE] [varchar](18) NULL,
	[AreaActividadeCE] [varchar](20) NULL,
	[DescComercialCE] [decimal](19, 6) NULL,
	[ZonaCE] [varchar](25) NULL,
	[NumEmpCE] [smallint] NULL,
	[CaeCE] [varchar](5) NULL,
	[RegimeSS] [varchar](40) NULL,
	[NumeroSS] [varchar](15) NULL,
	[RespContCE] [varchar](60) NULL,
	[NtelefRCCE] [varchar](20) NULL,
	[BancoCE] [varchar](40) NULL,
	[NIBCE] [varchar](50) NULL,
	[NViasCE] [smallint] NULL,
	[AVenCE] [smallint] NULL,
	[BloqCE] [bit] NULL,
	[PrazoPagamentoCE] [varchar](15) NULL,
	[DiaP1CE] [smallint] NULL,
	[DiaP2CE] [smallint] NULL,
	[MeioPagamentoCE] [varchar](25) NULL,
	[LimCreditoCE] [decimal](19, 6) NULL,
	[ContaConCE] [varchar](15) NULL,
	[VolVendasCE] [decimal](19, 6) NULL,
	[NotasCE] [text] NULL,
	[MoradaCEFact] [varchar](100) NULL,
	[LocalidadeCEFact] [varchar](40) NULL,
	[CPCEFact] [varchar](8) NULL,
	[LCPCEFact] [varchar](40) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodAgencia] [varchar](3) NULL,
	[CodArea] [varchar](2) NULL,
	[DIVISA] [varchar](4) NULL,
	[COD_D_B] [varchar](20) NULL,
	[CAP_SOCIAL] [decimal](19, 6) NULL,
	[Iva] [decimal](7, 3) NULL,
	[FactAcumCE] [decimal](19, 6) NULL,
	[FactAcumCE_BM] [decimal](19, 6) NULL,
	[CAP_SOCIAL_BM] [decimal](19, 6) NULL,
	[VolVendasCE_BM] [decimal](19, 6) NULL,
	[LimCreditoCE_BM] [decimal](19, 6) NULL,
	[Mailing] [int] NULL,
	[TXIVA] [int] NULL,
	[VHCCAD] [int] NULL,
	[FACTRESUMO] [int] NULL,
	[ObservacoesDividas] [varchar](60) NULL,
	[PrefFac] [varchar](250) NULL,
	[Desconto] [decimal](19, 6) NULL,
	[FHHorasNeg] [bit] NULL,
	[ExportaIBRIDGE] [bit] NULL,
	[TipoCliente] [real] NULL,
	[SF_Parcial] [bit] NULL,
	[SN_Parcial] [bit] NULL,
	[SFNG_Parcial] [bit] NULL,
	[CPE_Parcial] [bit] NULL,
	[MPSF] [bit] NULL,
	[MPSN] [bit] NULL,
	[MPFN] [bit] NULL,
	[MPCPE] [bit] NULL,
	[FHPropUnlock] [bit] NULL,
	[FHPropCPE] [bit] NULL,
	[PropFaltasSF] [bit] NULL,
	[PropFaltasSN] [bit] NULL,
	[PropFaltasSFNG] [bit] NULL,
	[Segmento] [varchar](10) NULL,
	[REFINT] [varchar](15) NULL,
	[FHAtribuiCPE] [bit] NULL,
	[DIAINIFH] [tinyint] NULL,
	[DIAFIMFH] [tinyint] NULL,
	[CodClassificacao] [varchar](10) NULL,
	[Sector] [varchar](20) NULL,
	[MCLT] [bit] NULL,
	[MFLT] [bit] NULL,
	[ContFAC] [varchar](40) NULL,
	[CoeficienteSemCPE] [decimal](7, 6) NULL,
	[RecebeFaturasMail] [bit] NULL,
	[RecebeContratosMail] [bit] NULL,
	[RecebeFHMail] [bit] NULL,
	[PaisCE] [varchar](60) NULL,
	[CodigoPaisCE] [varchar](5) NULL,
	[PaisCEFACT] [varchar](60) NULL,
	[CodigoPaisCEFACT] [varchar](5) NULL,
	[PropFaltasCPE] [bit] NULL,
	[KeyVendedor] [int] NULL,
	[Vendedor] [varchar](60) NULL,
	[PortalPublicar] [bit] NULL,
	[IRCT] [varchar](5) NULL,
	[DtTabSalarial] [smalldatetime] NULL,
	[UsarFACElectronica] [bit] NULL,
	[EmailFact] [varchar](128) NULL,
	[TaxaSF] [decimal](7, 3) NULL,
	[TaxaSN] [decimal](7, 3) NULL,
	[TaxaSFNG] [decimal](7, 3) NULL,
	[TaxaCPE] [decimal](7, 3) NULL,
	[TaxaCPE_M6] [decimal](7, 3) NULL,
	[NotasRecibos] [varchar](255) NULL,
	[Contencioso] [bit] NULL,
	[DataContencioso] [smalldatetime] NULL,
	[NIBDD] [varchar](50) NULL,
	[NumAutorizacaoDD] [varchar](11) NULL,
	[PedAutorizacaoRefLote] [varchar](15) NULL,
	[PedAutorizacaoData] [smalldatetime] NULL,
	[FacturarExamesMedicos] [bit] NULL,
	[CoeficienteExamesMedicos] [decimal](7, 6) NULL,
	[CustoExamesMedicos] [decimal](19, 6) NULL,
	[PortalPublicarContrato] [bit] NULL,
	[PortalPublicarFH] [bit] NULL,
	[TipoContencioso] [varchar](3) NULL,
	[FHPropNegativo] [bit] NULL,
	[RecebeCartaExtractoEmail] [bit] NULL,
	[EmailCartaExtracto] [varchar](128) NULL,
	[LimContActivos] [int] NULL,
	[NotasContratos] [text] NULL,
	[NotasFH] [text] NULL,
	[NotasCredito] [text] NULL,
	[NotasFacturacao] [text] NULL,
	[ContRespComercial] [varchar](60) NULL,
	[FHPropSFNG] [bit] NULL,
	[SegmentoTerceiro] [varchar](10) NULL,
	[RubricaRecebimentos] [varchar](35) NULL,
	[RubricaPagamentos] [varchar](35) NULL,
	[CodTabPreFactRec] [varchar](5) NULL,
	[CodClassificacao2] [varchar](2) NULL,
	[CodRubHE1] [varchar](5) NULL,
	[CodRubHE2] [varchar](5) NULL,
	[CodRubHNocturno] [varchar](5) NULL,
	[CodRubDCHDiurno] [varchar](5) NULL,
	[CodRubDCHNocturno] [varchar](5) NULL,
	[CodRubDOHDiurno] [varchar](5) NULL,
	[CodRubDOHNocturno] [varchar](5) NULL,
	[FAC_RPT_Template] [varchar](128) NULL,
	[NC_RPT_Template] [varchar](128) NULL,
	[ND_RPT_Template] [varchar](128) NULL,
	[SubRef_RecMultiplosValor] [decimal](19, 6) NULL,
	[RespRecupCredito] [varchar](30) NULL,
	[Importado] [bit] NULL,
	[CodSubArea] [varchar](4) NULL,
	[DescricaoSubArea] [varchar](128) NULL,
	[DataImportacao] [datetime] NULL,
	[TemIvaCaixa] [bit] NULL,
	[RecebePreFacturasEmail] [bit] NULL,
	[EmailPreFacturas] [varchar](128) NULL,
	[ClassifEntidade] [smallint] NULL,
	[ContactoRespPreFactura] [varchar](40) NULL,
	[IsEntidadePassagem] [bit] NULL,
	[CDU_IdEstrutura] [varchar](20) NULL,
	[CodTipoAngariacao] [varchar](5) NULL,
	[ValorFaturarExamesMedicos] [decimal](19, 6) NULL,
	[IsFaturacaoFixaExamesMedicos] [bit] NULL,
	[CodBancoCE] [varchar](4) NULL,
	[CodSeguradora] [varchar](3) NULL,
	[DescSeguradora] [varchar](40) NULL,
	[KeyMetodosClassifCE] [int] NULL,
	[DescricaoFactServicos] [varchar](60) NULL,
	[DataPagamentoSN] [smalldatetime] NULL,
	[ClassifCEFixo] [bit] NULL,
	[RegistoComercial] [varchar](60) NULL,
	[Representante] [varchar](40) NULL,
	[Qualidade] [varchar](40) NULL,
	[idTipoDesconto] [smallint] NULL,
	[PodeGerarContractosSucessivos] [bit] NULL,
	[DenominacaoSocial] [varchar](100) NULL,
	[NumConservatoria] [varchar](15) NULL,
	[HorarioAtendCont] [varchar](60) NULL,
	[CobRecepJuros] [bit] NULL,
	[PortalExportado] [bit] NULL,
	[DescricaoIRCT] [varchar](250) NULL,
	[PodeAlterarNumProcesso] [bit] NULL,
	[TaxaCPEProv] [decimal](7, 3) NULL,
	[PeriodicidadeExameMed] [tinyint] NULL,
	[RespRealizacaoExameMed] [bit] NULL,
	[GrandeConta] [bit] NULL,
	[PermiteRespExameMedico] [bit] NULL,
	[CalcHorasEfectivas] [tinyint] NULL,
	[CodDatasProcessamento] [varchar](3) NULL,
	[CriarContratoPrimavera] [bit] NULL,
 CONSTRAINT [PK_CE] PRIMARY KEY CLUSTERED 
(
	[KeyCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_AbonosDesconto]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_AbonosDesconto](
	[KeyCE_AbonosDesconto] [int] IDENTITY(1,1) NOT NULL,
	[idTipoDesconto] [tinyint] NOT NULL,
	[KeyCE] [int] NOT NULL,
	[CodAbono] [varchar](5) NOT NULL,
	[Descricao] [varchar](40) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_AbonosDesconto] PRIMARY KEY CLUSTERED 
(
	[KeyCE_AbonosDesconto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_AcordosCCT]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_AcordosCCT](
	[KeyCE_AcordosCCT] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Codigo] [varchar](2) NOT NULL,
	[Descricao] [varchar](40) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_AcordosCCT] PRIMARY KEY CLUSTERED 
(
	[KeyCE_AcordosCCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_Classificacao]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_Classificacao](
	[KeyCE_Classificacao] [int] IDENTITY(1,1) NOT NULL,
	[CodClassificacao] [varchar](10) NOT NULL,
	[DescricaoClassificacao] [varchar](30) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_Classificacao] PRIMARY KEY CLUSTERED 
(
	[CodClassificacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_Classificacao2]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_Classificacao2](
	[KeyCE_Classificacao] [int] IDENTITY(1,1) NOT NULL,
	[CodClassificacao] [varchar](2) NOT NULL,
	[DescricaoClassificacao] [varchar](50) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_Classificacao2] PRIMARY KEY CLUSTERED 
(
	[CodClassificacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_Concorrencia]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_Concorrencia](
	[KeyCE_Concorrencia] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[KeyTiposConcorrencia] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
	[Notas] [varchar](512) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_Concorrencia] PRIMARY KEY CLUSTERED 
(
	[KeyCE_Concorrencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_ConfigAbonos_Tarifas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_ConfigAbonos_Tarifas](
	[KeyCE_ConfigAbonos_Tarifas] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[CodAbono] [varchar](5) NOT NULL,
	[DescricaoAbono] [varchar](40) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Imprimir] [bit] NULL,
 CONSTRAINT [PK_CE_ConfigAbonos_Tarifas] PRIMARY KEY CLUSTERED 
(
	[KeyCE_ConfigAbonos_Tarifas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_Contactos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_Contactos](
	[KeyCE_Contactos] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NULL,
	[TituloCEC] [varchar](20) NULL,
	[NomeCEC] [varchar](30) NULL,
	[CargoCEC] [varchar](15) NULL,
	[QuemContacto] [varchar](20) NULL,
	[Telefone] [varchar](20) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Email] [varchar](128) NULL,
	[DescricaoContacto] [varchar](max) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_CE_Contactos] PRIMARY KEY CLUSTERED 
(
	[KeyCE_Contactos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_ContactosAreas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_ContactosAreas](
	[KeyCE_ContactosAreas] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_Contactos] [int] NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_ContactosAreas] PRIMARY KEY CLUSTERED 
(
	[KeyCE_ContactosAreas] ASC,
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_ContCorr]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_ContCorr](
	[KeyCC] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NULL,
	[KeyDoc] [int] NULL,
	[NumDoc] [int] NULL,
	[DtDoc] [smalldatetime] NULL,
	[Regularizado] [bit] NULL,
	[Moeda] [varchar](11) NULL,
	[ValorDebito] [decimal](19, 6) NULL,
	[ValorCredito] [decimal](19, 6) NULL,
	[ValorDebito_BM] [decimal](19, 6) NULL,
	[ValorCredito_BM] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Divisa] [varchar](5) NULL,
	[Cambio] [int] NULL,
	[DtVenc] [smalldatetime] NULL,
	[ValorDebito_ESC] [decimal](19, 6) NULL,
	[ValorCredito_ESC] [decimal](19, 6) NULL,
	[DataMov] [smalldatetime] NULL,
	[DataVal] [smalldatetime] NULL,
	[NumCC] [int] NULL,
	[NOME] [varchar](50) NULL,
	[TIPODOC] [varchar](15) NULL,
	[Tipo] [int] NULL,
	[DescricaoBC] [varchar](50) NULL,
	[KeyFornecedores] [int] NULL,
	[BancoConta] [varchar](35) NULL,
 CONSTRAINT [PK_CE_ContCorr] PRIMARY KEY NONCLUSTERED 
(
	[KeyCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_Descontos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_Descontos](
	[KeyDesconto] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[idTipoDesconto] [smallint] NOT NULL,
	[DescricaoDesconto] [varchar](50) NULL,
	[EscalaoDE] [decimal](19, 6) NULL,
	[EscalaoATE] [decimal](19, 6) NULL,
	[PercDesc] [decimal](19, 6) NULL,
	[DataActivoIni] [smalldatetime] NULL,
	[DataActivoFim] [smalldatetime] NULL,
	[PeriodicidadeMeses] [smallint] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[DiaEnvioFaturas] [tinyint] NULL,
	[DiaPagamentoTrabalhadores] [tinyint] NULL,
	[Obs] [varchar](128) NULL,
 CONSTRAINT [PK_CE_Descontos] PRIMARY KEY CLUSTERED 
(
	[KeyDesconto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_DiasPagamento]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_DiasPagamento](
	[KeyCE_DiasPagamento] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Dia1] [bit] NULL,
	[Dia2] [bit] NULL,
	[Dia3] [bit] NULL,
	[Dia4] [bit] NULL,
	[Dia5] [bit] NULL,
	[Dia6] [bit] NULL,
	[Dia7] [bit] NULL,
	[Dia8] [bit] NULL,
	[Dia9] [bit] NULL,
	[Dia10] [bit] NULL,
	[Dia11] [bit] NULL,
	[Dia12] [bit] NULL,
	[Dia13] [bit] NULL,
	[Dia14] [bit] NULL,
	[Dia15] [bit] NULL,
	[Dia16] [bit] NULL,
	[Dia17] [bit] NULL,
	[Dia18] [bit] NULL,
	[Dia19] [bit] NULL,
	[Dia20] [bit] NULL,
	[Dia21] [bit] NULL,
	[Dia22] [bit] NULL,
	[Dia23] [bit] NULL,
	[Dia24] [bit] NULL,
	[Dia25] [bit] NULL,
	[Dia26] [bit] NULL,
	[Dia27] [bit] NULL,
	[Dia28] [bit] NULL,
	[Dia29] [bit] NULL,
	[Dia30] [bit] NULL,
	[Dia31] [bit] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_DiasPagamento] PRIMARY KEY CLUSTERED 
(
	[KeyCE_DiasPagamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_DiasPagamentoAgencia]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_DiasPagamentoAgencia](
	[KeyDiasPagAgencia] [int] IDENTITY(1,1) NOT NULL,
	[KeyFactAgencia] [int] NOT NULL,
	[Dia1] [bit] NULL,
	[Dia2] [bit] NULL,
	[Dia3] [bit] NULL,
	[Dia4] [bit] NULL,
	[Dia5] [bit] NULL,
	[Dia6] [bit] NULL,
	[Dia7] [bit] NULL,
	[Dia8] [bit] NULL,
	[Dia9] [bit] NULL,
	[Dia10] [bit] NULL,
	[Dia11] [bit] NULL,
	[Dia12] [bit] NULL,
	[Dia13] [bit] NULL,
	[Dia14] [bit] NULL,
	[Dia15] [bit] NULL,
	[Dia16] [bit] NULL,
	[Dia17] [bit] NULL,
	[Dia18] [bit] NULL,
	[Dia19] [bit] NULL,
	[Dia20] [bit] NULL,
	[Dia21] [bit] NULL,
	[Dia22] [bit] NULL,
	[Dia23] [bit] NULL,
	[Dia24] [bit] NULL,
	[Dia25] [bit] NULL,
	[Dia26] [bit] NULL,
	[Dia27] [bit] NULL,
	[Dia28] [bit] NULL,
	[Dia29] [bit] NULL,
	[Dia30] [bit] NULL,
	[Dia31] [bit] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[KeyCE] [int] NULL,
 CONSTRAINT [PK_CE_DiasPagamentoAgencia] PRIMARY KEY CLUSTERED 
(
	[KeyDiasPagAgencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_EstruturaMercado]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_EstruturaMercado](
	[KeyCE_EstruturaMercado] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[KeyConfigEstruturaMercado] [int] NOT NULL,
	[RowName] [varchar](25) NOT NULL,
	[ColumnName] [varchar](25) NOT NULL,
	[CellValue] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_EstruturaMercado] PRIMARY KEY CLUSTERED 
(
	[KeyCE] ASC,
	[KeyConfigEstruturaMercado] ASC,
	[RowName] ASC,
	[ColumnName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_FacturacaoAgencia]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_FacturacaoAgencia](
	[KeyFactAgencia] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[KeyEstablecimento] [smallint] NOT NULL,
	[MoradaCEFact] [varchar](100) NULL,
	[LocalidadeCEFact] [varchar](40) NULL,
	[CPCEFact] [varchar](8) NULL,
	[LCPCEFact] [varchar](40) NULL,
	[CodigoPaisCEFACT] [varchar](5) NULL,
	[ContFAC] [varchar](40) NULL,
	[EmailFact] [varchar](128) NULL,
	[MeioPagamentoCE] [varchar](25) NULL,
	[DiaP1CE] [int] NULL,
	[DiaP2CE] [int] NULL,
	[BancoCE] [varchar](40) NULL,
	[NIBCE] [varchar](50) NULL,
	[DescricaoFactServicos] [varchar](60) NULL,
	[Iva] [decimal](7, 3) NULL,
	[TemIvaCaixa] [bit] NULL,
	[IRCT] [varchar](5) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[CodAgencia] [varchar](3) NULL,
	[CircuitoFact] [varchar](250) NULL,
	[FacSeg] [bit] NULL,
	[FacTer] [bit] NULL,
	[FacQua] [bit] NULL,
	[FacQui] [bit] NULL,
	[FacSex] [bit] NULL,
	[FacSab] [bit] NULL,
	[FacDom] [bit] NULL,
	[PrazoPagamentoCE] [varchar](15) NULL,
	[GrupoCE] [varchar](5) NULL,
	[DescricaoIRCT] [varchar](250) NULL,
 CONSTRAINT [PK_CE_FacturacaoAgencia] PRIMARY KEY CLUSTERED 
(
	[KeyFactAgencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_FaltasDesconto]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_FaltasDesconto](
	[KeyCEFaltasDesconto] [int] IDENTITY(1,1) NOT NULL,
	[keyCE] [int] NOT NULL,
	[codFalta] [varchar](10) NOT NULL,
	[Descricao] [varchar](60) NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[idTipoDesconto] [smallint] NULL,
 CONSTRAINT [PK_CE_FaltasDesconto] PRIMARY KEY CLUSTERED 
(
	[KeyCEFaltasDesconto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_Faturacao]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_Faturacao](
	[KeyCE_Faturacao] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[CodTipoDoc] [varchar](3) NOT NULL,
	[TipoDoc] [varchar](5) NOT NULL,
	[Serie] [varchar](10) NOT NULL,
	[SeriePreFatura] [varchar](10) NOT NULL,
	[IsPorDetalhe] [bit] NOT NULL,
	[IsPorDetalheCatProf] [bit] NOT NULL,
	[IsPorDetalheAgrupaContrato] [bit] NOT NULL,
	[IsPorResumo] [bit] NOT NULL,
	[IsPorResumoRubricas] [bit] NOT NULL,
	[IsPorResumoCategorias] [bit] NOT NULL,
	[IsPorResumoLocalTrabalho] [bit] NOT NULL,
	[IsPorResumoTotal] [bit] NOT NULL,
	[IsPorResumoAnexo] [bit] NOT NULL,
	[DescFact] [tinyint] NULL,
	[DtEnvioPreFatura] [smalldatetime] NULL,
	[DtEnvioFatura] [smalldatetime] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[FacSeg] [bit] NULL,
	[FacTer] [bit] NULL,
	[FacQua] [bit] NULL,
	[FacQui] [bit] NULL,
	[FacSex] [bit] NULL,
	[FacSab] [bit] NULL,
	[FacDom] [bit] NULL,
	[IsPorResumoCentroCusto] [bit] NULL,
	[IsEntidadeFactoring] [bit] NULL,
	[Banco] [varchar](40) NULL,
	[NIB] [varchar](50) NULL,
	[IBAN] [varchar](50) NULL,
	[SwiftCode] [varchar](11) NULL,
	[NotasFacturaFactoring] [varchar](2048) NULL,
 CONSTRAINT [PK_CE_Faturacao] PRIMARY KEY CLUSTERED 
(
	[KeyCE_Faturacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_FichaComercialCliente]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_FichaComercialCliente](
	[KeyCEFichaComercialCliente] [int] IDENTITY(1,1) NOT NULL,
	[keyCE] [int] NOT NULL,
	[DiaEnvio] [int] NOT NULL,
	[DiaPagamento] [int] NOT NULL,
	[DupFolhaHoras] [bit] NOT NULL,
	[ReciboRemuneracao] [bit] NOT NULL,
	[FolhaRemunSegSocial] [bit] NOT NULL,
	[PeriodoSalarios] [int] NOT NULL,
	[Observacoes] [varchar](2500) NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_FichaComercialCliente] PRIMARY KEY CLUSTERED 
(
	[KeyCEFichaComercialCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_FicheirosPortal]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_FicheirosPortal](
	[KeyCE_FicheirosPortal] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[KeyFicheirosClientePortal] [int] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_FicheirosPortal] PRIMARY KEY CLUSTERED 
(
	[KeyCE] ASC,
	[KeyFicheirosClientePortal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_GesDoc]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_GesDoc](
	[KeyCE_GesDoc] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[TipoDoc] [varchar](40) NULL,
	[Notas] [varchar](60) NULL,
	[Filename] [varchar](60) NULL,
	[DataReg] [smalldatetime] NULL,
	[DataEmi] [smalldatetime] NULL,
	[DataVal] [smalldatetime] NULL,
	[User] [varchar](15) NULL,
	[Data] [smalldatetime] NULL,
	[PortalPublicar] [bit] NULL,
 CONSTRAINT [PK_CE_GesDoc] PRIMARY KEY CLUSTERED 
(
	[KeyCE_GesDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_Historico]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_Historico](
	[KeyCE_Historico] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[DataHora] [smalldatetime] NOT NULL,
	[Utilizador] [varchar](6) NOT NULL,
	[Operacao] [varchar](15) NOT NULL,
	[Campo] [varchar](60) NOT NULL,
	[Descricao] [varchar](512) NOT NULL,
	[OldValue] [varchar](1024) NULL,
	[NewValue] [varchar](1024) NULL,
 CONSTRAINT [PK_CE_Historico] PRIMARY KEY CLUSTERED 
(
	[KeyCE_Historico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_Ligacoes]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_Ligacoes](
	[KeyCE_Ligacoes] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[AppExterna] [varchar](25) NOT NULL,
	[CodigoExterno] [varchar](25) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_Ligacoes] PRIMARY KEY CLUSTERED 
(
	[KeyCE_Ligacoes] ASC,
	[KeyCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_MoradasFact]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_MoradasFact](
	[KeyCE_MoradaFact] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Codigo] [varchar](15) NOT NULL,
	[Morada] [varchar](100) NOT NULL,
	[Localidade] [varchar](40) NOT NULL,
	[CodPostal] [varchar](8) NOT NULL,
	[CodPostalLoc] [varchar](40) NOT NULL,
	[Pais] [varchar](60) NOT NULL,
	[ContactoNome] [varchar](60) NOT NULL,
	[ContactoeMail] [varchar](128) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Agrupamento] [varchar](40) NULL,
 CONSTRAINT [PK_CE_MoradasFact] PRIMARY KEY CLUSTERED 
(
	[KeyCE_MoradaFact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_Necessidades]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_Necessidades](
	[KeyCE_Nec] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NULL,
	[Categoria] [varchar](100) NULL,
	[DtNec] [smalldatetime] NULL,
	[Obs] [varchar](50) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_Necessidades] PRIMARY KEY CLUSTERED 
(
	[KeyCE_Nec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_NecLoc]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_NecLoc](
	[KeyCE_NecLoc] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NULL,
	[Local] [varchar](30) NULL,
	[Telefone] [varchar](20) NULL,
	[AjudasCusto] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Codigo] [varchar](15) NULL,
	[AjudasCusto_BM] [decimal](19, 6) NULL,
	[NumeroSS] [varchar](15) NULL,
	[Morada] [varchar](100) NULL,
	[Localidade] [varchar](40) NULL,
	[CP] [varchar](8) NULL,
	[LCP] [varchar](40) NULL,
	[NomeContacto] [varchar](60) NULL,
	[FuncaoContacto] [varchar](30) NULL,
	[TelefoneContacto] [varchar](20) NULL,
	[Pais] [varchar](60) NULL,
	[DescricaoLocal] [varchar](150) NULL,
	[EMail] [varchar](128) NULL,
	[Agrupamento] [varchar](40) NULL,
	[RegiaoACT] [varchar](40) NULL,
	[IsActivo] [bit] NULL,
	[CodDatasProcessamento] [varchar](3) NULL,
 CONSTRAINT [PK_CE_NecLoc] PRIMARY KEY NONCLUSTERED 
(
	[KeyCE_NecLoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_Projectos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_Projectos](
	[KeyCEProjecto] [int] IDENTITY(1,1) NOT NULL,
	[CodProjecto] [varchar](10) NOT NULL,
	[CodProjectoPrimavera] [varchar](40) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[ProjectoDescricao] [varchar](512) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[TipoProjecto] [int] NULL,
	[Valor] [decimal](19, 6) NULL,
	[Coeficiente] [decimal](19, 6) NULL,
	[Percentagem] [decimal](19, 6) NULL,
	[TaxaIva] [decimal](7, 3) NULL,
	[NotaEncomenda] [varchar](40) NULL,
	[Notas] [varchar](2048) NULL,
	[Budget] [decimal](19, 6) NULL,
	[CentroCusto] [varchar](15) NULL,
	[SubCentro] [varchar](15) NULL,
	[LocalTrabalho] [varchar](30) NULL,
	[ValorFacturar] [decimal](19, 6) NULL,
	[DescricaoFactServicos] [varchar](60) NULL,
	[FormatoContPS] [varchar](15) NULL,
	[DocumentoDesc] [varchar](1024) NULL,
	[DiasDenunciaContracto] [smallint] NULL,
	[DescricaoFuncao] [text] NULL,
	[KeyCE_SimuladorTMBAdc] [int] NULL,
	[CodAgencia] [varchar](3) NULL,
	[DescricaoDetalhada] [varchar](2048) NULL,
	[NotasParaAnexo] [varchar](2048) NULL,
	[HorasAprovadas] [decimal](16, 6) NOT NULL,
	[HorasEfectuadas] [decimal](16, 6) NOT NULL,
	[SincronizaProjecto] [bit] NULL,
 CONSTRAINT [PK_CE_Projectos] PRIMARY KEY CLUSTERED 
(
	[CodProjecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_ProjectosAltMensais]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_ProjectosAltMensais](
	[KeyCE_ProjectosAltMensais] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_Projectos] [int] NOT NULL,
	[KeyFacturaCab] [int] NULL,
	[KeyRecibosHonorariosCab] [int] NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[MesAno] [varchar](7) NULL,
	[DPGT] [tinyint] NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[HoraInicio] [smalldatetime] NOT NULL,
	[HoraFim] [smalldatetime] NOT NULL,
	[TipoAltMensal] [int] NOT NULL,
	[TipoRubrica] [int] NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[Descricao] [varchar](60) NOT NULL,
	[APagar] [bit] NOT NULL,
	[ValorUnitarioPag] [decimal](19, 6) NOT NULL,
	[QuantidadePag] [decimal](7, 3) NOT NULL,
	[ValorTotalPag] [decimal](19, 6) NOT NULL,
	[AFacturar] [bit] NOT NULL,
	[ValorUnitarioFact] [decimal](19, 6) NOT NULL,
	[QuantidadeFact] [decimal](7, 3) NOT NULL,
	[ValorTotalFact] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Coeficiente] [decimal](19, 6) NULL,
	[Percentagem] [decimal](19, 6) NULL,
	[SubCentro] [varchar](15) NULL,
	[KeyCvC_Independentes] [int] NULL,
	[ProcessadoSal] [bit] NULL,
	[ProcessadoPor] [varchar](25) NULL,
	[ProcessadoEm] [smalldatetime] NULL,
	[KeyCE_ProjectosEscalasDetalhe] [int] NULL,
 CONSTRAINT [PK_CE_ProjectosAltMensais] PRIMARY KEY CLUSTERED 
(
	[KeyCE_ProjectosAltMensais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_ProjectosEscalas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_ProjectosEscalas](
	[KeyCE_ProjectosEscalas] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_Projectos] [int] NOT NULL,
	[Data] [smalldatetime] NOT NULL,
	[HoraInicio] [smalldatetime] NOT NULL,
	[HoraFim] [smalldatetime] NOT NULL,
	[NumRecursos] [int] NOT NULL,
	[TotalHorasPrevistas] [decimal](7, 3) NOT NULL,
	[TotalHorasPrevistasEfetivas] [decimal](7, 3) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Cor] [varchar](10) NULL,
	[KeyCE_ProjectosValoresReferencia] [int] NULL,
	[TempoIntervalo] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_ProjectosEscalas] PRIMARY KEY NONCLUSTERED 
(
	[KeyCE_ProjectosEscalas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_ProjectosEscalasDetalhe]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_ProjectosEscalasDetalhe](
	[KeyCE_ProjectosEscalasDetalhe] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_ProjectosEscala] [int] NOT NULL,
	[Data] [smalldatetime] NOT NULL,
	[HoraInicio] [smalldatetime] NOT NULL,
	[HoraFim] [smalldatetime] NOT NULL,
	[TotalHorasPrevistas] [decimal](7, 3) NOT NULL,
	[TotalHorasPrevistasEfetivas] [decimal](7, 3) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[KeyCE_ProjectosValoresReferencia] [int] NULL,
	[ValorPagamento] [decimal](19, 6) NULL,
	[ValorFacturacao] [decimal](19, 6) NULL,
	[ValorPenalizacao] [decimal](19, 6) NULL,
	[AltValorPagamento] [decimal](19, 6) NULL,
	[AprovadoPor] [varchar](25) NULL,
	[AprovadoEm] [smalldatetime] NULL,
	[ValorAjudasCusto] [decimal](19, 6) NULL,
	[ValorMapaKms] [decimal](19, 6) NULL,
	[ValorAjustasValor] [decimal](19, 6) NULL,
	[TotalExtra] [decimal](19, 6) NULL,
	[TotalPagarMedico] [decimal](19, 6) NULL,
	[ValorFacturar] [decimal](19, 6) NULL,
	[TotalFacturar] [decimal](19, 6) NULL,
	[Margem] [decimal](19, 6) NULL,
	[MargemPercentagem] [decimal](7, 3) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[KeyCE_ProjectosAltMensais] [int] NULL,
	[KeyCE_Projectos] [int] NULL,
	[TempoIntervalo] [smalldatetime] NULL,
	[Faltou] [bit] NULL,
	[IsEscalaFechada] [bit] NULL,
	[IsEmailEnviado] [bit] NULL,
 CONSTRAINT [PK_CE_ProjectosEscalasDetalhe] PRIMARY KEY NONCLUSTERED 
(
	[KeyCE_ProjectosEscalasDetalhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_ProjectosValores]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_ProjectosValores](
	[KeyCE_ProjectosValores] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_Projectos] [int] NOT NULL,
	[DPGT] [tinyint] NULL,
	[Automatico] [bit] NOT NULL,
	[TipoRubrica] [int] NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[Descricao] [varchar](60) NOT NULL,
	[APagar] [bit] NOT NULL,
	[ValorUnitarioPag] [decimal](19, 6) NOT NULL,
	[QuantidadePag] [decimal](7, 3) NOT NULL,
	[ValorTotalPag] [decimal](19, 6) NOT NULL,
	[Coeficiente] [decimal](19, 6) NOT NULL,
	[Percentagem] [decimal](19, 6) NOT NULL,
	[AFacturar] [bit] NOT NULL,
	[ValorUnitarioFact] [decimal](19, 6) NOT NULL,
	[QuantidadeFact] [decimal](7, 3) NOT NULL,
	[ValorTotalFact] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[SubCentro] [varchar](15) NULL,
 CONSTRAINT [PK_CE_ProjectosValores] PRIMARY KEY CLUSTERED 
(
	[KeyCE_ProjectosValores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_ProjectosValoresReferencia]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_ProjectosValoresReferencia](
	[KeyCE_ProjectosValoresReferencia] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_Projectos] [int] NOT NULL,
	[KeyEspecialidade] [int] NOT NULL,
	[KeyTipologia] [int] NOT NULL,
	[ValorPagamento] [decimal](19, 6) NOT NULL,
	[ValorFacturacao] [decimal](19, 6) NOT NULL,
	[ValorPenalizacao] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[ValorMargem] [decimal](16, 6) NOT NULL,
	[ValorMargemPercetagem] [decimal](7, 3) NOT NULL,
	[HorasAprovadas] [decimal](19, 6) NULL,
 CONSTRAINT [PK_CE_ProjectosValoresReferencia] PRIMARY KEY NONCLUSTERED 
(
	[KeyCE_ProjectosValoresReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_ProjectosValoresReferenciaConfig]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_ProjectosValoresReferenciaConfig](
	[KeyCE_ProjectosValoresReferenciaConfig] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_Projectos] [int] NOT NULL,
	[KeyEspecialidade] [int] NOT NULL,
	[HorasAprovadas] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_ProjectosValoresReferenciaConfig] PRIMARY KEY NONCLUSTERED 
(
	[KeyCE_ProjectosValoresReferenciaConfig] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_ProjectosValoresReferenciaDetalhe]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_ProjectosValoresReferenciaDetalhe](
	[KeyCE_ProjectosValoresReferenciaDetalhe] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_ProjectosValoresReferenciaConfig] [int] NOT NULL,
	[Descricao] [varchar](1000) NOT NULL,
	[Horas] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Data] [datetime] NULL,
 CONSTRAINT [PK_CE_ProjectosValoresReferenciaDetalhe] PRIMARY KEY CLUSTERED 
(
	[KeyCE_ProjectosValoresReferenciaDetalhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_ProjectosValoresRH]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_ProjectosValoresRH](
	[KeyCE_ProjectosValoresRH] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_Projectos] [int] NOT NULL,
	[DPGT] [tinyint] NULL,
	[Codigo] [varchar](5) NOT NULL,
	[Descricao] [varchar](60) NOT NULL,
	[SubCentro] [varchar](15) NULL,
	[ValorUnitarioPag] [decimal](19, 6) NOT NULL,
	[QuantidadePag] [decimal](7, 3) NOT NULL,
	[ValorTotalPag] [decimal](19, 6) NOT NULL,
	[Coeficiente] [decimal](19, 6) NOT NULL,
	[Percentagem] [decimal](19, 6) NOT NULL,
	[ValorUnitarioFact] [decimal](19, 6) NOT NULL,
	[QuantidadeFact] [decimal](7, 3) NOT NULL,
	[ValorTotalFact] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[TipoValor] [int] NULL,
	[CodigoCategoria] [varchar](10) NULL,
	[DescricaoCategoria] [varchar](100) NULL,
	[Versao] [int] NULL,
	[Tipo] [int] NULL,
	[KeyCE_ProjectosValoresRHCat] [int] NULL,
 CONSTRAINT [PK_CE_ProjectosValoresRH] PRIMARY KEY CLUSTERED 
(
	[KeyCE_ProjectosValoresRH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_ProjectosValoresRHCat]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_ProjectosValoresRHCat](
	[KeyCE_ProjectosValoresRHCat] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_Projectos] [int] NOT NULL,
	[CodigoCategoria] [varchar](10) NOT NULL,
	[DescricaoCategoria] [varchar](100) NOT NULL,
	[Versao] [int] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_ProjectosValoresRHCat] PRIMARY KEY CLUSTERED 
(
	[KeyCE_ProjectosValoresRHCat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_RegrasAbonos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_RegrasAbonos](
	[KeyCE_RegrasAbonos] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
	[CodAbono] [varchar](5) NOT NULL,
	[Valor] [float] NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_RegrasAbonos] PRIMARY KEY CLUSTERED 
(
	[KeyCE_RegrasAbonos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_RegrasDesc]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_RegrasDesc](
	[KeyCE_RegrasDesc] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
	[CodDesconto] [varchar](5) NOT NULL,
	[Valor] [float] NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_RegrasDesc] PRIMARY KEY CLUSTERED 
(
	[KeyCE_RegrasDesc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_Sectores]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_Sectores](
	[KeyCE_Sectores] [int] IDENTITY(1,1) NOT NULL,
	[Sector] [varchar](20) NOT NULL,
	[Descricao] [varchar](255) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_Sectores] PRIMARY KEY CLUSTERED 
(
	[Sector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_Segmentos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_Segmentos](
	[KeyCE_Segmentos] [int] IDENTITY(1,1) NOT NULL,
	[Segmento] [varchar](10) NOT NULL,
	[Descricao] [varchar](255) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_Segmentos] PRIMARY KEY CLUSTERED 
(
	[Segmento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_SHST]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_SHST](
	[KeyCE_SHST] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Alinea_a] [text] NULL,
	[Alinea_b] [text] NULL,
	[Alinea_c] [text] NULL,
	[Alinea_d] [text] NULL,
	[ModSHST_SegHigiene] [tinyint] NULL,
	[ModSHST_Saude] [tinyint] NULL,
	[KeyContacto_HS] [int] NULL,
	[KeyContacto_S] [int] NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodCategoria] [varchar](10) NULL,
	[DescricaoCategoria] [varchar](100) NULL,
	[Alinea_A_Existente] [bit] NULL,
	[Alinea_A_VigilanciaMedica] [bit] NULL,
	[CaracterizacaoPosto] [text] NULL,
	[QualificacaoProfissional] [text] NULL,
	[NaoEmiteCTT] [bit] NULL,
	[NaoEmiteCUTT] [bit] NULL,
	[KeyContacto_HS_TT] [int] NULL,
	[KeyContacto_S_TT] [int] NULL,
	[ModSHST_SegHigiene_TT] [tinyint] NULL,
	[ModSHST_Saude_TT] [tinyint] NULL,
	[Nome_HS] [varchar](40) NULL,
	[NIF_HS] [varchar](20) NULL,
	[Tipo_HS] [tinyint] NULL,
	[Nome_S] [varchar](40) NULL,
	[NIF_S] [varchar](20) NULL,
	[Tipo_S] [tinyint] NULL,
	[Nome_HS_TT] [varchar](40) NULL,
	[NIF_HS_TT] [varchar](20) NULL,
	[Tipo_HS_TT] [tinyint] NULL,
	[Nome_S_TT] [varchar](40) NULL,
	[NIF_S_TT] [varchar](20) NULL,
	[Tipo_S_TT] [tinyint] NULL,
	[Alinea_e] [text] NULL,
 CONSTRAINT [PK_CE_SHST] PRIMARY KEY CLUSTERED 
(
	[KeyCE_SHST] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_SimuladorTMBAdc]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_SimuladorTMBAdc](
	[KeyCE_SimuladorTMBAdc] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Data] [smalldatetime] NULL,
	[CodTipo] [varchar](2) NOT NULL,
	[CodIntCE] [varchar](10) NOT NULL,
	[NomeCE] [varchar](60) NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
	[DataEstado] [smalldatetime] NULL,
	[CodTipologia] [varchar](10) NOT NULL,
	[TaxaMargemInicial] [decimal](7, 3) NOT NULL,
	[CodAreaCliente] [varchar](10) NOT NULL,
	[TaxaMargemAreaCliente] [decimal](7, 3) NOT NULL,
	[CodTipoPerfil] [varchar](10) NOT NULL,
	[TaxaMargemTipoPerfil] [decimal](7, 3) NOT NULL,
	[IsConcorrencia] [bit] NOT NULL,
	[TaxaMargemConcorrencia] [decimal](7, 3) NOT NULL,
	[IsGestaoContratos] [bit] NOT NULL,
	[TaxaMargemGestaoContratos] [decimal](7, 3) NOT NULL,
	[IsL100] [bit] NOT NULL,
	[TaxaMargemL100] [decimal](7, 3) NULL,
	[IsOutrasLinhas] [bit] NOT NULL,
	[TaxaMargemOutrasLinhas] [decimal](7, 3) NULL,
	[TaxaMargemFinal] [decimal](7, 3) NOT NULL,
	[CodEscalaoAutorizacao] [varchar](10) NOT NULL,
	[TaxaMargemSimulador] [decimal](7, 3) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[CodDirRegional] [varchar](10) NULL,
	[ValorPotencialAnoEsperado] [decimal](19, 6) NULL,
	[TaxaSF] [decimal](19, 6) NULL,
	[TaxaSN] [decimal](19, 6) NULL,
	[TaxaSFNG] [decimal](19, 6) NULL,
	[TaxaCPE] [decimal](19, 6) NULL,
	[TaxaSeguro] [decimal](19, 6) NULL,
	[TaxaSegSocial] [decimal](19, 6) NULL,
	[SubsAlimentacaoDiaIsento] [decimal](19, 6) NULL,
	[SubsAlimentacaoTicketDiaIsento] [decimal](19, 6) NULL,
	[TaxaAbsentismo] [decimal](19, 6) NULL,
	[WorkflowStatus] [tinyint] NULL,
	[WorkflowPedidoPor] [varchar](60) NULL,
	[WorkflowPedidoEm] [smalldatetime] NULL,
	[WorkflowAprovadoPor] [varchar](60) NULL,
	[WorkflowAprovadoEm] [smalldatetime] NULL,
	[WorkflowStatusPrazo] [tinyint] NULL,
	[WorkflowPedidoPrazoPor] [varchar](60) NULL,
	[WorkflowPedidoPrazoEm] [smalldatetime] NULL,
	[WorkflowAprovadoPrazoPor] [varchar](60) NULL,
	[WorkflowAprovadoPrazoEm] [smalldatetime] NULL,
	[WorkflowStatusCredito] [tinyint] NULL,
	[WorkflowPedidoCreditoPor] [varchar](60) NULL,
	[WorkflowPedidoCreditoEm] [smalldatetime] NULL,
	[WorkflowAprovadoCreditoPor] [varchar](60) NULL,
	[WorkflowAprovadoCreditoEm] [smalldatetime] NULL,
	[Segmentacao] [tinyint] NULL,
	[TaxaSF03] [decimal](19, 6) NULL,
	[TaxaSN03] [decimal](19, 6) NULL,
	[TaxaSFNG03] [decimal](19, 6) NULL,
	[TaxaCPE03] [decimal](19, 6) NULL,
	[CPEFaturarAParte] [bit] NULL,
	[CoefFeriadosSemFaturar] [decimal](19, 6) NULL,
	[TotalHoras] [decimal](19, 6) NULL,
	[TotalHorasFact] [decimal](19, 6) NULL,
	[TotalFactHora] [decimal](19, 6) NULL,
	[TotalCustoHora] [decimal](19, 6) NULL,
	[ValMensalFact] [decimal](19, 6) NULL,
	[ValMensalCusto] [decimal](19, 6) NULL,
	[ValMensalMB] [decimal](19, 6) NULL,
	[ValMensalMBPerc] [decimal](19, 6) NULL,
	[ValMensalRappel] [decimal](19, 6) NULL,
	[ResResultRHMeses] [decimal](19, 6) NULL,
	[ResResultEquiAnexosRHMeses] [decimal](19, 6) NULL,
	[ResResultEquiAdicionaisMeses] [decimal](19, 6) NULL,
	[RHProdUnidadesDia] [decimal](19, 6) NULL,
	[RHProdUnidadesMes] [decimal](19, 6) NULL,
	[RHProdUnidadesAno] [decimal](19, 6) NULL,
	[RHProdUnidadesFactPerc01] [decimal](19, 6) NULL,
	[RHProdUnidadesFactPerc02] [decimal](19, 6) NULL,
	[RHProdUnidadesFactPerc03] [decimal](19, 6) NULL,
	[RHProdUnidadesFactPerc04] [decimal](19, 6) NULL,
	[ResResultTempoNaoUtil] [decimal](19, 6) NULL,
	[TaxaIVA] [decimal](7, 3) NULL,
	[CodAreaNegocioTMB] [int] NULL,
 CONSTRAINT [PK_CE_SimuladorTMBAdc] PRIMARY KEY CLUSTERED 
(
	[KeyCE_SimuladorTMBAdc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_SimuladorTMBAdcDet]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_SimuladorTMBAdcDet](
	[KeyCE_SimuladorTMBAdcDet] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_SimuladorTMBAdc] [int] NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Funcao] [varchar](100) NOT NULL,
	[CodigoCategoria] [varchar](10) NOT NULL,
	[DescricaoCategoria] [varchar](100) NOT NULL,
	[HorasDia] [decimal](7, 3) NOT NULL,
	[DiasSemana] [decimal](7, 3) NOT NULL,
	[HorasMes] [decimal](7, 3) NOT NULL,
	[Meses] [decimal](7, 3) NOT NULL,
	[NumRH] [int] NOT NULL,
	[PrazoPagamento] [int] NOT NULL,
	[DescComercial] [decimal](7, 3) NOT NULL,
	[DatasPag] [varchar](2) NOT NULL,
	[SalBaseMensal] [decimal](19, 6) NOT NULL,
	[PremiosSubRegulares] [decimal](19, 6) NOT NULL,
	[SubIrregulares] [decimal](19, 6) NOT NULL,
	[SubAlimentacaoDia] [decimal](19, 6) NOT NULL,
	[TicketSubAlimentacaoDia] [decimal](19, 6) NOT NULL,
	[AjudasDeCustoDia] [decimal](19, 6) NOT NULL,
	[OutrosCustosMensais] [decimal](19, 6) NOT NULL,
	[CoefSalBaseMensal] [decimal](19, 6) NOT NULL,
	[CoefPremiosSubRegulares] [decimal](19, 6) NOT NULL,
	[CoefSubIrregulares] [decimal](19, 6) NOT NULL,
	[CoefSubAlimentacaoDiaIsento] [decimal](19, 6) NOT NULL,
	[CoefSubAlimentacaoDiaNIsento] [decimal](19, 6) NOT NULL,
	[CoefTicketSubAlimentacaoDiaIsento] [decimal](19, 6) NOT NULL,
	[CoefTicketSubAlimentacaoDiaNIsento] [decimal](19, 6) NOT NULL,
	[CoefAjudasDeCustoDia] [decimal](19, 6) NOT NULL,
	[CoefHorasExtra] [decimal](19, 6) NOT NULL,
	[CoefPropSF] [decimal](19, 6) NOT NULL,
	[CoefPropSN] [decimal](19, 6) NOT NULL,
	[CoefPropSFNG] [decimal](19, 6) NOT NULL,
	[CoefPropCPE] [decimal](19, 6) NOT NULL,
	[ValCustoEMEA] [decimal](19, 6) NOT NULL,
	[ValFactEMEA] [decimal](19, 6) NOT NULL,
	[ValCustoEPI] [decimal](19, 6) NOT NULL,
	[ValFactEPI] [decimal](19, 6) NOT NULL,
	[ValCustoTicket] [decimal](19, 6) NOT NULL,
	[ValFactTicket] [decimal](19, 6) NOT NULL,
	[ResPotencialAno] [decimal](19, 6) NOT NULL,
	[ResPrazoPagamento] [decimal](19, 6) NOT NULL,
	[ResMargemBrutaEsperada] [decimal](19, 6) NOT NULL,
	[ResValFacturacaoMensal] [decimal](19, 6) NOT NULL,
	[ResCreditoPotencial] [decimal](19, 6) NOT NULL,
	[ResCustoHora] [decimal](19, 6) NOT NULL,
	[ResFacturacaoHora] [decimal](19, 6) NOT NULL,
	[ResFacturacaoMesRH] [decimal](19, 6) NOT NULL,
	[ResPesoVencimentoBase] [decimal](19, 6) NOT NULL,
	[ResPesoSubAlimentacao] [decimal](19, 6) NOT NULL,
	[ResPesoPremiosSubRegulares] [decimal](19, 6) NOT NULL,
	[ResPesoSubIrregulares] [decimal](19, 6) NOT NULL,
	[ResPesoAjudasDeCusto] [decimal](19, 6) NOT NULL,
	[ResPesoOutrosCustos] [decimal](19, 6) NOT NULL,
	[ResPesoHorasExtra] [decimal](19, 6) NOT NULL,
	[ResPesoTicketSubAlimentacao] [decimal](19, 6) NOT NULL,
	[ResPesoVencimentoBase2] [decimal](19, 6) NOT NULL,
	[ResPesoSubAlimentacao2] [decimal](19, 6) NOT NULL,
	[ResPesoPremiosSubRegulares2] [decimal](19, 6) NOT NULL,
	[ResPesoSubIrregulares2] [decimal](19, 6) NOT NULL,
	[ResPesoAjudasDeCusto2] [decimal](19, 6) NOT NULL,
	[ResPesoOutrosCustos2] [decimal](19, 6) NOT NULL,
	[ResPesoHorasExtra2] [decimal](19, 6) NOT NULL,
	[ResPesoTicketSubAlimentacao2] [decimal](19, 6) NOT NULL,
	[MargemMinima] [decimal](19, 6) NOT NULL,
	[MargemSimulacao] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[OutrosViaturasPag] [decimal](19, 6) NULL,
	[OutrosViaturasFact] [decimal](19, 6) NULL,
	[OutrosCombustivelPag] [decimal](19, 6) NULL,
	[OutrosCombustivelFact] [decimal](19, 6) NULL,
	[OutrosGastosPag] [decimal](19, 6) NULL,
	[OutrosGastosFact] [decimal](19, 6) NULL,
	[OutrosTelComPag] [decimal](19, 6) NULL,
	[OutrosTelComFact] [decimal](19, 6) NULL,
	[OutrosInternetComPag] [decimal](19, 6) NULL,
	[OutrosInternetComFact] [decimal](19, 6) NULL,
	[OutrosEquipITPag] [decimal](19, 6) NULL,
	[OutrosEquipITFact] [decimal](19, 6) NULL,
	[CodTipoMissao] [int] NULL,
	[MargemHorasExtra] [decimal](7, 3) NULL,
	[NumHorasRH] [decimal](19, 6) NULL,
	[FeriadosSemFaturar] [bit] NULL,
	[TrabalhoAosFeriados] [bit] NULL,
	[HorasExtraCatCompNoturno] [decimal](19, 6) NULL,
	[HorasExtraCatFeriadoSabado] [decimal](19, 6) NULL,
	[HorasExtraProjHoraExtra2] [decimal](19, 6) NULL,
	[HorasExtraProjFeriadoSabado] [decimal](19, 6) NULL,
	[HorasExtraProjDomingo] [decimal](19, 6) NULL,
	[SemFaturarRH] [bit] NULL,
	[SemFaturarEquipamentos] [bit] NULL,
	[FeeMensalPremiosSubRegulares] [bit] NULL,
	[FeeMensalCoefSubIrregulares] [bit] NULL,
	[FeeMensalAjudasDeCusto] [bit] NULL,
	[FeeMensalViaturas] [bit] NULL,
	[FeeMensalCombustivel] [bit] NULL,
	[FeeMensalOutrosGastos] [bit] NULL,
	[FeeMensalTelCom] [bit] NULL,
	[FeeMensalInternetCom] [bit] NULL,
	[FeeMensalEquipIT] [bit] NULL,
	[ResFacturacaoMesRHEqui] [decimal](19, 6) NULL,
 CONSTRAINT [PK_CE_SimuladorTMBAdcDet] PRIMARY KEY CLUSTERED 
(
	[KeyCE_SimuladorTMBAdcDet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_SimuladorTMBAdcFormulas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_SimuladorTMBAdcFormulas](
	[KeyCE_SimuladorTMBAdcFormulas] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_SimuladorTMBAdc] [int] NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Codigo] [varchar](100) NOT NULL,
	[Grupo] [varchar](100) NOT NULL,
	[Descricao] [varchar](200) NOT NULL,
	[Formula] [varchar](4096) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_SimuladorTMBAdcFormulas] PRIMARY KEY CLUSTERED 
(
	[KeyCE_SimuladorTMBAdcFormulas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_SimuladorTMBAdcOpUnit]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_SimuladorTMBAdcOpUnit](
	[KeyCE_SimuladorTMBAdcOpUnit] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_SimuladorTMBAdc] [int] NOT NULL,
	[KeyCE] [int] NULL,
	[Operacao] [varchar](200) NULL,
	[Unidades] [decimal](19, 6) NULL,
	[Horas] [decimal](19, 6) NULL,
	[ValorCustoHora] [decimal](19, 6) NULL,
	[ValorFactHora] [decimal](19, 6) NULL,
	[Margem] [decimal](19, 6) NULL,
	[Penalizacoes] [decimal](19, 6) NULL,
	[ValorCustoTotal] [decimal](19, 6) NULL,
	[ValorFactTotal] [decimal](19, 6) NULL,
	[PrecoUnitario] [decimal](19, 6) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_SimuladorTMBAdcOpUnit] PRIMARY KEY CLUSTERED 
(
	[KeyCE_SimuladorTMBAdcOpUnit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_SimuladorTMBAdcResEquipamentos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_SimuladorTMBAdcResEquipamentos](
	[KeyCE_SimuladorTMBAdcResEquipamentos] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_SimuladorTMBAdc] [int] NULL,
	[Descricao] [varchar](100) NULL,
	[Valor] [decimal](19, 6) NULL,
	[MesesAmortizacao] [decimal](19, 6) NULL,
	[CustoMensal] [decimal](19, 6) NULL,
	[TemManutencao] [bit] NULL,
	[CustoAdicional] [decimal](19, 6) NULL,
	[AFacturarMensal] [decimal](19, 6) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_SimuladorTMBAdcResEquipamentos] PRIMARY KEY CLUSTERED 
(
	[KeyCE_SimuladorTMBAdcResEquipamentos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_SimuladorTMBAdcResumo]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_SimuladorTMBAdcResumo](
	[KeyCE_SimuladorTMBAdcResumo] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_SimuladorTMBAdc] [int] NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Codigo] [varchar](100) NOT NULL,
	[Grupo] [varchar](100) NOT NULL,
	[Descricao] [varchar](200) NOT NULL,
	[ValorCustoMensalPerc] [decimal](19, 6) NOT NULL,
	[ValorCustoMensalTotal] [decimal](19, 6) NOT NULL,
	[ValorHoraCusto] [decimal](19, 6) NOT NULL,
	[ValorHoraVenda] [decimal](19, 6) NOT NULL,
	[Coeficiente] [decimal](19, 6) NOT NULL,
	[Margem] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[KeyCE_SimuladorTMBAdcDet] [int] NULL,
 CONSTRAINT [PK_CE_SimuladorTMBAdcResumo] PRIMARY KEY CLUSTERED 
(
	[KeyCE_SimuladorTMBAdcResumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_SimuladorTMBAdcResValores]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_SimuladorTMBAdcResValores](
	[KeyCE_SimuladorTMBAdcResValores] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE_SimuladorTMBAdc] [int] NULL,
	[KeyCE_SimuladorTMBAdcDet] [int] NULL,
	[CodigoCategoria] [varchar](10) NULL,
	[DescricaoCategoria] [varchar](100) NULL,
	[HorasDia] [decimal](19, 6) NULL,
	[HorasMes] [decimal](19, 6) NULL,
	[NumRH] [decimal](19, 6) NULL,
	[CustoUnitValorRHMensal] [decimal](19, 6) NULL,
	[CustoUnitValorRHHora] [decimal](19, 6) NULL,
	[FactUnitValorRHMensal] [decimal](19, 6) NULL,
	[FactUnitValorRHHora] [decimal](19, 6) NULL,
	[CustoUnitValorEquipMensal] [decimal](19, 6) NULL,
	[FactUnitValorEquipMensal] [decimal](19, 6) NULL,
	[MBValor] [decimal](19, 6) NULL,
	[MBPercentagem] [decimal](19, 6) NULL,
	[TaxaCompNoturno] [decimal](19, 6) NULL,
	[TaxaHoraExtra1] [decimal](19, 6) NULL,
	[TaxaHoraExtra2] [decimal](19, 6) NULL,
	[TaxaFeriadoSabado] [decimal](19, 6) NULL,
	[TaxaDomigo] [decimal](19, 6) NULL,
	[ValorUnitCompNoturno] [decimal](19, 6) NULL,
	[ValorUnitHoraExtra1] [decimal](19, 6) NULL,
	[ValorUnitHoraExtra2] [decimal](19, 6) NULL,
	[ValorUnitFeriadoSabado] [decimal](19, 6) NULL,
	[ValorUnitDomigo] [decimal](19, 6) NULL,
	[CustoQTRHMensal] [decimal](19, 6) NULL,
	[CustoQTRHHora] [decimal](19, 6) NULL,
	[FactQTRHMensal] [decimal](19, 6) NULL,
	[FactQTRHHora] [decimal](19, 6) NULL,
	[CustoQTEquipMensal] [decimal](19, 6) NULL,
	[FactQTEquipMensal] [decimal](19, 6) NULL,
	[NaoFaturaRH] [bit] NULL,
	[NaoFaturaEqui] [bit] NULL,
	[ExtraCatCompNoturno] [decimal](19, 6) NULL,
	[ExtraCatFeriadoSabado] [decimal](19, 6) NULL,
	[ExtraProjHoraExtra2] [decimal](19, 6) NULL,
	[ExtraProjFeriadoSabado] [decimal](19, 6) NULL,
	[ExtraProjDomingo] [decimal](19, 6) NULL,
	[PagaFeriadosSemFaturar] [bit] NULL,
	[TrabalhaAosFeriados] [bit] NULL,
	[HorasTrabNormaisMes] [decimal](19, 6) NULL,
	[HorasTrabNormaisAno] [decimal](19, 6) NULL,
	[HorasTrabNoturnas] [decimal](19, 6) NULL,
	[HorasTrabExtraFeriado] [decimal](19, 6) NULL,
	[HorasTrabAdicional] [decimal](19, 6) NULL,
	[CustoMensalValorRHMensal] [decimal](19, 6) NULL,
	[CustoMensalValorRHHora] [decimal](19, 6) NULL,
	[FactMensalValorRHMensal] [decimal](19, 6) NULL,
	[FactMensalValorRHHora] [decimal](19, 6) NULL,
	[CustoMensalValorEquipMensal] [decimal](19, 6) NULL,
	[FactMensalValorEquipMensal] [decimal](19, 6) NULL,
	[MensalMBValor] [decimal](19, 6) NULL,
	[MensalMBPercentagem] [decimal](19, 6) NULL,
	[OutrosCatCompNoturno] [decimal](19, 6) NULL,
	[OutrosCatFeriadoSabado] [decimal](19, 6) NULL,
	[OutrosProjHoraExtra2] [decimal](19, 6) NULL,
	[OutrosProjFeriadoSabado] [decimal](19, 6) NULL,
	[OutrosProjDomingo] [decimal](19, 6) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[FeeMensalPremiosSubRegulares] [bit] NULL,
	[FeeMensalCoefSubIrregulares] [bit] NULL,
	[FeeMensalAjudasDeCusto] [bit] NULL,
	[FeeMensalViaturas] [bit] NULL,
	[FeeMensalCombustivel] [bit] NULL,
	[FeeMensalOutrosGastos] [bit] NULL,
	[FeeMensalTelCom] [bit] NULL,
	[FeeMensalInternetCom] [bit] NULL,
	[FeeMensalEquipIT] [bit] NULL,
	[PricingFactMensalValorRHMensal] [decimal](19, 6) NULL,
	[PricingFactMensalValorRHHora] [decimal](19, 6) NULL,
	[PricingFactMensalValorEquipMensal] [decimal](19, 6) NULL,
	[PricingFactMensalValorEquipHora] [decimal](19, 6) NULL,
	[PricingFactMensalValorTotalMensal] [decimal](19, 6) NULL,
	[PricingFactMensalValorTotalHora] [decimal](19, 6) NULL,
	[FeeMensalPremiosSubRegularesVal] [decimal](19, 6) NULL,
	[FeeMensalCoefSubIrregularesVal] [decimal](19, 6) NULL,
	[FeeMensalAjudasDeCustoVal] [decimal](19, 6) NULL,
	[FeeMensalViaturasVal] [decimal](19, 6) NULL,
	[FeeMensalCombustivelVal] [decimal](19, 6) NULL,
	[FeeMensalOutrosGastosVal] [decimal](19, 6) NULL,
	[FeeMensalTelComVal] [decimal](19, 6) NULL,
	[FeeMensalInternetComVal] [decimal](19, 6) NULL,
	[FeeMensalEquipITVal] [decimal](19, 6) NULL,
 CONSTRAINT [PK_CE_SimuladorTMBAdcResValores] PRIMARY KEY CLUSTERED 
(
	[KeyCE_SimuladorTMBAdcResValores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_Size]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_Size](
	[KeyCE_Size] [int] IDENTITY(1,1) NOT NULL,
	[LimiteInferior] [smallint] NOT NULL,
	[LimiteSuperior] [smallint] NOT NULL,
	[Descricao] [varchar](30) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CE_Size] PRIMARY KEY CLUSTERED 
(
	[LimiteInferior] ASC,
	[LimiteSuperior] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CE_SubContas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CE_SubContas](
	[KeySubconta] [int] IDENTITY(1,1) NOT NULL,
	[CodSubConta] [varchar](15) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[Descricao] [varchar](80) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[IsInactivo] [bit] NULL,
 CONSTRAINT [PK_CE_SubContas] PRIMARY KEY CLUSTERED 
(
	[KeySubconta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CECorrespondencia]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CECorrespondencia](
	[KeyCECorrespondencia] [int] IDENTITY(1,1) NOT NULL,
	[KeyRelacionada] [int] NULL,
	[KeyCE] [int] NOT NULL,
	[Tabela] [varchar](100) NOT NULL,
	[Tipo] [tinyint] NULL,
	[DataCorrespondencia] [smalldatetime] NOT NULL,
	[Observacoes] [varchar](500) NULL,
	[NumeroDocumento] [int] NULL,
	[DataDocumento] [smalldatetime] NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CECorrespondencia] PRIMARY KEY CLUSTERED 
(
	[KeyCECorrespondencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CentroCusto]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CentroCusto](
	[KeyCCusto] [int] IDENTITY(1,1) NOT NULL,
	[CodCentroCusto] [varchar](15) NULL,
	[DescricaoCCusto] [varchar](40) NULL,
	[Tipo] [varchar](12) NULL,
	[Data] [smalldatetime] NULL,
	[User] [varchar](6) NULL,
	[MCR0] [float] NULL,
	[MCR1] [float] NULL,
	[MCR2] [float] NULL,
	[MCR3] [float] NULL,
	[MCR4] [float] NULL,
	[MCR5] [float] NULL,
	[MCR6] [float] NULL,
	[MCR7] [float] NULL,
	[MCR8] [float] NULL,
	[MCR9] [float] NULL,
	[MCR10] [float] NULL,
	[MCR11] [float] NULL,
	[MCR12] [float] NULL,
	[MCR13] [float] NULL,
	[MCR14] [float] NULL,
	[MCR15] [float] NULL,
	[MDB0] [float] NULL,
	[MDB1] [float] NULL,
	[MDB2] [float] NULL,
	[MDB3] [float] NULL,
	[MDB4] [float] NULL,
	[MDB5] [float] NULL,
	[MDB6] [float] NULL,
	[MDB7] [float] NULL,
	[MDB8] [float] NULL,
	[MDB9] [float] NULL,
	[MDB10] [float] NULL,
	[MDB11] [float] NULL,
	[MDB12] [float] NULL,
	[MDB13] [float] NULL,
	[MDB14] [float] NULL,
	[MDB15] [float] NULL,
	[MCR0_BM] [float] NULL,
	[MCR1_BM] [float] NULL,
	[MCR2_BM] [float] NULL,
	[MCR3_BM] [float] NULL,
	[MCR4_BM] [float] NULL,
	[MCR5_BM] [float] NULL,
	[MCR6_BM] [float] NULL,
	[MCR7_BM] [float] NULL,
	[MCR8_BM] [float] NULL,
	[MCR9_BM] [float] NULL,
	[MCR10_BM] [float] NULL,
	[MCR11_BM] [float] NULL,
	[MCR12_BM] [float] NULL,
	[MCR13_BM] [float] NULL,
	[MCR14_BM] [float] NULL,
	[MCR15_BM] [float] NULL,
	[MDB0_BM] [float] NULL,
	[MDB1_BM] [float] NULL,
	[MDB2_BM] [float] NULL,
	[MDB3_BM] [float] NULL,
	[MDB4_BM] [float] NULL,
	[MDB5_BM] [float] NULL,
	[MDB6_BM] [float] NULL,
	[MDB7_BM] [float] NULL,
	[MDB8_BM] [float] NULL,
	[MDB9_BM] [float] NULL,
	[MDB10_BM] [float] NULL,
	[MDB11_BM] [float] NULL,
	[MDB12_BM] [float] NULL,
	[MDB13_BM] [float] NULL,
	[MDB14_BM] [float] NULL,
	[MDB15_BM] [float] NULL,
	[PrefixoAnalitica] [nvarchar](22) NULL,
	[Activo] [bit] NULL,
	[CriadoEm] [datetime] NULL,
	[CriadoPor] [varchar](15) NULL,
	[AlteradoEm] [datetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[IsSazonal] [bit] NULL,
	[DataInicio] [datetime] NULL,
	[DataFim] [datetime] NULL,
	[CodCentroCustoGrupo] [varchar](4) NULL,
 CONSTRAINT [PK_CentroCusto01] PRIMARY KEY CLUSTERED 
(
	[KeyCCusto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CentroCustoGrupos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CentroCustoGrupos](
	[KeyCentroCustoGrupo] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](4) NOT NULL,
	[Descricao] [varchar](40) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CentroCustoGrupos] PRIMARY KEY CLUSTERED 
(
	[KeyCentroCustoGrupo] ASC,
	[Descricao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CfgLabels]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CfgLabels](
	[KeyCfgLabels] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](20) NULL,
	[L_Altura] [real] NULL,
	[L_Largura] [real] NULL,
	[L_MargemTopo] [real] NULL,
	[L_MargemEsquerda] [real] NULL,
	[L_IntervaloV] [real] NULL,
	[L_IntervaloH] [real] NULL,
	[L_ImprimirGuias] [real] NULL,
	[L_Horizontal] [real] NULL,
	[L_Visualizar] [real] NULL,
	[C01_TipoTexto] [varchar](20) NULL,
	[C01_Cor] [varchar](15) NULL,
	[C01_Tamanho] [real] NULL,
	[C01_Bold] [int] NULL,
	[C01_Italico] [int] NULL,
	[C01_Topo] [real] NULL,
	[C01_Esquerda] [real] NULL,
	[C01_Direita] [real] NULL,
	[C02_TipoTexto] [varchar](20) NULL,
	[C02_Cor] [varchar](15) NULL,
	[C02_Tamanho] [real] NULL,
	[C02_Bold] [int] NULL,
	[C02_Italico] [int] NULL,
	[C02_Topo] [real] NULL,
	[C02_Esquerda] [real] NULL,
	[C02_Direita] [real] NULL,
	[C03_TipoTexto] [varchar](20) NULL,
	[C03_Cor] [varchar](15) NULL,
	[C03_Tamanho] [real] NULL,
	[C03_Bold] [int] NULL,
	[C03_Italico] [int] NULL,
	[C03_Topo] [real] NULL,
	[C03_Esquerda] [real] NULL,
	[C03_Direita] [real] NULL,
	[C04_TipoTexto] [varchar](20) NULL,
	[C04_Cor] [varchar](15) NULL,
	[C04_Tamanho] [real] NULL,
	[C04_Bold] [int] NULL,
	[C04_Italico] [int] NULL,
	[C04_Topo] [real] NULL,
	[C04_Esquerda] [real] NULL,
	[C04_Direita] [real] NULL,
	[C05_TipoTexto] [varchar](20) NULL,
	[C05_Cor] [varchar](15) NULL,
	[C05_Tamanho] [real] NULL,
	[C05_Bold] [int] NULL,
	[C05_Italico] [int] NULL,
	[C05_Topo] [real] NULL,
	[C05_Esquerda] [real] NULL,
	[C05_Direita] [real] NULL,
	[C06_TipoTexto] [varchar](20) NULL,
	[C06_Cor] [varchar](15) NULL,
	[C06_Tamanho] [real] NULL,
	[C06_Bold] [int] NULL,
	[C06_Italico] [int] NULL,
	[C06_Topo] [real] NULL,
	[C06_Esquerda] [real] NULL,
	[C06_Direita] [real] NULL,
	[C07_TipoTexto] [varchar](20) NULL,
	[C07_Cor] [varchar](15) NULL,
	[C07_Tamanho] [real] NULL,
	[C07_Bold] [int] NULL,
	[C07_Italico] [int] NULL,
	[C07_Topo] [real] NULL,
	[C07_Esquerda] [real] NULL,
	[C07_Direita] [real] NULL,
	[C08_TipoTexto] [varchar](20) NULL,
	[C08_Cor] [varchar](15) NULL,
	[C08_Tamanho] [real] NULL,
	[C08_Bold] [int] NULL,
	[C08_Italico] [int] NULL,
	[C08_Topo] [real] NULL,
	[C08_Esquerda] [real] NULL,
	[C08_Direita] [real] NULL,
	[C09_TipoTexto] [varchar](20) NULL,
	[C09_Cor] [varchar](15) NULL,
	[C09_Tamanho] [real] NULL,
	[C09_Bold] [int] NULL,
	[C09_Italico] [int] NULL,
	[C09_Topo] [real] NULL,
	[C09_Esquerda] [real] NULL,
	[C09_Direita] [real] NULL,
	[C10_TipoTexto] [varchar](20) NULL,
	[C10_Cor] [varchar](15) NULL,
	[C10_Tamanho] [real] NULL,
	[C10_Bold] [int] NULL,
	[C10_Italico] [int] NULL,
	[C10_Topo] [real] NULL,
	[C10_Esquerda] [real] NULL,
	[C10_Direita] [real] NULL,
	[S_Pagina] [decimal](19, 0) NULL,
 CONSTRAINT [PK_CfgLabels] PRIMARY KEY CLUSTERED 
(
	[KeyCfgLabels] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClassEmpRub]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClassEmpRub](
	[KeyClassEmpRub] [int] IDENTITY(1,1) NOT NULL,
	[CodClassificacao] [varchar](5) NULL,
	[DescricaoClass] [varchar](30) NULL,
	[TipoClass] [bit] NULL,
	[RubCliente] [varchar](15) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyClassEmpRub] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClassificacaoMeiosPag]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClassificacaoMeiosPag](
	[KeyClassificacaoMeiosPag] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](2) NOT NULL,
	[Descricao] [varchar](100) NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Valor] [tinyint] NULL,
 CONSTRAINT [PK_ClassificacaoMeiosPag] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClientesRappelCPE]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClientesRappelCPE](
	[KeyClientesRappelCPE] [int] IDENTITY(1,1) NOT NULL,
	[Ano] [smallint] NULL,
	[Mes] [smallint] NULL,
	[NumContCE] [varchar](18) NULL,
	[NomeCE] [varchar](60) NULL,
	[Rappel] [decimal](19, 6) NULL,
	[CPE] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyClientesRappelCPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CmpsPesquisa]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CmpsPesquisa](
	[KeyCodPesquisa] [int] IDENTITY(1,1) NOT NULL,
	[NomeForm] [varchar](25) NULL,
	[DesignacaoCampo] [varchar](50) NULL,
	[NomeCampo] [varchar](50) NULL,
	[TipoCampo] [varchar](50) NULL,
	[MaxNumCar] [varchar](5) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CmpsPesquisa] PRIMARY KEY CLUSTERED 
(
	[KeyCodPesquisa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cobrancas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cobrancas](
	[KeyCobrancas] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[DataRegisto] [smalldatetime] NOT NULL,
	[HoraRegisto] [varchar](5) NOT NULL,
	[Consultor] [varchar](30) NOT NULL,
	[DataProxContacto] [smalldatetime] NULL,
	[HoraProxContacto] [varchar](5) NOT NULL,
	[Notas] [text] NOT NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_Cobrancas] PRIMARY KEY CLUSTERED 
(
	[KeyCobrancas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CobrancasFacturas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CobrancasFacturas](
	[KeyCobrancasFacturas] [int] IDENTITY(1,1) NOT NULL,
	[KeyCobrancas] [int] NOT NULL,
	[KeyFacturaCAB] [int] NOT NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[TotalDoc_BM] [decimal](19, 6) NULL,
	[TotalJaRegularizado_BM] [decimal](19, 6) NULL,
	[TotalPendente_BM] [decimal](19, 6) NULL,
 CONSTRAINT [PK_CobrancasFacturas] PRIMARY KEY CLUSTERED 
(
	[KeyCobrancas] ASC,
	[KeyFacturaCAB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CodigoPostal]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CodigoPostal](
	[CodPostal] [varchar](8) NULL,
	[Localidade] [varchar](40) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Concelhos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Concelhos](
	[KeyConc] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoConc] [varchar](40) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodigoConcelho] [nvarchar](5) NULL,
 CONSTRAINT [PK_Concelhos] PRIMARY KEY CLUSTERED 
(
	[KeyConc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigAbonos_Tarifas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigAbonos_Tarifas](
	[KeyConfigAbonos_Tarifas] [int] IDENTITY(1,1) NOT NULL,
	[CodAbono] [varchar](5) NOT NULL,
	[DescricaoAbono] [varchar](40) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Imprimir] [bit] NULL,
 CONSTRAINT [PK_ConfigAbonos_Tarifas] PRIMARY KEY CLUSTERED 
(
	[KeyConfigAbonos_Tarifas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigACT]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigACT](
	[KeyConfigACT] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Descricao] [varchar](50) NULL,
	[TipoRemetente] [tinyint] NULL,
	[Remetente] [varchar](128) NULL,
	[Destinatario] [varchar](128) NULL,
	[CC] [varchar](128) NULL,
	[BCC] [varchar](128) NULL,
	[Assunto] [varchar](50) NULL,
	[Modelo] [varchar](128) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[TipoComunicado] [smallint] NULL,
 CONSTRAINT [PK_ConfigACT] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigAdendasContracto]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigAdendasContracto](
	[KeyConfigAdendasContracto] [int] IDENTITY(1,1) NOT NULL,
	[Motivo] [smallint] NOT NULL,
	[SubMotivo] [varchar](2) NOT NULL,
	[Descricao] [varchar](128) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[PorDefeitoHorario] [bit] NULL,
 CONSTRAINT [PK_ConfigAdendasContracto] PRIMARY KEY CLUSTERED 
(
	[KeyConfigAdendasContracto] ASC,
	[SubMotivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigContractosOutrosDocs]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigContractosOutrosDocs](
	[KeyConfigContractosOutrosDocs] [int] IDENTITY(1,1) NOT NULL,
	[ReportName] [varchar](60) NOT NULL,
	[Descricao] [varchar](128) NULL,
	[Activo] [bit] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ConfigContractosOutrosDocs] PRIMARY KEY CLUSTERED 
(
	[KeyConfigContractosOutrosDocs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigDeclRend]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigDeclRend](
	[KeyConfigDeclRend] [int] IDENTITY(1,1) NOT NULL,
	[CodRubrica] [varchar](5) NOT NULL,
	[TipoRubrica] [varchar](5) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigDescJudiciais]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigDescJudiciais](
	[KeyConfigDescJudiciais] [int] IDENTITY(1,1) NOT NULL,
	[CodRubrica] [varchar](5) NOT NULL,
	[TipoRubrica] [varchar](1) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_ConfigDescJudiciais] PRIMARY KEY CLUSTERED 
(
	[CodRubrica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigDivCli]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigDivCli](
	[KeyConfigDivCli] [int] IDENTITY(1,1) NOT NULL,
	[LimiteInferior] [smallint] NULL,
	[LimiteSuperior] [smallint] NULL,
	[Descricao] [varchar](30) NULL,
	[NAV] [tinyint] NULL,
	[DiaParaPagamento] [tinyint] NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[ReportTemplate] [varchar](128) NULL,
	[KeyMailTemplate] [int] NULL,
 CONSTRAINT [PK_ConfigDivCli] PRIMARY KEY CLUSTERED 
(
	[KeyConfigDivCli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigEstruturaMercado]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigEstruturaMercado](
	[KeyConfigEstruturaMercado] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Descricao] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_ConfigEstruturaMercado] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigEstruturaMercadoCOL]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigEstruturaMercadoCOL](
	[KeyConfigEstruturaMercadoCOL] [int] IDENTITY(1,1) NOT NULL,
	[KeyConfigEstruturaMercado] [int] NOT NULL,
	[ColumnName] [varchar](25) NOT NULL,
	[ColumnDatatype] [int] NOT NULL,
	[ColumnIndex] [smallint] NOT NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_ConfigEstruturaMercadoCOL] PRIMARY KEY CLUSTERED 
(
	[KeyConfigEstruturaMercado] ASC,
	[ColumnName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigEstruturaMercadoROW]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigEstruturaMercadoROW](
	[KeyConfigEstruturaMercadoROW] [int] IDENTITY(1,1) NOT NULL,
	[KeyConfigEstruturaMercado] [int] NOT NULL,
	[RowName] [varchar](25) NOT NULL,
	[RowIndex] [smallint] NOT NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigExpCTW]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigExpCTW](
	[KeyConfigExpCTW] [int] IDENTITY(1,1) NOT NULL,
	[TipoExportacao] [varchar](3) NOT NULL,
	[SortCode] [varchar](10) NOT NULL,
	[Parametro] [varchar](50) NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
	[Valor] [varchar](128) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_ConfigExpCTW] PRIMARY KEY CLUSTERED 
(
	[TipoExportacao] ASC,
	[SortCode] ASC,
	[Parametro] ASC,
	[Descricao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigExpCtwSalRectSS]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigExpCtwSalRectSS](
	[KeyConfigExpCtwSalRectSS] [int] IDENTITY(1,1) NOT NULL,
	[CodAbono] [varchar](5) NOT NULL,
	[GrupoProp] [varchar](5) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ConfigExpCtwSalRectSS] PRIMARY KEY CLUSTERED 
(
	[KeyConfigExpCtwSalRectSS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigFlexCube]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigFlexCube](
	[KeyConfigFlexCube] [int] IDENTITY(1,1) NOT NULL,
	[BranchCode] [nvarchar](3) NULL,
	[IFileRef] [int] NULL,
	[ProcessCode] [nvarchar](4) NULL,
	[SourceCode] [nvarchar](15) NULL,
	[CurrencyCode] [nvarchar](3) NULL,
	[Transct01] [int] NULL,
	[Transct02] [int] NULL,
	[RelCustomerNo] [nvarchar](9) NULL,
	[ExpenseOUC] [nvarchar](9) NULL,
	[Utilizador] [nvarchar](6) NULL,
	[Data] [datetime] NULL,
	[FilePrefix] [varchar](2) NULL,
	[Description1] [varchar](20) NULL,
	[Description2] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyConfigFlexCube] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigLiquidacoesAuto]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigLiquidacoesAuto](
	[KeyConfigLiquidacoesAuto] [int] IDENTITY(1,1) NOT NULL,
	[CodTipoDoc] [varchar](3) NOT NULL,
	[TipoDoc] [varchar](5) NOT NULL,
	[SerieDoc] [varchar](10) NOT NULL,
	[TipoRec] [varchar](5) NOT NULL,
	[SerieRec] [varchar](10) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ConfigLiquidacoesAuto] PRIMARY KEY CLUSTERED 
(
	[CodTipoDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigMapImportFicheiroPTNormal]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigMapImportFicheiroPTNormal](
	[KeyConfigMapImportFicheiroPTNormal] [int] IDENTITY(1,1) NOT NULL,
	[ColumnFromExcel] [varchar](128) NOT NULL,
	[RubricaToMapG3T] [varchar](5) NOT NULL,
	[RubricaToMapG3TDescricao] [varchar](60) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Modelo] [varchar](60) NULL,
 CONSTRAINT [PK_ConfigMapImportFicheiroPTNormal] PRIMARY KEY CLUSTERED 
(
	[KeyConfigMapImportFicheiroPTNormal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigMargemBruta]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigMargemBruta](
	[KeyConfigMargemBruta] [int] IDENTITY(1,1) NOT NULL,
	[CodCCFact] [varchar](15) NOT NULL,
	[CodCCVenc] [varchar](15) NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ConfigMargemBruta] PRIMARY KEY CLUSTERED 
(
	[CodCCFact] ASC,
	[CodCCVenc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigMinutasContracto]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigMinutasContracto](
	[KeyConfigMinutaContracto] [int] IDENTITY(1,1) NOT NULL,
	[TipoContracto] [smallint] NOT NULL,
	[TipoMinuta] [smallint] NOT NULL,
	[CodMinuta] [varchar](15) NOT NULL,
	[Descricao] [varchar](128) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ConfigMinutasContracto] PRIMARY KEY CLUSTERED 
(
	[KeyConfigMinutaContracto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigRelogioPonto]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigRelogioPonto](
	[KeyRelogioPonto] [int] IDENTITY(1,1) NOT NULL,
	[Formato] [tinyint] NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[CodRubrica] [varchar](5) NOT NULL,
	[Operacao] [tinyint] NOT NULL,
	[Tipo] [tinyint] NOT NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_ConfigRelogioPonto] PRIMARY KEY CLUSTERED 
(
	[KeyRelogioPonto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ConfigSegSoc]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigSegSoc](
	[KeyConfigSegSoc] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Descricao] [varchar](50) NULL,
	[TipoRemetente] [tinyint] NULL,
	[Remetente] [varchar](128) NULL,
	[Destinatario] [varchar](128) NULL,
	[CC] [varchar](128) NULL,
	[BCC] [varchar](128) NULL,
	[Assunto] [varchar](50) NULL,
	[Modelo] [varchar](128) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[TipoComunicado] [smallint] NULL,
 CONSTRAINT [PK_ConfigSegSoc] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContabMovimentosSal]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContabMovimentosSal](
	[KeyContabMovimentosSal] [int] IDENTITY(1,1) NOT NULL,
	[RecordHashCode] [varchar](128) NULL,
	[MesAno] [varchar](7) NULL,
	[KeyCE] [int] NOT NULL,
	[CodIntCE] [varchar](10) NULL,
	[NomeCE] [varchar](60) NULL,
	[NumContCE] [varchar](20) NULL,
	[KeyProjecto] [int] NOT NULL,
	[CodProjecto] [varchar](10) NULL,
	[CodProjectoPRI] [varchar](40) NULL,
	[CDU_IdEstrutura] [varchar](40) NULL,
	[CDU_DescrEstrutura] [varchar](40) NULL,
	[CDU_IdLinNegPT] [varchar](40) NULL,
	[CDU_DescricaoLNPT] [varchar](40) NULL,
	[CDU_IdLinNegMPG] [varchar](40) NULL,
	[CDU_DescricaoLNMPG] [varchar](40) NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[CodIntF] [varchar](10) NULL,
	[NomeCF] [varchar](60) NULL,
	[NumContF] [varchar](20) NULL,
	[TipoDoc] [varchar](10) NULL,
	[DtDoc] [datetime] NULL,
	[Descricao] [varchar](50) NULL,
	[CodRubrica] [varchar](6) NULL,
	[DescRubrica] [varchar](40) NULL,
	[TipoRubrica] [int] NULL,
	[Conta] [varchar](22) NULL,
	[CC] [varchar](15) NULL,
	[Debito] [decimal](19, 6) NULL,
	[Credito] [decimal](19, 6) NULL,
	[Tipo] [varchar](1) NULL,
	[PodeImportar] [int] NULL,
	[KeysRegistos] [varchar](1) NULL,
	[ContabPor] [varchar](25) NULL,
	[ContabEm] [smalldatetime] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ContabMovimentosSal] PRIMARY KEY CLUSTERED 
(
	[KeyContabMovimentosSal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactosAreas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactosAreas](
	[KeyContactosAreas] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Descricao] [varchar](50) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[ParaCobrancas] [bit] NULL,
 CONSTRAINT [PK_ContactosAreas] PRIMARY KEY CLUSTERED 
(
	[KeyContactosAreas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactosSegSoc]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactosSegSoc](
	[KeyContactosSegSoc] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](8) NOT NULL,
	[Descricao] [varchar](65) NOT NULL,
	[Morada] [varchar](60) NOT NULL,
	[Localidade] [varchar](40) NOT NULL,
	[CodigoPostal] [varchar](40) NOT NULL,
	[Telefone] [varchar](20) NOT NULL,
	[Fax] [varchar](20) NOT NULL,
	[Email] [varchar](128) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ContactosSegSoc] PRIMARY KEY CLUSTERED 
(
	[KeyContactosSegSoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactosSHST]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactosSHST](
	[KeyContactosSHST] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](8) NOT NULL,
	[Nome] [varchar](40) NULL,
	[Morada] [varchar](60) NULL,
	[Localidade] [varchar](40) NULL,
	[CodigoPostal] [varchar](40) NULL,
	[Telefone] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Email] [varchar](128) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[NIF] [varchar](20) NULL,
	[Tipo] [tinyint] NULL,
	[DispEmExames] [bit] NULL,
	[Contacto] [varchar](40) NULL,
	[Telemovel] [varchar](20) NULL,
 CONSTRAINT [PK_ContactosSHST] PRIMARY KEY CLUSTERED 
(
	[KeyContactosSHST] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContactosSHST_LocaisExameMedico]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContactosSHST_LocaisExameMedico](
	[KeyContactosSHST_LocaisExameMedico] [int] IDENTITY(1,1) NOT NULL,
	[KeyContactosSHST] [int] NOT NULL,
	[KeyLocalExameMedico] [int] NOT NULL,
	[Contacto] [varchar](40) NOT NULL,
	[Telefone] [varchar](20) NOT NULL,
	[Telemovel] [varchar](20) NOT NULL,
	[Fax] [varchar](20) NOT NULL,
	[Email] [varchar](128) NOT NULL,
	[ValorCusto] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Morada] [varchar](60) NULL,
	[Localidade] [varchar](40) NULL,
	[CodPostal] [varchar](8) NULL,
	[LocalidadePostal] [varchar](60) NULL,
 CONSTRAINT [PK_ContactosSHST_LocaisExameMedico] PRIMARY KEY CLUSTERED 
(
	[KeyContactosSHST_LocaisExameMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contadores]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contadores](
	[keycontadores] [int] IDENTITY(1,1) NOT NULL,
	[Tabela] [varchar](25) NOT NULL,
	[Descricao] [varchar](50) NULL,
	[Contador] [decimal](19, 6) NULL,
	[H_V_DGCI] [varchar](3) NULL,
 CONSTRAINT [PK_Contadores] PRIMARY KEY CLUSTERED 
(
	[Tabela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contracto_Formacao]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contracto_Formacao](
	[KeyContracto_Formacao] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[Formacao] [varchar](60) NULL,
	[EntidadeFormadora] [varchar](2) NULL,
	[IniciativaFormacacao] [varchar](2) NULL,
	[DuracaoAccaoHoras] [int] NOT NULL,
	[Metodologia] [varchar](40) NULL,
	[Resultado] [varchar](2) NULL,
	[Responsavel] [varchar](60) NULL,
	[DataFormacao] [smalldatetime] NULL,
	[SituacaoFormacaoProf] [varchar](2) NULL,
	[PerRefFormacao] [varchar](2) NULL,
	[PerRefFormacao_2] [varchar](2) NULL,
	[PerRefFormacao_3] [varchar](2) NULL,
	[PerRefFormacao_4] [varchar](2) NULL,
	[AreaEducacao] [varchar](3) NULL,
	[Desc_Area_Educacao] [varchar](150) NULL,
	[Modalidade] [varchar](2) NULL,
	[Iniciativa] [varchar](2) NULL,
	[DuracaoHoras] [int] NOT NULL,
	[Horario] [varchar](2) NULL,
	[Entidade] [varchar](2) NULL,
	[Tipo_Cert_Diploma] [varchar](2) NULL,
	[NivelQualificacao] [varchar](2) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[DtFimForm] [smalldatetime] NULL,
	[DtDuracaoHoras] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contractos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contractos](
	[KeyContracto] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[KeyCE] [int] NULL,
	[KeyHorarioCE] [int] NULL,
	[KeyTarifasEntidades] [int] NULL,
	[KeyProposta] [int] NULL,
	[KeyPedido] [int] NULL,
	[KeyPedidoCat] [int] NULL,
	[KeyPedidoRH] [int] NULL,
	[CodContracto] [varchar](10) NULL,
	[CodIntF] [varchar](10) NULL,
	[NomeCF] [varchar](60) NULL,
	[CodIntCE] [varchar](10) NULL,
	[NomeCE] [varchar](60) NULL,
	[Documento] [varchar](50) NULL,
	[LocalTrabalho] [varchar](30) NULL,
	[MotRecurso] [text] NULL,
	[Duracao] [smallint] NULL,
	[Categoria] [varchar](100) NULL,
	[EquiProt] [varchar](60) NULL,
	[FormatoUtil] [varchar](15) NULL,
	[FactMensal] [decimal](19, 6) NULL,
	[FactMensal_BM] [decimal](19, 6) NULL,
	[FactNumHMes] [decimal](19, 6) NULL,
	[FactValHora] [decimal](19, 6) NULL,
	[FactValHora_BM] [decimal](19, 6) NULL,
	[IVA] [decimal](19, 6) NULL,
	[PrazoPag] [varchar](15) NULL,
	[ModoPag] [varchar](25) NULL,
	[RegTempo] [varchar](15) NULL,
	[TipoContracto] [varchar](15) NULL,
	[PerExp] [smallint] NULL,
	[Horario] [text] NULL,
	[NotasUtil] [text] NULL,
	[NotasTrab] [text] NULL,
	[SalMensal] [decimal](19, 6) NULL,
	[SalMensal_BM] [decimal](19, 6) NULL,
	[HorasMes] [decimal](19, 6) NULL,
	[CargaHS] [decimal](19, 6) NULL,
	[SAlmoco] [decimal](19, 6) NULL,
	[SAlmoco_BM] [decimal](19, 6) NULL,
	[SAlmocoFacturar] [decimal](19, 6) NULL,
	[SAlmocoFacturar_BM] [decimal](19, 6) NULL,
	[ValorHoraPagar] [decimal](19, 6) NULL,
	[ValorHoraPagar_BM] [decimal](19, 6) NULL,
	[FormatoTrab] [varchar](15) NULL,
	[DtInicioCont] [smalldatetime] NULL,
	[DtFimCont] [smalldatetime] NULL,
	[MotivoSaida] [smallint] NULL,
	[ContractoActivo] [bit] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[FACT_FIXO] [bit] NULL,
	[SAL_30DIAS] [bit] NULL,
	[ComRenovacaoAuto] [bit] NULL,
	[CentroCusto] [varchar](15) NULL,
	[CodAgencia] [varchar](3) NULL,
	[CodArea] [varchar](2) NULL,
	[KeyTE_CatFun] [int] NULL,
	[DTADENDA] [smalldatetime] NULL,
	[REFINT] [varchar](10) NULL,
	[Trabestrang] [bit] NULL,
	[SUBCENTRO] [varchar](15) NULL,
	[IndicaMoeda] [bit] NULL,
	[Representante] [varchar](50) NULL,
	[Especificacao] [text] NULL,
	[Funcao] [text] NULL,
	[DPGT] [tinyint] NULL,
	[NADENDA] [tinyint] NULL,
	[CPE_Parcial] [bit] NULL,
	[CTT] [bit] NULL,
	[CUTT] [bit] NULL,
	[SF_Parcial] [bit] NULL,
	[SFNG_Parcial] [bit] NULL,
	[SN_Parcial] [bit] NULL,
	[CodInt] [varchar](15) NULL,
	[RCTT] [bit] NULL,
	[RCUTT] [bit] NULL,
	[MPSF] [smallint] NULL,
	[MPSN] [smallint] NULL,
	[MPFN] [smallint] NULL,
	[MPCPE] [smallint] NULL,
	[PeriodRenov] [varchar](4) NULL,
	[NumOrdem] [varchar](20) NULL,
	[DtMudarLocalTrabalho] [smalldatetime] NULL,
	[CodigoArquivo] [varchar](14) NULL,
	[PeriodRenovInicial] [smalldatetime] NULL,
	[PeriodRenovFim] [smalldatetime] NULL,
	[ComplCateg] [varchar](180) NULL,
	[Dt1FimCont] [smalldatetime] NULL,
	[CUTEEM] [smalldatetime] NULL,
	[CUTREM] [smalldatetime] NULL,
	[CTTEEM] [smalldatetime] NULL,
	[CTTREM] [smalldatetime] NULL,
	[DtAntFimCont] [smalldatetime] NULL,
	[DtFimContUtil] [smalldatetime] NULL,
	[PropFaltasSF] [bit] NULL,
	[PropFaltasSN] [bit] NULL,
	[PropFaltasSFNG] [bit] NULL,
	[MeioPagTrab] [varchar](25) NULL,
	[CodCategoria] [varchar](8) NULL,
	[TxIVA] [decimal](19, 6) NULL,
	[EIDICT] [bit] NULL,
	[IDICTEM] [smalldatetime] NULL,
	[Consultor] [varchar](30) NULL,
	[Morada] [varchar](100) NULL,
	[Localidade] [varchar](40) NULL,
	[CP] [varchar](8) NULL,
	[LCP] [varchar](40) NULL,
	[TipoAdenda] [tinyint] NULL,
	[IRCT] [varchar](5) NULL,
	[CodProf] [varchar](6) NULL,
	[IsentoIS] [bit] NULL,
	[VHFSemCPE] [bit] NULL,
	[CoefCPE] [decimal](19, 6) NULL,
	[ExpDoc] [tinyint] NULL,
	[CodNacProf] [varchar](10) NULL,
	[CodDelegIDICT] [varchar](8) NULL,
	[PropFaltasCPE] [bit] NULL,
	[DtTabSalarial] [smalldatetime] NULL,
	[DecretoLei] [varchar](15) NULL,
	[Mod101Entregue] [bit] NULL,
	[Mod101Recepcionado] [bit] NULL,
	[DtMod101Entregue] [smalldatetime] NULL,
	[DtMod101Recepcionado] [smalldatetime] NULL,
	[TaxaSF] [decimal](7, 3) NULL,
	[TaxaSN] [decimal](7, 3) NULL,
	[TaxaSFNG] [decimal](7, 3) NULL,
	[TaxaCPE] [decimal](7, 3) NULL,
	[TaxaCPE_M6] [decimal](7, 3) NULL,
	[NGuia_CTT] [varchar](20) NULL,
	[NGuia_CUT] [varchar](20) NULL,
	[SalMensalRef] [decimal](19, 6) NULL,
	[NotasFH] [varchar](1024) NULL,
	[PortalPublicar] [bit] NULL,
	[VHFSemSFNG] [bit] NULL,
	[CoefSFNG] [decimal](19, 6) NULL,
	[MotRecursoAlinea] [varchar](5) NULL,
	[DtIniContUtil] [smalldatetime] NULL,
	[MotRecursoArtigo] [varchar](10) NULL,
	[CodDuracaoTempoTrab] [tinyint] NULL,
	[CodOrgTempoTrab] [tinyint] NULL,
	[CodPaisDestacamento] [varchar](2) NULL,
	[NumeroProcesso] [varchar](20) NULL,
	[VHFSemSF] [bit] NULL,
	[CoefSF] [decimal](19, 6) NULL,
	[VHFSemSN] [bit] NULL,
	[CoefSN] [decimal](19, 6) NULL,
	[CodAplicIRCT] [varchar](2) NULL,
	[DtFimContPrevCli] [smalldatetime] NULL,
	[VHFFaltas] [bit] NULL,
	[CoefFaltas] [decimal](19, 6) NULL,
	[ValorHoraFactFaltas] [decimal](19, 6) NULL,
	[DescSobreTaxaSN] [bit] NULL,
	[DtInicioE101] [smalldatetime] NULL,
	[DtFimE101] [smalldatetime] NULL,
	[NaoEmiteCTT] [bit] NULL,
	[NaoEmiteCUTT] [bit] NULL,
	[TipoFacturacao] [tinyint] NULL,
	[CodTabPreFactRec] [varchar](5) NULL,
	[SubRef_RecPorCartao] [bit] NULL,
	[CDU_IdEstrutura] [varchar](20) NULL,
	[CDU_IdLinNegMPG] [varchar](20) NULL,
	[CDU_IdLinNegPT] [varchar](20) NULL,
	[CodDatasProcessamento] [varchar](3) NULL,
	[KeyCE_Projecto] [int] NULL,
	[ValorPendenteSF] [decimal](19, 6) NULL,
	[ValorPendenteSFNG] [decimal](19, 6) NULL,
	[ValorPendenteSN] [decimal](19, 6) NULL,
	[ValorPendenteCPE] [decimal](19, 6) NULL,
	[CodRubHE1] [varchar](5) NULL,
	[CodRubHE2] [varchar](5) NULL,
	[CodRubHNocturno] [varchar](5) NULL,
	[CodRubDCHDiurno] [varchar](5) NULL,
	[CodRubDCHNocturno] [varchar](5) NULL,
	[CodRubDOHDiurno] [varchar](5) NULL,
	[CodRubDOHNocturno] [varchar](5) NULL,
	[Suspenso] [bit] NULL,
	[DtSuspensoIni] [smalldatetime] NULL,
	[DtSuspensoFim] [smalldatetime] NULL,
	[DtAntiguidade] [smalldatetime] NULL,
	[SuspensoMotivoHorasNTrab] [varchar](2) NULL,
	[NotasAdendas] [text] NULL,
	[DtAbandonoPostoTrab] [smalldatetime] NULL,
	[IsPrintCartaFimContracto] [bit] NULL,
	[UsaCondFactContrato] [bit] NULL,
	[NaoUsaFaltasParaFerias] [bit] NULL,
	[PagDuodecimosSFSN] [bit] NULL,
	[SubRef_RecPoreTicket] [bit] NULL,
	[SubRef_RecMultiplosValor] [decimal](19, 6) NULL,
	[IsContratoFormacao] [bit] NULL,
	[IsCUTTUnico] [bit] NULL,
	[CodCUTTUnico] [varchar](10) NULL,
	[DtFimCTTUnico] [smalldatetime] NULL,
	[IsCessacaoSegurancaSocial] [bit] NULL,
	[TipoNegocio] [tinyint] NULL,
	[DataMaximaVigencia] [datetime] NOT NULL,
	[IsPorSubstituicao] [bit] NULL,
	[CodPerfisDescontos] [varchar](40) NULL,
	[DtRevistaCont] [smalldatetime] NULL,
	[InscritoFundosCompensacao] [bit] NULL,
	[IncluiFuncoesCaixa] [bit] NULL,
	[ContratoAnexoComerciais] [bit] NULL,
	[IsContractoImitido] [bit] NULL,
	[KeyContractoUTT] [int] NULL,
	[CodAcordoCCT] [varchar](5) NULL,
	[CodRegiao] [varchar](5) NULL,
	[Nivel] [varchar](3) NULL,
	[CodSeguradora] [varchar](5) NULL,
	[DataPagamentoSN] [smalldatetime] NULL,
	[TipoPagamentoSF] [smallint] NULL,
	[DataPagamentoSF] [smalldatetime] NULL,
	[KeyContractoUTTCatFun] [int] NULL,
	[KeyVendedor] [int] NULL,
	[IncideObjectivos] [bit] NULL,
	[PeriodoObjINI] [smalldatetime] NULL,
	[PeriodoObjFIM] [smalldatetime] NULL,
	[PercFactObjectivos] [decimal](7, 3) NULL,
	[MbObjIntervaloINI] [decimal](7, 3) NULL,
	[MbObjIntervaloFIM] [decimal](7, 3) NULL,
	[CLASSIF_BS] [int] NULL,
	[IsContractoSucessivo] [bit] NULL,
	[ValorUnitarioPagHRef] [decimal](19, 6) NULL,
	[ValorUnitarioPagNRef] [decimal](19, 6) NULL,
	[ValorUnitarioPagFRef] [decimal](19, 6) NULL,
	[TipoCalculoPagRef] [tinyint] NULL,
	[CodSectorActividade] [varchar](5) NULL,
	[CodUnidadeNegocio] [varchar](5) NULL,
	[CAE] [varchar](5) NULL,
	[SHSTMinutaAssinada] [bit] NULL,
	[DtSHSTMinutaAssinada] [smalldatetime] NULL,
	[RenovAutPeriodoIgual] [bit] NULL,
	[NumDiasFaltas] [varchar](4) NULL,
	[DataComecouFaltar] [smalldatetime] NULL,
	[CodSubConta] [varchar](15) NULL,
	[DataCriacaoContracto] [smalldatetime] NULL,
	[EstadoFormacao] [tinyint] NULL,
	[SemAvisoPrevioKeyFHContracto] [int] NULL,
	[SemAvisoPrevioKeyFHC_FFalta] [int] NULL,
	[CodSegSoc] [varchar](3) NULL,
	[IndemSemAvisoPrevio] [bit] NULL,
	[IndemSemAvisoPrevioDias] [varchar](15) NULL,
	[IndemSemAvisoPrevioValor] [varchar](15) NULL,
	[IndemSemAvisoPrevioKeyFHContracto] [int] NULL,
	[IndemSemAvisoPrevioKeyFHDescontos] [int] NULL,
	[TipoUnidadePag] [int] NULL,
	[ValorDiaPagar] [decimal](19, 6) NULL,
	[ValorDiaPagar_BM] [decimal](19, 6) NULL,
	[CodSeguroRespCivil] [varchar](3) NULL,
	[IsCompensacaoPecuniariaGlobal] [bit] NULL,
	[NaoFaturarFolhas] [bit] NULL,
	[TemCargaHorariaPeriodo] [bit] NULL,
	[CargaHorariaPeriodo] [decimal](19, 6) NULL,
	[SalMensalPeriodo] [decimal](19, 6) NULL,
	[LimiteHorasNormais] [int] NULL,
	[TipoAdendaSubMotivo] [varchar](2) NULL,
	[ClassificacaoBLS] [varchar](5) NULL,
	[PodeGerarContractosSucessivos] [bit] NULL,
	[UsaMoradaAlternativa] [bit] NULL,
	[TipoGestaoProjecto] [int] NULL,
	[SemAvisoPrevioKeyReciboC] [int] NULL,
	[SemAvisoPrevioKeyReciboD] [int] NULL,
	[IndemSemAvisoPrevioKeyReciboc] [int] NULL,
	[IndemSemAvisoPrevioKeyReciboD] [int] NULL,
	[PodeFactAbaixoSal] [bit] NULL,
	[SemAvisoPrevioKeyAltMensal] [int] NULL,
	[SubRef_NumCartao] [varchar](25) NULL,
	[UsaVHFSemPropContrato] [bit] NULL,
	[TaxaCPEProv] [decimal](7, 3) NULL,
	[KeyCE_ProjectosValoresRHCat] [int] NULL,
	[KeyCE_ProjectosValoresRHCatV0] [int] NULL,
	[ProjectosValoresRHCatVersao] [int] NULL,
	[KeyContractoOrigem] [int] NULL,
	[DtInicioContOrigem] [smalldatetime] NULL,
	[BusinessUnit] [varchar](10) NULL,
	[UnitGroup] [varchar](10) NULL,
	[CodUnidade] [varchar](10) NULL,
	[KeyFHContractoAutoCPE] [int] NULL,
	[EntregueEmMao] [bit] NULL,
	[ValorPendenteCPEProv] [decimal](19, 6) NULL,
	[VHFFaltasFerias] [bit] NULL,
	[CoefFaltasFerias] [decimal](19, 6) NULL,
	[ValorHoraFactFaltasFerias] [decimal](19, 6) NULL,
	[TipoCartao] [tinyint] NULL,
	[SubRef_NumIBAN] [varchar](50) NULL,
	[SubRef_NumNIB] [varchar](50) NULL,
	[SubRef_Banco] [varchar](40) NULL,
	[SubRef_Swift] [varchar](11) NULL,
	[WorkingTime] [int] NULL,
	[KeyContractosWorkingTime] [int] NULL,
 CONSTRAINT [PK_Contractos] PRIMARY KEY CLUSTERED 
(
	[KeyContracto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contractos_Projectos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contractos_Projectos](
	[KeyContractoProjecto] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[KeyCE_Projecto] [int] NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[KeyHorario] [int] NOT NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[SalMensal] [decimal](19, 6) NULL,
	[SalMensal_BM] [decimal](19, 6) NULL,
	[ValorHoraPagar] [decimal](19, 6) NULL,
	[ValorHoraPagar_BM] [decimal](19, 6) NULL,
	[HorasMes] [decimal](19, 6) NULL,
	[KeyContractoProjectoParent] [int] NULL,
 CONSTRAINT [PK_Contractos_Projectos] PRIMARY KEY CLUSTERED 
(
	[KeyContractoProjecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosAbonos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosAbonos](
	[KeyContractosAbonos] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NULL,
	[CodAbono] [varchar](5) NULL,
	[DescricaoAbono] [varchar](40) NULL,
	[Valor] [decimal](19, 6) NULL,
	[Valor_BM] [decimal](19, 6) NULL,
	[Quantidade] [decimal](19, 6) NULL,
	[ValorPagar] [decimal](19, 6) NULL,
	[ValorPagar_BM] [decimal](19, 6) NULL,
	[ValorFacturar] [decimal](19, 6) NULL,
	[ValorFacturar_BM] [decimal](19, 6) NULL,
	[Coeficiente] [decimal](19, 6) NULL,
	[Apagar] [smallint] NULL,
	[AFacturar] [smallint] NULL,
	[Hor] [int] NULL,
	[TipoValor] [int] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[ChCont] [smallint] NULL,
	[VFF] [bit] NULL,
	[OutroValorHoraPagar] [decimal](19, 6) NULL,
	[OutroValorHoraPagar_BM] [decimal](19, 6) NULL,
	[KeyContractoProjecto] [int] NULL,
	[ValorDiaPagar] [decimal](19, 6) NULL,
	[ValorDiaPagar_BM] [decimal](19, 6) NULL,
	[UsoPontual] [bit] NULL,
 CONSTRAINT [PK__ContractosAbonos__09A971A2] PRIMARY KEY CLUSTERED 
(
	[KeyContractosAbonos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosAbonosAgruparHEFact]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosAbonosAgruparHEFact](
	[KeyContractosAbonosAgruparHEFact] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[KeyContractoProjecto] [int] NOT NULL,
	[CodAbono] [varchar](5) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ContractosAbonosAgruparHEFact] PRIMARY KEY CLUSTERED 
(
	[KeyContractosAbonosAgruparHEFact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosAbonosAgruparHEPag]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosAbonosAgruparHEPag](
	[KeyContractosAbonosAgruparHEPag] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[KeyContractoProjecto] [int] NOT NULL,
	[CodAbono] [varchar](5) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ContractosAbonosAgruparHEPag] PRIMARY KEY CLUSTERED 
(
	[KeyContractosAbonosAgruparHEPag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosAdendasRenovacoes]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosAdendasRenovacoes](
	[KeyContratosAdendasRenovacoes] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NULL,
	[Tipo] [tinyint] NULL,
	[Processar] [tinyint] NULL,
	[Data] [smalldatetime] NULL,
	[Motivo] [int] NULL,
	[VerImprimir] [tinyint] NULL,
	[ContratoTrabalho] [tinyint] NULL,
	[ContratoUtilizacao] [tinyint] NULL,
	[TipoExportacao] [tinyint] NULL,
	[NumeroCopias] [int] NULL,
	[Descricao] [varchar](2500) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[DescricaoClausulas] [varchar](50) NULL,
 CONSTRAINT [PK_ContractosAdendasRenovacoes] PRIMARY KEY CLUSTERED 
(
	[KeyContratosAdendasRenovacoes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosAgendamentos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosAgendamentos](
	[KeyContractoAgendamento] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NULL,
	[KeyFHContracto] [int] NULL,
	[Ano] [int] NULL,
	[Mes] [smallint] NULL,
	[DPGT] [varchar](2) NULL,
	[Codigo] [varchar](5) NULL,
	[Processado] [bit] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ContractosAgendamentos] PRIMARY KEY CLUSTERED 
(
	[KeyContractoAgendamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosAltMensais]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosAltMensais](
	[KeyContractosAltMensais] [int] IDENTITY(1,1) NOT NULL,
	[KeyContractos] [int] NOT NULL,
	[KeyReciboC] [int] NULL,
	[MesAno] [varchar](7) NULL,
	[DPGT] [tinyint] NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[HoraInicio] [smalldatetime] NULL,
	[HoraFim] [smalldatetime] NULL,
	[Tipo] [int] NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[Descricao] [varchar](60) NOT NULL,
	[ValorUnitario] [decimal](19, 6) NOT NULL,
	[Quantidade] [decimal](7, 3) NOT NULL,
	[ValorTotal] [decimal](19, 6) NOT NULL,
	[AnoMesSS] [varchar](6) NULL,
	[DiasSS] [decimal](7, 3) NOT NULL,
	[ProcessadoSal] [bit] NOT NULL,
	[ProcessadoPor] [varchar](25) NULL,
	[ProcessadoEm] [smalldatetime] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[ParaFerias] [bit] NULL,
	[AnoFerias] [varchar](4) NULL,
	[NaoProcessa] [bit] NULL,
	[KeyFHContracto] [int] NULL,
	[ProcessadoFH] [bit] NULL,
	[ProcessadoFHPor] [varchar](25) NULL,
	[ProcessadoFHEm] [smalldatetime] NULL,
	[KeyFacturaCab] [int] NULL,
	[AFacturar] [bit] NULL,
	[Coeficiente] [decimal](19, 6) NULL,
	[ValorUnitariofact] [decimal](19, 6) NULL,
	[ValorTotalfact] [decimal](19, 6) NULL,
	[KeyCE_Projectos] [int] NULL,
	[KeyCvC_Artigos] [int] NULL,
 CONSTRAINT [PK_ContractosAltMensais] PRIMARY KEY CLUSTERED 
(
	[KeyContractosAltMensais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosCentroCusto]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosCentroCusto](
	[KeyContractoCentroCusto] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[CentroCusto] [varchar](15) NOT NULL,
	[TaxaImputacao] [decimal](7, 3) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ContractosCentroCusto] PRIMARY KEY CLUSTERED 
(
	[KeyContractoCentroCusto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosDescontos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosDescontos](
	[KeyContractosDescontos] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[CodDesconto] [varchar](5) NOT NULL,
	[DescricaoDesconto] [varchar](40) NOT NULL,
	[Valor] [decimal](19, 6) NOT NULL,
	[Valor_BM] [decimal](19, 6) NOT NULL,
	[KeyContractoProjecto] [int] NOT NULL,
	[CriadoPor] [char](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [char](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ContractosDescontos] PRIMARY KEY CLUSTERED 
(
	[KeyContractosDescontos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosDeslocacoes]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosDeslocacoes](
	[KeyContractosDeslocacoes] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NULL,
	[KeyContractoProjecto] [int] NULL,
	[Tipo] [smallint] NULL,
	[DataHoraInicio] [smalldatetime] NULL,
	[DataHoraFim] [smalldatetime] NULL,
	[LocalDespesa] [varchar](100) NULL,
	[CodPaisISOAlpha2] [varchar](2) NULL,
	[Motivo] [varchar](100) NULL,
	[NumOrdemInterna] [varchar](25) NULL,
	[Adiantamento] [bit] NULL,
	[Divisa] [varchar](50) NULL,
	[ValorDivisa] [decimal](19, 6) NULL,
	[Valor] [decimal](19, 6) NULL,
	[MeioRecebimento] [varchar](25) NULL,
	[Notas] [varchar](2048) NULL,
	[PublicarPortal] [bit] NULL,
	[CriadoPortal] [bit] NULL,
	[UtilizadorPortal] [varchar](256) NULL,
	[Estado] [tinyint] NULL,
	[PedidoPor] [varchar](60) NULL,
	[PedidoEmail] [varchar](60) NULL,
	[PedidoEm] [smalldatetime] NULL,
	[AprovadoPor] [varchar](60) NULL,
	[AprovadoEm] [smalldatetime] NULL,
	[CriadoPor] [varchar](60) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](60) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[KeyAdiantamento] [int] NULL,
	[PedidoPor_KeyCvC_DP] [int] NULL,
 CONSTRAINT [PK_ContractosDeslocacoes] PRIMARY KEY CLUSTERED 
(
	[KeyContractosDeslocacoes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosDespesas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosDespesas](
	[KeyContractosDespesas] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NULL,
	[KeyContractoProjecto] [int] NULL,
	[KeyContractosDeslocacoes] [int] NULL,
	[CodArtigo] [varchar](5) NULL,
	[Descricao] [varchar](100) NULL,
	[KeyFornecedor] [int] NULL,
	[Divisa] [varchar](50) NULL,
	[ValorDivisa] [decimal](19, 6) NULL,
	[Valor] [decimal](19, 6) NULL,
	[Estado] [tinyint] NULL,
	[PedidoPor] [varchar](60) NULL,
	[PedidoEmail] [varchar](60) NULL,
	[PedidoEm] [smalldatetime] NULL,
	[AprovadoPor] [varchar](60) NULL,
	[AprovadoEm] [smalldatetime] NULL,
	[CriadoPor] [varchar](60) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](60) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[PedidoPor_KeyCvC_DP] [int] NULL,
	[DataDespesa] [smalldatetime] NULL,
	[KeyReciboC] [int] NULL,
	[Ficheiro] [varchar](128) NULL,
 CONSTRAINT [PK_ContractosDespesas] PRIMARY KEY CLUSTERED 
(
	[KeyContractosDespesas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosDocumentos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosDocumentos](
	[KeyContractoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[DataDocumento] [datetime] NOT NULL,
	[CodTipoDocumento] [tinyint] NOT NULL,
	[InternalNumberID] [int] NOT NULL,
	[Descricao] [varchar](200) NOT NULL,
	[Ficheiro] [varchar](256) NOT NULL,
	[Obs] [varchar](max) NOT NULL,
	[IsPrinted] [bit] NULL,
	[PrintedDate] [datetime] NULL,
	[PrintedBy] [varchar](25) NULL,
	[IsApproved] [bit] NULL,
	[ApprovedDate] [datetime] NULL,
	[ApprovedBy] [varchar](25) NULL,
	[IsDigitized] [bit] NULL,
	[DigitizedDate] [datetime] NULL,
	[DigitizedBy] [varchar](25) NULL,
	[DocArchiveAt] [varchar](40) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[ContractoSeq] [int] NULL,
	[KeyCvC_ExamesMedicos] [int] NULL,
 CONSTRAINT [PK_ContractosDocumentos] PRIMARY KEY CLUSTERED 
(
	[KeyContractoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosDocumentos_Historico]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosDocumentos_Historico](
	[KeyContractoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[DataDocumento] [datetime] NOT NULL,
	[CodTipoDocumento] [tinyint] NOT NULL,
	[InternalNumberID] [int] NOT NULL,
	[Descricao] [varchar](200) NOT NULL,
	[Ficheiro] [varchar](256) NOT NULL,
	[Obs] [varchar](max) NOT NULL,
	[IsPrinted] [bit] NULL,
	[PrintedDate] [datetime] NULL,
	[PrintedBy] [varchar](25) NULL,
	[IsApproved] [bit] NULL,
	[ApprovedDate] [datetime] NULL,
	[ApprovedBy] [varchar](25) NULL,
	[IsDigitized] [bit] NULL,
	[DigitizedDate] [datetime] NULL,
	[DigitizedBy] [varchar](25) NULL,
	[DocArchiveAt] [varchar](40) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[ContractoSeq] [int] NULL,
 CONSTRAINT [PK_ContractosDocumentos_Historico] PRIMARY KEY CLUSTERED 
(
	[KeyContractoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosFundosInfo]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosFundosInfo](
	[KeyContractosFundosInfo] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[CodContracto] [varchar](10) NULL,
	[DataImportacao] [smalldatetime] NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[Modalidade] [varchar](60) NULL,
	[FCTSaldo] [decimal](19, 6) NOT NULL,
	[FCTNumeroUP] [decimal](19, 6) NOT NULL,
	[FCTCotacaoUP] [decimal](19, 6) NOT NULL,
	[FCTValorEmDivida] [decimal](19, 6) NOT NULL,
	[FGCTEntregasPagas] [decimal](19, 6) NOT NULL,
	[FGCTValorEmDivida] [decimal](19, 6) NOT NULL,
	[FGCTDevolucoesPagas] [decimal](19, 6) NOT NULL,
	[FGCTDevolucoesPendentes] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ContractosFundosInfo] PRIMARY KEY CLUSTERED 
(
	[KeyContractosFundosInfo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosHistorico]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosHistorico](
	[KeyContractosHistorico] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NULL,
	[dataH] [smalldatetime] NULL,
	[Tipo] [varchar](60) NULL,
	[Observacoes] [varchar](255) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_ContractosHistorico] PRIMARY KEY NONCLUSTERED 
(
	[KeyContractosHistorico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosHorarioCE]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosHorarioCE](
	[KeyContractosHorarioCE] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[KeyHorarioCE] [int] NOT NULL,
	[DiaSemana] [tinyint] NOT NULL,
	[HoraInicio1] [smalldatetime] NOT NULL,
	[HoraFim1] [smalldatetime] NOT NULL,
	[TipoHorario1] [smallint] NOT NULL,
	[HoraInicio2] [smalldatetime] NOT NULL,
	[HoraFim2] [smalldatetime] NOT NULL,
	[TipoHorario2] [smallint] NOT NULL,
	[HoraInicio3] [smalldatetime] NOT NULL,
	[HoraFim3] [smalldatetime] NOT NULL,
	[TipoHorario3] [smallint] NOT NULL,
	[HoraInicio4] [smalldatetime] NOT NULL,
	[HoraFim4] [smalldatetime] NOT NULL,
	[TipoHorario4] [smallint] NOT NULL,
	[HoraInicio5] [smalldatetime] NOT NULL,
	[HoraFim5] [smalldatetime] NOT NULL,
	[TipoHorario5] [smallint] NOT NULL,
	[TipoDia] [int] NOT NULL,
	[TotalHoras] [decimal](7, 3) NULL,
	[TotalTurnos] [decimal](7, 3) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ContractosHorarioCE] PRIMARY KEY CLUSTERED 
(
	[KeyContractosHorarioCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosHorarioCEDetalhe]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosHorarioCEDetalhe](
	[KeyContractosHorarioCEDetalhe] [int] IDENTITY(1,1) NOT NULL,
	[KeyContractos] [int] NULL,
	[KeyHorarioCE] [int] NULL,
	[Data] [smalldatetime] NULL,
	[HoraInicio1] [smalldatetime] NULL,
	[HoraFim1] [smalldatetime] NULL,
	[TipoHorario1] [smallint] NOT NULL,
	[HoraInicio2] [smalldatetime] NULL,
	[HoraFim2] [smalldatetime] NULL,
	[TipoHorario2] [smallint] NOT NULL,
	[HoraInicio3] [smalldatetime] NULL,
	[HoraFim3] [smalldatetime] NULL,
	[TipoHorario3] [smallint] NOT NULL,
	[HoraInicio4] [smalldatetime] NULL,
	[HoraFim4] [smalldatetime] NULL,
	[TipoHorario4] [smallint] NOT NULL,
	[HoraInicio5] [smalldatetime] NULL,
	[HoraFim5] [smalldatetime] NULL,
	[TipoHorario5] [smallint] NOT NULL,
	[TipoDia] [int] NULL,
	[TotalHoras] [decimal](7, 3) NULL,
	[TotalTurnos] [decimal](7, 3) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ContractosHorarioCEDetalhe] PRIMARY KEY CLUSTERED 
(
	[KeyContractosHorarioCEDetalhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosImportacaoDiasFerias]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosImportacaoDiasFerias](
	[KeyContractosImportacaoDiasFerias] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[Ano] [int] NOT NULL,
	[DiasGozadosAnosAnteriores] [int] NOT NULL,
	[DiasJan] [int] NOT NULL,
	[DiasFev] [int] NOT NULL,
	[DiasMar] [int] NOT NULL,
	[DiasAbr] [int] NOT NULL,
	[DiasMai] [int] NOT NULL,
	[DiasJun] [int] NOT NULL,
	[DiasJul] [int] NOT NULL,
	[DiasAgo] [int] NOT NULL,
	[DiasSet] [int] NOT NULL,
	[DiasOut] [int] NOT NULL,
	[DiasNov] [int] NOT NULL,
	[DiasDez] [int] NOT NULL,
	[DiasGozadosAno] [int] NOT NULL,
	[DiasPagosAno] [int] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [pkContractosImportacaoDiasFerias] PRIMARY KEY NONCLUSTERED 
(
	[KeyContractosImportacaoDiasFerias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosOutros]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosOutros](
	[KeyContractosOutros] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[ProcessoImpresso] [bit] NULL,
	[ProcessoDtImpresso] [smalldatetime] NULL,
	[ProcessoImpressoPor] [varchar](30) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[OL_Nacionalidade] [varchar](50) NULL,
	[OL_Representante] [varchar](50) NULL,
	[OL_MotivoRecurso] [text] NULL,
	[OL_MotivoEspecificacao] [text] NULL,
	[OL_LocalTrabalho] [varchar](150) NULL,
	[OL_QualifProfissional] [varchar](50) NULL,
	[OL_Funcao] [text] NULL,
	[OL_RiscosProfissionais] [text] NULL,
	[OL_EquipProteccao] [varchar](60) NULL,
	[OL_InstalacaoColectiva] [varchar](20) NULL,
	[OL_HorarioSemanal] [varchar](20) NULL,
	[OL_HorarioTrabalho] [text] NULL,
	[OL_CondPagamento] [varchar](150) NULL,
	[PeriodoProcIni] [int] NULL,
	[PeriodoProcFim] [int] NULL,
	[NotaEncomenda] [varchar](40) NULL,
	[IsToInfoSegSocialCessacao] [bit] NULL,
	[FCTAdmissao] [bit] NULL,
	[FCTAdmissaoData] [smalldatetime] NULL,
	[FCTCessacao] [bit] NULL,
	[FCTCessacaoData] [smalldatetime] NULL,
	[FCTPedidoReembolso] [bit] NULL,
	[FCTPedidoReembolsoData] [smalldatetime] NULL,
	[FCTRecebimento] [bit] NULL,
	[FCTRecebimentoData] [smalldatetime] NULL,
	[MIEAdmissao] [bit] NULL,
	[MIEAdmissaoData] [smalldatetime] NULL,
	[MIERecebimento] [bit] NULL,
	[MIERecebimentoData] [smalldatetime] NULL,
	[MotivoFimContracto] [varchar](1024) NULL,
	[IdentContractoFundos] [varchar](20) NULL,
	[PeriodicidadeExameMed] [tinyint] NULL,
	[RespRealizacaoExameMed] [bit] NULL,
	[PostoTrabalho] [varchar](250) NULL,
	[TemComAdmissaoSS] [bit] NULL,
	[DtComAdmissaoSS] [smalldatetime] NULL,
	[TemComCessacaoSS] [bit] NULL,
	[DtComCessacaoSS] [smalldatetime] NULL,
 CONSTRAINT [PK_ContractosOutros] PRIMARY KEY CLUSTERED 
(
	[KeyContracto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosProcPendenteSS]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosProcPendenteSS](
	[KeyContracto] [int] NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[MesAno] [varchar](7) NOT NULL,
	[CodDatasProcessamento] [varchar](3) NOT NULL,
	[PeriodoIni] [smalldatetime] NOT NULL,
	[PeriodoFim] [smalldatetime] NOT NULL,
	[SalMensal] [decimal](19, 6) NOT NULL,
	[ValorTributavel] [decimal](19, 6) NOT NULL,
	[TotalIRS_A] [decimal](19, 6) NOT NULL,
	[TotalSegSocTrab] [decimal](19, 6) NOT NULL,
	[TotalSegSocEmp] [decimal](19, 6) NOT NULL,
	[TaxaIRS_A] [decimal](19, 6) NOT NULL,
	[COL_SS] [varchar](3) NOT NULL,
	[TipoSS] [varchar](1) NOT NULL,
	[DiasSS] [int] NOT NULL,
	[DataProc] [smalldatetime] NOT NULL,
	[NSSR] [varchar](14) NULL,
	[EstEntEmp] [varchar](4) NULL,
	[TxBeneficiarioSS] [decimal](7, 3) NOT NULL,
	[TxContribuinteSS] [decimal](7, 3) NOT NULL,
	[ContabConst] [bit] NULL,
	[ContabConst_Por] [varchar](15) NULL,
	[ContabConst_Em] [smalldatetime] NULL,
	[ContabUtil] [bit] NULL,
	[ContabUtil_Por] [varchar](15) NULL,
	[ContabUtil_Em] [smalldatetime] NULL,
	[SegSocData] [varchar](6) NULL,
 CONSTRAINT [PK_ContractosProcPendenteSS] PRIMARY KEY CLUSTERED 
(
	[KeyContracto] ASC,
	[MesAno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosProvisoesLib]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosProvisoesLib](
	[KeyContractosProvisoesLib] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[C_SF] [decimal](19, 6) NOT NULL,
	[P_SF] [decimal](19, 6) NOT NULL,
	[L_SF] [decimal](19, 6) NOT NULL,
	[C_SN] [decimal](19, 6) NOT NULL,
	[P_SN] [decimal](19, 6) NOT NULL,
	[L_SN] [decimal](19, 6) NOT NULL,
	[C_FNG] [decimal](19, 6) NOT NULL,
	[P_FNG] [decimal](19, 6) NOT NULL,
	[L_FNG] [decimal](19, 6) NOT NULL,
	[C_CPE] [decimal](19, 6) NOT NULL,
	[P_CPE] [decimal](19, 6) NOT NULL,
	[L_CPE] [decimal](19, 6) NOT NULL,
	[C_TSU] [decimal](19, 6) NOT NULL,
	[P_TSU] [decimal](19, 6) NOT NULL,
	[L_TSU] [decimal](19, 6) NOT NULL,
	[Contab] [bit] NULL,
	[DtEmissaoPROC] [smalldatetime] NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Contab_Por] [varchar](15) NULL,
	[Contab_Em] [smalldatetime] NULL,
 CONSTRAINT [PK_ContractosProvisoesLib] PRIMARY KEY CLUSTERED 
(
	[KeyContracto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosProvisoesReforco]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosProvisoesReforco](
	[KeyContractosProvisoesReforco] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[MesAno] [varchar](7) NOT NULL,
	[C_SF] [decimal](19, 6) NOT NULL,
	[P_SF] [decimal](19, 6) NOT NULL,
	[R_SF] [decimal](19, 6) NOT NULL,
	[C_SN] [decimal](19, 6) NOT NULL,
	[P_SN] [decimal](19, 6) NOT NULL,
	[R_SN] [decimal](19, 6) NOT NULL,
	[C_FNG] [decimal](19, 6) NOT NULL,
	[P_FNG] [decimal](19, 6) NOT NULL,
	[R_FNG] [decimal](19, 6) NOT NULL,
	[C_CPE] [decimal](19, 6) NOT NULL,
	[P_CPE] [decimal](19, 6) NOT NULL,
	[R_CPE] [decimal](19, 6) NOT NULL,
	[C_TSU] [decimal](19, 6) NOT NULL,
	[P_TSU] [decimal](19, 6) NOT NULL,
	[R_TSU] [decimal](19, 6) NOT NULL,
	[Contab] [bit] NULL,
	[Contab_Por] [varchar](6) NULL,
	[Contab_Em] [smalldatetime] NULL,
	[DtEmissaoPROC] [smalldatetime] NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ContractosProvisoesReforco] PRIMARY KEY CLUSTERED 
(
	[KeyContracto] ASC,
	[MesAno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosSHST]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosSHST](
	[KeyContractosSHST] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[Alinea_a] [text] NULL,
	[Alinea_b] [text] NULL,
	[Alinea_c] [text] NULL,
	[Alinea_d] [text] NULL,
	[ModSHST_SegHigiene] [tinyint] NULL,
	[ModSHST_Saude] [tinyint] NULL,
	[KeyContacto_HS] [int] NULL,
	[KeyContacto_S] [int] NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[Alinea_A_Existente] [bit] NULL,
	[Alinea_A_VigilanciaMedica] [bit] NULL,
	[CaracterizacaoPosto] [text] NULL,
	[QualificacaoProfissional] [text] NULL,
	[NIF_HS] [varchar](20) NULL,
	[Tipo_HS] [tinyint] NULL,
	[NIF_S] [varchar](20) NULL,
	[Tipo_S] [tinyint] NULL,
	[KeyContacto_HS_TT] [int] NULL,
	[KeyContacto_S_TT] [int] NULL,
	[ModSHST_SegHigiene_TT] [tinyint] NULL,
	[ModSHST_Saude_TT] [tinyint] NULL,
	[Nome_HS] [varchar](40) NULL,
	[Nome_S] [varchar](40) NULL,
	[Nome_HS_TT] [varchar](40) NULL,
	[Nome_S_TT] [varchar](40) NULL,
	[NIF_HS_TT] [varchar](20) NULL,
	[Tipo_HS_TT] [tinyint] NULL,
	[NIF_S_TT] [varchar](20) NULL,
	[Tipo_S_TT] [tinyint] NULL,
	[Alinea_e] [text] NULL,
 CONSTRAINT [PK_ContractosSHST] PRIMARY KEY CLUSTERED 
(
	[KeyContractosSHST] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosSucessivos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosSucessivos](
	[KeyContractoSucessivo] [int] IDENTITY(1,1) NOT NULL,
	[KeyContractoOrigem] [int] NULL,
	[KeyContracto] [int] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Tipo] [int] NULL,
 CONSTRAINT [PK_ContractosSucessivos] PRIMARY KEY CLUSTERED 
(
	[KeyContractoSucessivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosUTT]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosUTT](
	[KeyContractoUTT] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NULL,
	[KeyProposta] [int] NULL,
	[KeyPedido] [int] NULL,
	[CodAgencia] [varchar](3) NULL,
	[CodArea] [varchar](2) NULL,
	[CodContracto] [varchar](10) NULL,
	[CodIntCE] [varchar](10) NULL,
	[NomeCE] [varchar](60) NULL,
	[Documento] [varchar](50) NULL,
	[Morada] [varchar](100) NULL,
	[Localidade] [varchar](40) NULL,
	[CP] [varchar](8) NULL,
	[LCP] [varchar](40) NULL,
	[MotRecurso] [text] NULL,
	[DecretoLei] [varchar](15) NULL,
	[MotRecursoAlinea] [varchar](5) NULL,
	[MotRecursoArtigo] [varchar](10) NULL,
	[CodDuracaoTempoTrab] [tinyint] NULL,
	[CodOrgTempoTrab] [tinyint] NULL,
	[Especificacao] [text] NULL,
	[Funcao] [text] NULL,
	[Duracao] [smallint] NULL,
	[EquiProt] [varchar](60) NULL,
	[FormatoUtil] [varchar](15) NULL,
	[IVA] [decimal](19, 6) NULL,
	[PrazoPag] [varchar](15) NULL,
	[ModoPag] [varchar](25) NULL,
	[RegTempo] [varchar](15) NULL,
	[TipoContracto] [varchar](15) NULL,
	[NotasUtil] [text] NULL,
	[DtInicioCont] [smalldatetime] NULL,
	[DtFimCont] [smalldatetime] NULL,
	[ContractoActivo] [bit] NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[FACT_FIXO] [bit] NULL,
	[SAL_30DIAS] [bit] NULL,
	[CentroCusto] [varchar](15) NULL,
	[Representante] [varchar](50) NULL,
	[DPGT] [tinyint] NULL,
	[CPE_Parcial] [bit] NULL,
	[SF_Parcial] [bit] NULL,
	[SFNG_Parcial] [bit] NULL,
	[SN_Parcial] [bit] NULL,
	[CodInt] [varchar](15) NULL,
	[RCTT] [bit] NULL,
	[RCUTT] [bit] NULL,
	[MPSF] [smallint] NULL,
	[MPSN] [smallint] NULL,
	[MPFN] [smallint] NULL,
	[MPCPE] [smallint] NULL,
	[PeriodRenov] [varchar](4) NULL,
	[NumOrdem] [varchar](20) NULL,
	[Dt1FimCont] [smalldatetime] NULL,
	[CUTEEM] [smalldatetime] NULL,
	[CUTREM] [smalldatetime] NULL,
	[CTTEEM] [smalldatetime] NULL,
	[CTTREM] [smalldatetime] NULL,
	[DtAntFimCont] [smalldatetime] NULL,
	[DtFimContUtil] [smalldatetime] NULL,
	[PropFaltasSF] [bit] NULL,
	[PropFaltasSN] [bit] NULL,
	[PropFaltasSFNG] [bit] NULL,
	[PropFaltasCPE] [bit] NULL,
	[MeioPagTrab] [varchar](25) NULL,
	[TxIVA] [decimal](19, 6) NULL,
	[EIDICT] [bit] NULL,
	[IDICTEM] [smalldatetime] NULL,
	[IRCT] [varchar](5) NULL,
	[Consultor] [varchar](30) NULL,
	[VHFSemCPE] [bit] NULL,
	[CoefCPE] [decimal](19, 6) NULL,
	[VHFSemSFNG] [bit] NULL,
	[CoefSFNG] [decimal](19, 6) NULL,
	[VHFSemSF] [bit] NULL,
	[CoefSF] [decimal](19, 6) NULL,
	[VHFSemSN] [bit] NULL,
	[CoefSN] [decimal](19, 6) NULL,
	[VHFFaltas] [bit] NULL,
	[CoefFaltas] [decimal](19, 6) NULL,
	[CodDelegIDICT] [varchar](8) NULL,
	[DtTabSalarial] [smalldatetime] NULL,
	[TaxaSF] [decimal](7, 3) NULL,
	[TaxaSN] [decimal](7, 3) NULL,
	[TaxaSFNG] [decimal](7, 3) NULL,
	[TaxaCPE] [decimal](7, 3) NULL,
	[TaxaCPE_M6] [decimal](7, 3) NULL,
	[PortalPublicar] [bit] NULL,
	[DtIniContUtil] [smalldatetime] NULL,
	[CodPaisDestacamento] [varchar](2) NULL,
	[CodAplicIRCT] [varchar](2) NULL,
	[DtFimContPrevCli] [smalldatetime] NULL,
	[NaoEmiteCUTT] [bit] NULL,
	[TipoFacturacao] [tinyint] NULL,
	[CodTabPreFactRec] [varchar](5) NULL,
	[SubRef_RecPorCartao] [bit] NULL,
	[SubRef_RecPoreTicket] [bit] NULL,
	[SubRef_RecMultiplosValor] [decimal](19, 6) NULL,
	[CDU_IdEstrutura] [varchar](20) NULL,
	[CDU_IdLinNegMPG] [varchar](20) NULL,
	[CDU_IdLinNegPT] [varchar](20) NULL,
	[ValorPendenteSF] [decimal](19, 6) NULL,
	[ValorPendenteSFNG] [decimal](19, 6) NULL,
	[ValorPendenteSN] [decimal](19, 6) NULL,
	[ValorPendenteCPE] [decimal](19, 6) NULL,
	[CodRubHE1] [varchar](5) NULL,
	[CodRubHE2] [varchar](5) NULL,
	[CodRubHNocturno] [varchar](5) NULL,
	[CodRubDCHDiurno] [varchar](5) NULL,
	[CodRubDCHNocturno] [varchar](5) NULL,
	[CodRubDOHDiurno] [varchar](5) NULL,
	[CodRubDOHNocturno] [varchar](5) NULL,
	[NotasAdendas] [text] NULL,
	[UsaCondFactContrato] [bit] NULL,
	[IsContratoFormacao] [bit] NULL,
	[TipoNegocio] [tinyint] NULL,
	[IsContractoImitido] [bit] NULL,
	[KeyCE_Projecto] [int] NULL,
	[CUTT] [bit] NULL,
	[CaracterizacaoPosto] [text] NULL,
	[QualificacaoProfissional] [text] NULL,
	[NotasTrab] [text] NULL,
	[NotasFH] [text] NULL,
	[CAE] [varchar](5) NULL,
	[CodSectorActividade] [varchar](5) NULL,
	[CodUnidadeNegocio] [varchar](5) NULL,
	[KeyTarifasEntidades] [int] NULL,
	[KeyVendedor] [int] NULL,
	[IncideObjectivos] [bit] NULL,
	[PeriodoObjINI] [smalldatetime] NULL,
	[PeriodoObjFIM] [smalldatetime] NULL,
	[PercFactObjectivos] [decimal](7, 3) NULL,
	[MbObjIntervaloINI] [decimal](7, 3) NULL,
	[MbObjIntervaloFIM] [decimal](7, 3) NULL,
	[ModSHST_SegHigiene] [tinyint] NULL,
	[KeyContacto_HS] [int] NULL,
	[NIF_HS] [varchar](20) NULL,
	[Tipo_HS] [tinyint] NULL,
	[ModSHST_Saude] [tinyint] NULL,
	[KeyContacto_S] [int] NULL,
	[NIF_S] [varchar](20) NULL,
	[Tipo_S] [tinyint] NULL,
	[Alinea_a] [text] NULL,
	[Alinea_a_Existente] [bit] NULL,
	[Alinea_a_VigilanciaMedica] [bit] NULL,
	[Alinea_b] [text] NULL,
	[Alinea_c] [text] NULL,
	[Alinea_d] [text] NULL,
	[CodSeguroRespCivil] [varchar](3) NULL,
	[Nome_HS] [varchar](40) NULL,
	[Nome_S] [varchar](40) NULL,
	[NaoFaturarFolhas] [bit] NULL,
	[CodDatasProcessamento] [varchar](3) NULL,
	[FormaPagamento] [int] NULL,
	[ExpDoc] [tinyint] NULL,
	[TemCargaHorariaPeriodo] [bit] NULL,
	[LimiteHorasNormais] [int] NULL,
	[TipoAdendaSubMotivo] [varchar](2) NULL,
	[FormaFacturacao] [int] NULL,
	[IsCompensacaoPecuniariaGlobal] [bit] NULL,
	[PodeGerarContractosSucessivos] [bit] NULL,
	[PodeFactAbaixoSal] [bit] NULL,
 CONSTRAINT [PK_ContractosUTT] PRIMARY KEY CLUSTERED 
(
	[KeyContractoUTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosUTTAbonos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosUTTAbonos](
	[KeyContractosUTTAbonos] [int] IDENTITY(1,1) NOT NULL,
	[KeyContractosUTTCatFun] [int] NOT NULL,
	[KeyContractoUTT] [int] NOT NULL,
	[CodAbono] [varchar](5) NOT NULL,
	[DescricaoAbono] [varchar](40) NULL,
	[Valor] [decimal](19, 6) NULL,
	[Valor_BM] [decimal](19, 6) NULL,
	[Quantidade] [decimal](19, 6) NULL,
	[ValorPagar] [decimal](19, 6) NULL,
	[ValorPagar_BM] [decimal](19, 6) NULL,
	[ValorFacturar] [decimal](19, 6) NULL,
	[ValorFacturar_BM] [decimal](19, 6) NULL,
	[Coeficiente] [decimal](19, 6) NULL,
	[Apagar] [smallint] NULL,
	[AFacturar] [smallint] NULL,
	[Hor] [int] NULL,
	[TipoValor] [int] NULL,
	[ChCont] [smallint] NULL,
	[VFF] [bit] NULL,
	[OutroValorHoraPagar] [decimal](19, 6) NULL,
	[OutroValorHoraPagar_BM] [decimal](19, 6) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[UsoPontual] [bit] NULL,
	[guidContractosUTTCatFun] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ContractosUTTAbonos_v2] PRIMARY KEY NONCLUSTERED 
(
	[KeyContractosUTTCatFun] ASC,
	[CodAbono] ASC,
	[guidContractosUTTCatFun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosUTTAdendas]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosUTTAdendas](
	[KeyContractoUTTAdenda] [int] IDENTITY(1,1) NOT NULL,
	[KeyContractoUTT] [int] NOT NULL,
	[DataAdenda] [smalldatetime] NOT NULL,
	[Motivo] [tinyint] NOT NULL,
	[Observacoes] [text] NOT NULL,
	[Emitida] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ContractosUTTAdendas] PRIMARY KEY CLUSTERED 
(
	[KeyContractoUTTAdenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosUTTCatFun]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosUTTCatFun](
	[KeyContractosUTTCatFun] [int] IDENTITY(1,1) NOT NULL,
	[KeyContractosUTT] [int] NULL,
	[KeyHorarioCE] [int] NULL,
	[CargaHM] [decimal](19, 6) NULL,
	[CodHorario] [varchar](5) NULL,
	[CodigoCategoria] [varchar](10) NULL,
	[DescricaoCategoria] [varchar](100) NULL,
	[DescricaoFuncao] [text] NULL,
	[VHFFaltas] [bit] NULL,
	[CoefFaltas] [decimal](19, 6) NULL,
	[ValorHoraFactFaltas] [decimal](19, 6) NULL,
	[SubRef_RecPorCartao] [bit] NULL,
	[SubRef_RecPoreTicket] [bit] NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[CodAcordoCCT] [varchar](5) NULL,
	[CodRegiao] [varchar](5) NULL,
	[CodSeguro] [varchar](3) NULL,
	[Nivel] [varchar](3) NULL,
	[KeyTE_CatFun] [int] NULL,
	[KeyPedidoCat] [int] NULL,
	[Fact_Fixo] [bit] NULL,
	[SAL_30Dias] [bit] NULL,
	[guidContractosUTTCatFun] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ContractosUTTCatFun] PRIMARY KEY NONCLUSTERED 
(
	[KeyContractosUTTCatFun] ASC,
	[guidContractosUTTCatFun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosUTTHistorico]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosUTTHistorico](
	[KeyContractosUTTHistorico] [int] IDENTITY(1,1) NOT NULL,
	[KeyContractoUTT] [int] NOT NULL,
	[DataHora] [smalldatetime] NOT NULL,
	[Tipo] [varchar](60) NULL,
	[Observacoes] [varchar](255) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[guidContractosUTTHistorico] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ContractosUTTHistorico] PRIMARY KEY NONCLUSTERED 
(
	[KeyContractosUTTHistorico] ASC,
	[guidContractosUTTHistorico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosUTTSHST]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosUTTSHST](
	[KeyContractosUTTSHST] [int] IDENTITY(1,1) NOT NULL,
	[KeyContractoUTT] [int] NOT NULL,
	[KeyContractoUTTCatFun] [int] NOT NULL,
	[CaracterizacaoPosto] [text] NULL,
	[QualificacaoProfissional] [text] NULL,
	[Alinea_a] [text] NULL,
	[Alinea_a_Existente] [bit] NULL,
	[Alinea_a_VigilanciaMedica] [bit] NULL,
	[Alinea_b] [text] NULL,
	[Alinea_c] [text] NULL,
	[Alinea_d] [text] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[guidContractosUTTCatFun] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ContractosUTTSHST] PRIMARY KEY CLUSTERED 
(
	[KeyContractoUTTCatFun] ASC,
	[guidContractosUTTCatFun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContractosWorkingTime]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContractosWorkingTime](
	[KeyContractosWorkingTime] [int] IDENTITY(1,1) NOT NULL,
	[WorkingTime] [int] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Credenciais]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Credenciais](
	[KeyCredencial] [int] IDENTITY(1,1) NOT NULL,
	[NumeroCredencial] [varchar](10) NOT NULL,
	[NomeCredencial] [varchar](100) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[CodIntCE] [varchar](10) NOT NULL,
	[NomeCE] [varchar](60) NOT NULL,
	[Funcao] [varchar](60) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_Credenciais] PRIMARY KEY CLUSTERED 
(
	[KeyCredencial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Credenciais_Locais]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Credenciais_Locais](
	[KeyCredenciais_Locais] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](4) NOT NULL,
	[Descricao] [varchar](80) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_Credenciais_Locais] PRIMARY KEY CLUSTERED 
(
	[KeyCredenciais_Locais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CredenciaisLoja]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CredenciaisLoja](
	[KeyCredencialLoja] [int] IDENTITY(1,1) NOT NULL,
	[KeyCredencial] [int] NOT NULL,
	[KeyCE_NecLoc] [int] NOT NULL,
	[Local] [varchar](80) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CredenciaisLoja] PRIMARY KEY CLUSTERED 
(
	[KeyCredencialLoja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CredenciaisLojaCvC]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CredenciaisLojaCvC](
	[KeyCredencialLojaCvC] [int] IDENTITY(1,1) NOT NULL,
	[KeyCredencialLoja] [int] NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[NomeCF] [varchar](60) NOT NULL,
	[Horario] [varchar](256) NOT NULL,
	[DataValidade] [smalldatetime] NULL,
	[DataEMA] [smalldatetime] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[IsCredencialPrinted] [bit] NULL,
	[CredencialPrintedDate] [smalldatetime] NULL,
 CONSTRAINT [PK_CredenciaisLojaCvC] PRIMARY KEY CLUSTERED 
(
	[KeyCredencialLojaCvC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CursoDenom]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CursoDenom](
	[KeyCursoDenom] [int] IDENTITY(1,1) NOT NULL,
	[KeyCurso] [int] NULL,
	[DenominacaoCurso] [varchar](100) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CursoDenom] PRIMARY KEY CLUSTERED 
(
	[KeyCursoDenom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CursoEsp]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CursoEsp](
	[KeyEsp] [int] IDENTITY(1,1) NOT NULL,
	[KeyCursoDenom] [int] NULL,
	[CursoEsp] [varchar](100) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CursoEsp] PRIMARY KEY CLUSTERED 
(
	[KeyEsp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CVC_AcidentesTrabalho]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CVC_AcidentesTrabalho](
	[KeyCvC_AcidentesTrabalho] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NULL,
	[KeyContractoProjecto] [int] NULL,
	[KeyCvC_DP] [int] NULL,
	[TipoAcidente] [tinyint] NULL,
	[Data] [smalldatetime] NULL,
	[LocalAcidente] [varchar](256) NULL,
	[DescricaoAcidente] [varchar](2048) NULL,
	[Hospitalizacao] [bit] NULL,
	[NomeHospital] [varchar](64) NULL,
	[DiasHospitalizacao] [smallint] NULL,
	[Lesoes] [varchar](2048) NULL,
	[Danos] [varchar](2048) NULL,
	[Estado] [tinyint] NULL,
	[PedidoPor] [varchar](60) NULL,
	[PedidoEmail] [varchar](60) NULL,
	[PedidoEm] [smalldatetime] NULL,
	[AprovadoPor] [varchar](60) NULL,
	[AprovadoEm] [smalldatetime] NULL,
	[CriadoPor] [varchar](60) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](60) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Ficheiro] [varchar](128) NULL,
	[Titulo] [varchar](128) NULL,
	[TipoLocal] [tinyint] NULL,
	[Causa] [varchar](2048) NULL,
	[TipoCausa] [tinyint] NULL,
	[ParteCorpo] [tinyint] NULL,
	[NaturezaLesao] [tinyint] NULL,
	[ParecerTecnico] [varchar](2048) NULL,
	[CausasInvestigacao] [varchar](2048) NULL,
	[AccaoCorrectiva] [varchar](2048) NULL,
	[DataParticipacao] [smalldatetime] NULL,
	[DataAlta] [smalldatetime] NULL,
	[DuracaoAlta] [int] NULL,
	[DataITAInicio] [smalldatetime] NULL,
	[DataITAFim] [smalldatetime] NULL,
 CONSTRAINT [PK_CVC_AcidentesTrabalho] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_AcidentesTrabalho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CVC_AcidentesTrabalhoAusencias]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CVC_AcidentesTrabalhoAusencias](
	[KeyCVC_AcidentesTrabalhoAusencias] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_AcidentesTrabalho] [int] NULL,
	[Codigo] [varchar](10) NULL,
	[Descricao] [varchar](256) NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Perc] [tinyint] NULL,
	[Dias] [smallint] NULL,
	[PercDiasCalc] [decimal](19, 6) NULL,
 CONSTRAINT [PK_CVC_AcidentesTrabalhoAusencias] PRIMARY KEY CLUSTERED 
(
	[KeyCVC_AcidentesTrabalhoAusencias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_Actividades]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_Actividades](
	[KeyCvC_Act] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[KeyCE] [int] NULL,
	[KeyContracto] [int] NULL,
	[DataActIni] [smalldatetime] NULL,
	[HoraActIni] [varchar](5) NULL,
	[DataActFim] [smalldatetime] NULL,
	[HoraActFim] [varchar](5) NULL,
	[CodArea] [varchar](2) NULL,
	[CodAgencia] [varchar](3) NULL,
	[CodIntF] [varchar](10) NULL,
	[NomeCF] [varchar](60) NULL,
	[Consultor1] [varchar](30) NULL,
	[Consultor2] [varchar](30) NULL,
	[Assunto] [varchar](60) NULL,
	[Tipo] [varchar](25) NULL,
	[Realizada] [bit] NULL,
	[Obrigatoria] [bit] NULL,
	[Relatorio] [text] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[TipoMsg] [int] NULL,
	[SMSID] [char](36) NULL,
	[DataFollowUp] [smalldatetime] NULL,
	[HoraFollowUp] [varchar](5) NULL,
 CONSTRAINT [PK_CVC_Actividades] PRIMARY KEY NONCLUSTERED 
(
	[KeyCvC_Act] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_Artigos]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_Artigos](
	[KeyCvC_Artigos] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[CodArtigo] [varchar](48) NOT NULL,
	[Quantidade] [decimal](7, 3) NOT NULL,
	[TemCaucao] [bit] NOT NULL,
	[ValorCaucao] [decimal](19, 6) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[DataMov] [smalldatetime] NULL,
	[VidaUtil] [smallint] NULL,
	[VidaUtilTipo] [varchar](1) NULL,
	[TipoRegisto] [varchar](3) NOT NULL,
	[KeyFHContracto] [int] NULL,
	[RefLote] [varchar](20) NULL,
	[CodAgencia] [varchar](3) NULL,
	[ValorCaucaoUnit] [decimal](19, 6) NULL,
	[ValorRegularizado] [decimal](19, 6) NULL,
	[NumPrestacoesADebitar] [tinyint] NULL,
	[NumPrestacoesDebitadas] [tinyint] NULL,
	[Contabilizado] [bit] NULL,
	[KeyCE] [int] NULL,
	[KeyCEProjecto] [int] NULL,
 CONSTRAINT [PK_CvC_Artigos] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_Artigos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_Caracteris]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_Caracteris](
	[KeyCvC_Caracteris] [int] IDENTITY(1,1) NOT NULL,
	[KeyCVC_DP] [int] NULL,
	[Tema] [varchar](25) NULL,
	[Caracteristica] [varchar](25) NULL,
	[Valor] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CvC_Caracteris] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_Caracteris] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CVC_CartaConducao]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CVC_CartaConducao](
	[KeyCVC_CartaConducao] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[KeyTiposCartaCond] [varchar](3) NULL,
	[DtEmissaoTiposCartaCond] [smalldatetime] NULL,
	[DtValTiposCartaCond] [smalldatetime] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CVC_CartaConducao] PRIMARY KEY CLUSTERED 
(
	[KeyCVC_CartaConducao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_CatProfAmb]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_CatProfAmb](
	[KeyCvC_CatProfAmb] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[Categoria] [varchar](100) NULL,
	[Nivel] [smallint] NULL,
	[Preferencia] [smallint] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Grupo] [varchar](10) NULL,
 CONSTRAINT [PK_CvC_CatProfAmb] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_CatProfAmb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_ChequeEscola]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_ChequeEscola](
	[KeyCvC_ChequeEscola] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[NomeAluno] [varchar](60) NULL,
	[DataNascimento] [smalldatetime] NULL,
	[Estabelecimento] [varchar](60) NULL,
	[EstabelecimentoContacto] [varchar](60) NULL,
	[EstabelecimentoTelefone] [varchar](20) NULL,
	[EstabelecimentoLocalidade] [varchar](40) NULL,
	[TipoPagamento] [int] NULL,
	[ValorUnitarioPag] [decimal](19, 6) NULL,
	[QuantidadePag] [decimal](19, 6) NULL,
	[FormatoPag] [varchar](25) NULL,
	[MesPag01] [bit] NULL,
	[MesPag02] [bit] NULL,
	[MesPag03] [bit] NULL,
	[MesPag04] [bit] NULL,
	[MesPag05] [bit] NULL,
	[MesPag06] [bit] NULL,
	[MesPag07] [bit] NULL,
	[MesPag08] [bit] NULL,
	[MesPag09] [bit] NULL,
	[MesPag10] [bit] NULL,
	[MesPag11] [bit] NULL,
	[MesPag12] [bit] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CvC_ChequeEscola] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_ChequeEscola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_DescJudiciais]    Script Date: 24-11-2017 16:18:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_DescJudiciais](
	[KeyCvC_DescJudiciais] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[EstadoProc] [tinyint] NOT NULL,
	[DescricaoEstado] [varchar](30) NULL,
	[NumeroProc] [varchar](30) NOT NULL,
	[DescricaoProc] [text] NOT NULL,
	[NumeroOrdemExec] [varchar](30) NULL,
	[ValorTotalPagar] [decimal](19, 6) NOT NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[TipoPagamento] [tinyint] NOT NULL,
	[ValorMensal] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[AgenteExecucao] [varchar](60) NULL,
	[NIB] [varchar](50) NULL,
	[RecebeAbaixoSMN] [bit] NULL,
	[DescPropUltimoMes] [bit] NULL,
	[MeioPag] [tinyint] NULL,
	[EntidadeMB] [varchar](5) NULL,
	[RefMB] [varchar](15) NULL,
	[AgenteExecucaoEmail] [varchar](128) NULL,
	[EnviaRelPorEmail] [bit] NULL,
	[CodAgencia] [varchar](3) NULL,
	[CodTipoPenhora] [varchar](5) NULL,
	[CodSolicitador] [varchar](10) NULL,
	[Referencia] [varchar](25) NULL,
	[KeyContracto] [int] NULL,
	[OutroMeioPag] [varchar](25) NULL,
	[RefPagamento] [varchar](128) NULL,
	[CodOrdenante] [varchar](10) NULL,
	[Ordenante] [varchar](60) NULL,
	[CodBeneficiario] [varchar](10) NULL,
	[Beneficiario] [varchar](60) NULL,
	[IBAN] [varchar](50) NULL,
	[Banco] [varchar](40) NULL,
	[CodBanco] [varchar](4) NULL,
	[BancoConta] [varchar](25) NULL,
	[Swift] [varchar](11) NULL,
	[DescJudOrigem] [int] NULL,
	[DescJudEntidade] [int] NULL,
	[NumComunic] [varchar](10) NULL,
	[ValorMinimoSalario] [decimal](19, 6) NULL,
	[PagTransf_AlteradoPor] [varchar](25) NULL,
	[PagTransf_AlteradoEm] [smalldatetime] NULL,
	[PagTransf_Motivo] [varchar](1024) NULL,
	[ProcMultiplasPenhoras] [bit] NULL,
 CONSTRAINT [PK_CvC_DescJudiciais] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_DescJudiciais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CVC_DescJudiciaisEmails]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CVC_DescJudiciaisEmails](
	[KeyEmail] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DescJudiciais] [int] NOT NULL,
	[Destinatario] [tinyint] NOT NULL,
	[Email] [varchar](70) NOT NULL,
	[Mensagem] [text] NOT NULL,
	[Modelo] [varchar](128) NULL,
	[Estado] [varchar](5) NOT NULL,
	[TipoAccao] [tinyint] NOT NULL,
	[DataEnvio] [datetime] NOT NULL,
	[EstadoEnvio] [tinyint] NOT NULL,
	[Erro] [text] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CVC_DescJudiciaisEmails] PRIMARY KEY CLUSTERED 
(
	[KeyEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CVC_DescJudiciaisHistorico]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CVC_DescJudiciaisHistorico](
	[KeyCVC_DescJudiciaisHistorico] [int] IDENTITY(1,1) NOT NULL,
	[KeyCVC_DescJudiciais] [int] NOT NULL,
	[DataHora] [smalldatetime] NOT NULL,
	[Utilizador] [varchar](25) NOT NULL,
	[Tipo] [varchar](1024) NOT NULL,
	[Observacoes] [varchar](1024) NULL,
 CONSTRAINT [PK_CVC_DescJudiciaisHistorico] PRIMARY KEY CLUSTERED 
(
	[KeyCVC_DescJudiciaisHistorico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_DescJudiciaisLin]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_DescJudiciaisLin](
	[KeyCvC_DescJudiciaisLin] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DescJudiciais] [int] NOT NULL,
	[KeyReciboC] [int] NOT NULL,
	[Valor] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[CodBanco] [varchar](4) NULL,
	[BanConta] [varchar](25) NULL,
	[NIB] [varchar](50) NULL,
	[Pago] [bit] NULL,
	[Contabilizado] [bit] NULL,
	[DataPago] [datetime] NULL,
	[Contabilizado_Por] [varchar](15) NULL,
	[Contabilizado_Em] [smalldatetime] NULL,
	[MeioPag] [tinyint] NULL,
	[EntidadeMB] [varchar](5) NULL,
	[RefMB] [varchar](15) NULL,
	[SentByEmail] [bit] NULL,
	[OutroMeioPag] [varchar](25) NULL,
	[RefPagamento] [varchar](128) NULL,
	[SolicitadorIBAN] [varchar](50) NULL,
	[SolicitadorBanco] [varchar](40) NULL,
	[SolicitadorCodBanco] [varchar](4) NULL,
	[SolicitadorBancoConta] [varchar](25) NULL,
	[SolicitadorSwift] [varchar](11) NULL,
 CONSTRAINT [PK_CvC_DescJudiciaisLin] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_DescJudiciaisLin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_DescJudiciaisNaoPenhoras]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_DescJudiciaisNaoPenhoras](
	[KeyCvC_DescJudiciaisNaoPenhora] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DescJudiciais] [int] NOT NULL,
	[Ano] [smallint] NOT NULL,
	[Mes] [tinyint] NOT NULL,
	[CodMotivo] [tinyint] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CvC_DescJudiciaisNaoPenhoras] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_DescJudiciaisNaoPenhora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CVC_DescJudiciaisStatus]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CVC_DescJudiciaisStatus](
	[KeyStatus] [int] IDENTITY(1,1) NOT NULL,
	[CodStatus] [int] NOT NULL,
	[Descricao] [varchar](25) NULL,
	[Visivel] [bit] NULL,
 CONSTRAINT [PK_CVC_DescJudiciaisStatus] PRIMARY KEY CLUSTERED 
(
	[KeyStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_Disp]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_Disp](
	[KeyDispo] [int] IDENTITY(1,1) NOT NULL,
	[KeyCVC_DP] [int] NULL,
	[DispoDescricao] [varchar](35) NULL,
	[DispoDom] [bit] NULL,
	[DispoSeg] [bit] NULL,
	[DispoTer] [bit] NULL,
	[DispoQua] [bit] NULL,
	[DispoQui] [bit] NULL,
	[DispoSex] [bit] NULL,
	[DispoSab] [bit] NULL,
	[DispoFtPt] [varchar](25) NULL,
	[DescricaoZona] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[DataDisp] [smalldatetime] NULL,
 CONSTRAINT [PK_CvC_Disp] PRIMARY KEY CLUSTERED 
(
	[KeyDispo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CVC_DocsAcidentesTrabalho]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CVC_DocsAcidentesTrabalho](
	[KeyCvC_DocsAcidentesTrabalho] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_AcidentesTrabalho] [int] NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[PathFicheiro] [varchar](256) NULL,
	[NomeFicheiro] [varchar](256) NULL,
	[Tamanho] [int] NULL,
	[CriadoPor] [varchar](60) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](60) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CvC_DocsAcidentesTrabalho] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_DocsAcidentesTrabalho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_DP]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_DP](
	[KeyCvC_DP] [int] IDENTITY(1,1) NOT NULL,
	[CodIntF] [varchar](10) NULL,
	[NomeCF] [varchar](60) NULL,
	[PNomeF] [varchar](15) NULL,
	[ApelidoF] [varchar](15) NULL,
	[NumContF] [varchar](20) NULL,
	[TipoF] [bit] NULL,
	[NumDiasF] [smallint] NULL,
	[Vencimento] [decimal](19, 6) NULL,
	[Vencimento_BM] [decimal](19, 6) NULL,
	[DtInscF] [smalldatetime] NULL,
	[EstadoF] [bit] NULL,
	[MoradaF] [varchar](60) NULL,
	[LocalidadeF] [varchar](40) NULL,
	[CPF] [varchar](8) NULL,
	[LCPF] [varchar](40) NULL,
	[Ntelef01F] [varchar](20) NULL,
	[Ntelef02F] [varchar](20) NULL,
	[NTelem01F] [varchar](20) NULL,
	[EmailF] [varchar](128) NULL,
	[NumBIF] [varchar](15) NULL,
	[ArqBIF] [varchar](25) NULL,
	[DtBIF] [smalldatetime] NULL,
	[DtNasF] [smalldatetime] NULL,
	[NacionalidadeF] [varchar](50) NULL,
	[EstCivilF] [varchar](20) NULL,
	[PaisNascF] [varchar](50) NULL,
	[DtValBIF] [smalldatetime] NULL,
	[DtContF] [smalldatetime] NULL,
	[SexoF] [varchar](1) NULL,
	[DesBFF] [varchar](40) NULL,
	[CodBFF] [varchar](4) NULL,
	[NumSSF] [varchar](11) NULL,
	[DtAdmissaoSSF] [varchar](7) NULL,
	[DtEmissaoSSF] [smalldatetime] NULL,
	[EstrangF] [bit] NULL,
	[NumAutRedF] [varchar](15) NULL,
	[DtEmissaoAutRedF] [smalldatetime] NULL,
	[DtValidadeAutRedF] [smalldatetime] NULL,
	[FunStatus] [smallint] NULL,
	[FotoF] [varchar](128) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodAgencia] [varchar](3) NULL,
	[CodArea] [varchar](2) NULL,
	[HABILIT_QP] [varchar](128) NULL,
	[CLASSIF_BS] [int] NULL,
	[CNP_QP] [varchar](15) NULL,
	[CODHABILIT_QP] [varchar](3) NULL,
	[CODNAC_QP] [varchar](3) NULL,
	[NaturalidadeF] [varchar](40) NULL,
	[CodCProf] [varchar](5) NULL,
	[CodInt] [varchar](15) NULL,
	[CodigoArquivo] [varchar](14) NULL,
	[DataInspMedica] [smalldatetime] NULL,
	[MotivoInspMedica] [varchar](40) NULL,
	[RecebeRecibosMail] [bit] NULL,
	[RecebeContratosMail] [bit] NULL,
	[RecebeFHMail] [bit] NULL,
	[Inet] [bit] NULL,
	[RecebeDRMail] [bit] NULL,
	[CodMRS] [varchar](3) NULL,
	[DtUltContacto] [smalldatetime] NULL,
	[UltDtDisp] [smalldatetime] NULL,
	[RecebeMsgAuto] [bit] NULL,
	[E101NomeProprio] [varchar](20) NULL,
	[E101Apelido] [varchar](20) NULL,
	[E101ApelidoAnterior] [varchar](20) NULL,
	[E101CaixaPostal] [varchar](15) NULL,
	[E101MoradaNumero] [varchar](10) NULL,
	[E101PaisResidencia] [varchar](50) NULL,
	[TemComAdmissaoSS] [bit] NULL,
	[DtComAdmissaoSS] [smalldatetime] NULL,
	[TemComCessacaoSS] [bit] NULL,
	[DtComCessacaoSS] [smalldatetime] NULL,
	[NTelem02F] [varchar](20) NULL,
	[TipoExame] [tinyint] NULL,
	[TemFichaAssinada] [bit] NULL,
	[IsInterno] [bit] NULL,
	[Importado] [bit] NULL,
	[DataImportacao] [datetime] NULL,
	[CDU_IdEstrutura] [varchar](20) NULL,
	[CartaoConducao] [varchar](25) NULL,
	[CartaCategA] [bit] NULL,
	[CartaCategB] [bit] NULL,
	[CartaCategC] [bit] NULL,
	[CartaCategD] [bit] NULL,
	[CartaCategA1] [bit] NULL,
	[CartaCategB1] [bit] NULL,
	[CartaCategC1] [bit] NULL,
	[CartaCategD1] [bit] NULL,
	[CartaCategBE] [bit] NULL,
	[CartaCategCE] [bit] NULL,
	[CartaCategDE] [bit] NULL,
	[CartaCategCE1] [bit] NULL,
	[CartaCategDE1] [bit] NULL,
	[TemViatura] [bit] NULL,
	[Matricula] [varchar](8) NULL,
	[CodTiposDocIdentif] [tinyint] NULL,
	[TipoCalculoPagRef] [tinyint] NULL,
	[CodRefExterna] [varchar](25) NULL,
 CONSTRAINT [PK_CvC_DP] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_DP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CVC_DP_PortalLog]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CVC_DP_PortalLog](
	[KeyCvC_DP_PortalLog] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[Tabela] [varchar](30) NOT NULL,
	[Coluna] [varchar](30) NOT NULL,
	[Accao] [char](1) NOT NULL,
	[ChaveBase] [int] NOT NULL,
	[Valor] [varchar](256) NULL,
	[PortalUtilizador] [varchar](256) NOT NULL,
	[DataUltimaModif] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_CVC_DP_PortalLog] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_DP] ASC,
	[Tabela] ASC,
	[Coluna] ASC,
	[Accao] ASC,
	[ChaveBase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_Escalas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_Escalas](
	[KeyEscalas] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[DataEscala] [smalldatetime] NULL,
	[Descricao] [varchar](50) NULL,
	[ValorPagar] [decimal](19, 6) NULL,
	[ValorFacturar] [decimal](19, 6) NULL,
	[Quantidade] [decimal](7, 3) NULL,
	[Zona] [varchar](25) NULL,
	[Estado] [smallint] NULL,
	[Aviso] [smallint] NULL,
	[Turno] [smallint] NULL,
	[EscalaSeg] [bit] NULL,
	[EscalaTer] [bit] NULL,
	[EscalaQua] [bit] NULL,
	[EscalaQui] [bit] NULL,
	[EscalaSex] [bit] NULL,
	[EscalaSab] [bit] NULL,
	[EscalaDom] [bit] NULL,
	[Consultor] [varchar](30) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[ValorExtra] [decimal](19, 6) NULL,
	[ReferenciaDoc] [varchar](25) NULL,
	[NotasTurno] [varchar](256) NULL,
	[Notas] [varchar](2048) NULL,
 CONSTRAINT [PK_CvC_Escalas] PRIMARY KEY CLUSTERED 
(
	[KeyEscalas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_ExamesMedicos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_ExamesMedicos](
	[KeyCvC_ExamesMedicos] [int] IDENTITY(1,1) NOT NULL,
	[KeyCVC_DP] [int] NOT NULL,
	[CodIntF] [varchar](10) NULL,
	[NomeCF] [varchar](60) NULL,
	[KeyTiposExame] [int] NULL,
	[KeyEstado] [int] NULL,
	[ObservacoesExame] [varchar](255) NULL,
	[KeyResultadoExameMedico] [int] NULL,
	[Custo] [decimal](9, 2) NULL,
	[ObservacoesResultado] [varchar](255) NULL,
	[Periodicidade] [tinyint] NULL,
	[DataExame] [smalldatetime] NULL,
	[KeyLocalExame] [int] NULL,
	[KeyMSHSTExameMedico] [int] NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[BalancoSocial] [tinyint] NULL,
	[Realizado] [bit] NULL,
	[Facturar] [bit] NULL,
	[ValorExame] [decimal](19, 6) NULL,
	[ValorFacturar] [decimal](19, 6) NULL,
	[CoeficienteFac] [decimal](7, 6) NULL,
	[KeyFacturaCab] [int] NULL,
	[KeyContracto] [int] NULL,
	[MarcacaoEfectuada] [bit] NULL,
	[FichaAptidao] [bit] NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[KeyPreFactura] [int] NULL,
	[KeyContactosSHST] [int] NULL,
	[FaturadoPeloPrestador] [tinyint] NULL,
	[FaturacaoFixa] [bit] NULL,
	[Hora] [varchar](5) NULL,
	[NumFacturaExameMedico] [varchar](15) NULL,
	[CodCategoria] [varchar](8) NULL,
	[Categoria] [varchar](100) NULL,
	[IsExameAssinado] [bit] NULL,
	[DataAssinatura] [smalldatetime] NULL,
	[PeriodicidadeExameMed] [tinyint] NULL,
	[RespRealizacaoExameMed] [bit] NULL,
	[Localidade] [varchar](50) NULL,
	[CodigoExameMedico] [varchar](10) NULL,
	[ClinicaExameMedico] [varchar](80) NULL,
	[IsExameReagendado] [bit] NULL,
	[IsExameComunicadoWS] [bit] NULL,
	[Ficheiro] [varchar](256) NULL,
	[FUser] [varchar](25) NULL,
	[FData] [smalldatetime] NULL,
	[SubCentro] [varchar](15) NULL,
	[LocalTrabalho] [varchar](30) NULL,
	[AnularFatura] [bit] NULL,
 CONSTRAINT [PK_CvC_ExamesMedicos] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_ExamesMedicos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_ExamesMedicos_Emails]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_ExamesMedicos_Emails](
	[KeyCvC_ExamesMedicos_Emails] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_ExamesMedicos] [int] NOT NULL,
	[Destinatario] [tinyint] NOT NULL,
	[Email] [varchar](128) NOT NULL,
	[Mensagem] [text] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[Modelo] [varchar](128) NULL,
	[Estado] [varchar](5) NULL,
	[TipoAccao] [tinyint] NULL,
	[DataEnvio] [datetime] NULL,
	[EstadoEnvio] [tinyint] NULL,
	[Erro] [text] NULL,
 CONSTRAINT [PK_CvC_ExamesMedicos_Emails] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_ExamesMedicos_Emails] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_ExamesMedicosContractos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_ExamesMedicosContractos](
	[KeyCvC_ExamesMedicosContractos] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_ExamesMedicos] [int] NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CvC_ExamesMedicosContractos] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_ExamesMedicosContractos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_ExamesMedicosLogAlteracoes]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_ExamesMedicosLogAlteracoes](
	[KeyCvC_ExamesMedicosLogAlteracoes] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_ExamesMedicos] [int] NOT NULL,
	[DataOperacao] [datetime] NOT NULL,
	[Operacao] [varchar](60) NOT NULL,
	[Observacao] [text] NOT NULL,
	[IsViaWebservice] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CvC_ExamesMedicosLogAlteracoes] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_ExamesMedicosLogAlteracoes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_Exp]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_Exp](
	[KeyCvC_Exp] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[Empresa] [varchar](60) NULL,
	[Atraves] [varchar](25) NULL,
	[Categoria] [varchar](100) NULL,
	[DtInicio] [smalldatetime] NULL,
	[DtFim] [smalldatetime] NULL,
	[MotivoSaida] [varchar](45) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Funcao] [text] NULL,
	[Continua] [bit] NULL,
	[Justificacao] [varchar](1024) NULL,
	[AvalPostoTrab] [varchar](128) NULL,
 CONSTRAINT [PK_CvC_Exp] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_Exp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_ForCur]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_ForCur](
	[KeyCvC_Cur] [int] IDENTITY(1,1) NOT NULL,
	[KeyCVC_DP] [int] NULL,
	[TipoCurso] [varchar](100) NULL,
	[DenominacaoCurso] [varchar](100) NULL,
	[CursoEsp] [varchar](100) NULL,
	[EntFormadora] [varchar](35) NULL,
	[NumHoras] [decimal](19, 6) NULL,
	[CopiaCert] [bit] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[DataConclusao] [smalldatetime] NULL,
 CONSTRAINT [PK_CvC_ForCur] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_Cur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_ForHl]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_ForHl](
	[KeyCvC_For] [int] IDENTITY(1,1) NOT NULL,
	[KeyCVC_DP] [int] NULL,
	[DescricaoHL01F] [varchar](100) NULL,
	[DescricaoHL02F] [varchar](100) NULL,
	[DescricaoHL03F] [varchar](100) NULL,
	[Escola] [varchar](40) NULL,
	[FaseCurso] [varchar](1) NULL,
	[CopiaD] [bit] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[DataConclusao] [smalldatetime] NULL,
 CONSTRAINT [PK_CvC_ForHl] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_For] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_Formacao]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_Formacao](
	[KeyCvC_Formacao] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[AnoReferencia] [varchar](4) NULL,
	[SituacaoFormacaoProf] [varchar](2) NULL,
	[PerRefFormacao] [varchar](2) NULL,
	[PerRefFormacao_2] [varchar](2) NULL,
	[PerRefFormacao_3] [varchar](2) NULL,
	[PerRefFormacao_4] [varchar](2) NULL,
	[AreaEducacao] [varchar](3) NULL,
	[Desc_Area_Educacao] [varchar](150) NULL,
	[Modalidade] [varchar](2) NULL,
	[Iniciativa] [varchar](2) NULL,
	[DuracaoHoras] [int] NOT NULL,
	[Horario] [varchar](2) NULL,
	[Entidade] [varchar](2) NULL,
	[Tipo_Cert_Diploma] [varchar](2) NULL,
	[NivelQualificacao] [varchar](2) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[KeyContracto_Formacao] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CVC_GesDoc]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CVC_GesDoc](
	[KeyCvC_GesDoc] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[TipoDoc] [varchar](40) NULL,
	[Notas] [varchar](60) NULL,
	[Filename] [varchar](60) NULL,
	[DataReg] [smalldatetime] NULL,
	[DataEmi] [smalldatetime] NULL,
	[DataVal] [smalldatetime] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyCvC_GesDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_Idioma]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_Idioma](
	[KeyCvC_Ling] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[Idioma] [varchar](15) NULL,
	[Fala] [varchar](1) NULL,
	[Leitura] [varchar](1) NULL,
	[Escrita] [varchar](1) NULL,
	[Traducao] [varchar](1) NULL,
	[EntidadeFor] [varchar](25) NULL,
	[Titulo] [varchar](20) NULL,
	[Copia] [bit] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CvC_Idioma] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_Ling] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_Independentes]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_Independentes](
	[KeyCvC_Independentes] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[KeyCE] [int] NOT NULL,
	[KeyCE_Projectos] [int] NOT NULL,
	[EstadoIndependente] [bit] NOT NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[Codigo] [varchar](5) NOT NULL,
	[Descricao] [varchar](60) NOT NULL,
	[TipoPag] [int] NOT NULL,
	[ValorUnitarioPag] [decimal](19, 6) NOT NULL,
	[QuantidadePag] [decimal](7, 3) NOT NULL,
	[ValorTotalPag] [decimal](19, 6) NOT NULL,
	[TipoRetencao] [int] NOT NULL,
	[TaxaRetencao] [decimal](7, 3) NOT NULL,
	[TaxaIVA] [decimal](7, 3) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[TaxaSSEncargo] [decimal](7, 3) NULL,
	[TipoRendimentos] [int] NULL,
	[SubCentro] [varchar](15) NULL,
	[LocalTrabalho] [varchar](30) NULL,
	[CentroCusto] [varchar](15) NULL,
	[CodAbonoIVA] [varchar](5) NULL,
	[Coeficiente] [decimal](19, 6) NULL,
	[Percentagem] [decimal](19, 6) NULL,
	[ValorUnitarioFact] [decimal](19, 6) NULL,
	[QuantidadeFact] [decimal](7, 3) NULL,
	[ValorTotalFact] [decimal](19, 6) NULL,
	[FormatoContPS] [varchar](15) NULL,
	[DocumentoDesc] [varchar](1024) NULL,
	[DiasDenunciaContracto] [smallint] NULL,
	[Notas] [varchar](1024) NULL,
	[IsEmpresa] [bit] NULL,
 CONSTRAINT [PK_CvC_Independentes] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_Independentes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_Info]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_Info](
	[KeyCvC_Info] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[AreaInfo] [varchar](25) NULL,
	[Tipo] [varchar](20) NULL,
	[Descricao] [varchar](25) NULL,
	[Nivel] [varchar](50) NULL,
	[EntidadeFor] [varchar](25) NULL,
	[CopiaDiploma] [bit] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CvC_Info] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_Info] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CVC_Mailing]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CVC_Mailing](
	[KeyCvC_Mail] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[CodAgencia] [varchar](10) NULL,
	[CodArea] [varchar](2) NULL,
	[CodIntF] [varchar](10) NULL,
	[NomeCF] [varchar](60) NULL,
	[EmailF] [varchar](128) NULL,
	[NTelem01F] [varchar](20) NULL,
	[Consultor1] [varchar](30) NULL,
	[Assunto] [varchar](60) NULL,
	[Titulo] [varchar](25) NULL,
	[Tipo] [int] NULL,
	[Relatorio] [text] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[SMSID] [char](36) NULL,
	[MensagemMotivo] [tinyint] NULL,
 CONSTRAINT [PK_CVC_Mailing] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_Mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_MapeamentoRubricaEscalas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_MapeamentoRubricaEscalas](
	[KeyCvC_MapeamentoRubricaEscala] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_Independentes] [int] NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[Descricao] [varchar](60) NOT NULL,
	[CodAbono] [varchar](5) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CvC_MapeamentoRubricaEscalas] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_MapeamentoRubricaEscala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CVC_MarcacaoFerias]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CVC_MarcacaoFerias](
	[KeyCvC_MarcacaoFerias] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NULL,
	[KeyContractoProjecto] [int] NULL,
	[KeyCvC_DP] [int] NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[Dias] [smallint] NULL,
	[Nome] [varchar](60) NULL,
	[Motivo] [varchar](20) NULL,
	[MetodoCompensacao] [varchar](50) NULL,
	[Estado] [tinyint] NULL,
	[PedidoPor] [varchar](60) NULL,
	[PedidoEmail] [varchar](60) NULL,
	[PedidoEm] [smalldatetime] NULL,
	[AprovadoPor] [varchar](60) NULL,
	[AprovadoEm] [smalldatetime] NULL,
	[CriadoPor] [varchar](60) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](60) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Ano] [smallint] NULL,
 CONSTRAINT [PK_CVC_MarcacaoFerias] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_MarcacaoFerias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_Outros]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_Outros](
	[KeyCvC_Outros] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[TitularIRS] [smallint] NULL,
	[NumDependentes] [smallint] NULL,
	[RetencaoIRS] [bit] NULL,
	[AcresceIVA] [bit] NULL,
	[Recibos] [bit] NULL,
	[MeioRecebimento] [varchar](25) NULL,
	[Banco] [varchar](40) NULL,
	[NIB] [varchar](50) NULL,
	[NomePai] [varchar](40) NULL,
	[NomeMae] [varchar](40) NULL,
	[SMilitar] [bit] NULL,
	[DtSMilitar] [smalldatetime] NULL,
	[CapAng] [varchar](25) NULL,
	[Obs] [text] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Avaliacao] [smallint] NULL,
	[Assiduidade] [smallint] NULL,
	[Consultor] [varchar](30) NULL,
	[SEGSOCIAL] [varchar](3) NULL,
	[SEGURO] [varchar](3) NULL,
	[IRSFIXO] [decimal](19, 6) NULL,
	[SINDICATO] [varchar](3) NULL,
	[CodSocSind] [varchar](10) NULL,
	[REG] [tinyint] NULL,
	[Recomendacoes] [varchar](250) NULL,
	[IBAN] [varchar](50) NULL,
	[SWIFT] [varchar](11) NULL,
	[TitularIBAN] [varchar](35) NULL,
	[LocalidadeIBAN] [varchar](35) NULL,
	[PaisIBAN] [varchar](3) NULL,
	[UserNIBMuda] [varchar](6) NULL,
	[RazaoNIBMuda] [varchar](1000) NULL,
	[NumeroCES] [varchar](8) NULL,
	[InstituicaoCES] [varchar](4) NULL,
	[NumeroCartaoCES] [varchar](20) NULL,
	[DataValidadeCES] [smalldatetime] NULL,
	[NotasRecibos] [varchar](255) NULL,
	[AvaliacaoDesc] [text] NULL,
	[SubRef_RecPorCartao] [bit] NULL,
	[SubRef_NumCartao] [varchar](25) NULL,
	[SubRef_NumNIB] [varchar](50) NULL,
	[SubRef_RecPoreTicket] [bit] NULL,
	[CodDepartamento] [varchar](10) NULL,
	[SubRef_NumCartaoPlastico] [varchar](25) NULL,
	[CodigoSAMS] [varchar](2) NULL,
	[NumeroBeneficiarioSAMS] [varchar](25) NULL,
	[CodigoFSA] [varchar](2) NULL,
	[NumeroBeneficiarioFSA] [varchar](25) NULL,
	[SubRef_Banco] [varchar](40) NULL,
	[SubRef_Swift] [varchar](11) NULL,
	[SubRef_NumIBAN] [varchar](50) NULL,
	[DataNibMuda] [smalldatetime] NULL,
	[SubRef_AlteradoPor] [varchar](25) NULL,
	[SubRef_AlteradoEm] [smalldatetime] NULL,
	[SubRef_Motivo] [varchar](1024) NULL,
	[TipoCartao] [tinyint] NULL,
 CONSTRAINT [PK_CvC_Outros] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_DP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CVC_PortalColaboradores]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CVC_PortalColaboradores](
	[KeyCvC_PortalColaboradores] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[JaAutorizado] [bit] NOT NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_CVC_PortalColaboradores] PRIMARY KEY CLUSTERED 
(
	[KeyCvC_DP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CvC_SegurosSaude]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CvC_SegurosSaude](
	[KeyCvC_SegurosSaude] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[Nome] [varchar](60) NOT NULL,
	[DataNascimento] [smalldatetime] NOT NULL,
	[Parentesco] [varchar](25) NOT NULL,
	[ValorCusto] [decimal](19, 6) NOT NULL,
	[DescontoAssociado] [varchar](5) NOT NULL,
	[Seguradora] [varchar](40) NOT NULL,
	[ApoliceSeguro] [varchar](25) NOT NULL,
	[IsProprio] [bit] NOT NULL,
	[TemSeguroSaude] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[CodGrauParentesco] [varchar](6) NULL,
 CONSTRAINT [PK_KeyCvC_SegurosSaude] PRIMARY KEY NONCLUSTERED 
(
	[KeyCvC_SegurosSaude] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CVC_Veiculos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CVC_Veiculos](
	[KeyCVC_Veiculos] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[KeyTiposVeiculo] [int] NULL,
	[DescricaoTiposVeiculo] [varchar](50) NULL,
	[Matricula] [varchar](10) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_CVC_Veiculos] PRIMARY KEY CLUSTERED 
(
	[KeyCVC_Veiculos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DefinicoesEmpresa]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DefinicoesEmpresa](
	[KeyDefinicoesEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[Aplicacao] [varchar](10) NOT NULL,
	[Seccao] [varchar](15) NOT NULL,
	[Propriedade] [varchar](25) NOT NULL,
	[Valor] [varchar](255) NULL,
 CONSTRAINT [PK_DefinicoesEmpresa] PRIMARY KEY CLUSTERED 
(
	[Aplicacao] ASC,
	[Seccao] ASC,
	[Propriedade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[KeyDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Descricao] [varchar](30) NULL,
	[Classificacao] [varchar](20) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Descontos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Descontos](
	[KeyDescontos] [int] IDENTITY(1,1) NOT NULL,
	[CodDesconto] [varchar](5) NULL,
	[DES] [varchar](60) NULL,
	[PVA] [smallint] NULL,
	[VAL] [decimal](19, 6) NULL,
	[VAL_BM] [decimal](19, 6) NULL,
	[VMI] [decimal](19, 6) NULL,
	[VMI_BM] [decimal](19, 6) NULL,
	[GRU] [varchar](40) NULL,
	[GRUPO] [smallint] NULL,
	[CONTA] [varchar](15) NULL,
	[ORG] [varchar](40) NULL,
	[USO] [bit] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[ACTIVO] [tinyint] NULL,
	[PrimaveraTipoArtigoFact] [varchar](3) NULL,
	[PrimaveraTipoArtigoSal] [varchar](3) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_Descontos] PRIMARY KEY CLUSTERED 
(
	[KeyDescontos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DescontosFixos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DescontosFixos](
	[KeyDescFixo] [int] IDENTITY(1,1) NOT NULL,
	[KeyCVC_DP] [int] NOT NULL,
	[Ano] [varchar](4) NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[CodDesconto] [varchar](5) NULL,
	[DescDesconto] [varchar](40) NULL,
	[Valor] [decimal](19, 6) NULL,
	[Activo] [bit] NOT NULL,
	[DataUltDesc] [smalldatetime] NULL,
	[Obs] [text] NOT NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_DescontosFixos] PRIMARY KEY CLUSTERED 
(
	[KeyDescFixo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Diarios]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diarios](
	[KeyDiarios] [int] IDENTITY(1,1) NOT NULL,
	[Diario] [int] NULL,
	[Descricao] [nvarchar](40) NULL,
	[Contador] [nvarchar](15) NULL,
	[TipoContador] [smallint] NULL,
	[TotDebito] [float] NULL,
	[TotDebito_BM] [float] NULL,
	[TotCredito] [float] NULL,
	[TotCredito_BM] [float] NULL,
	[DebitoCredito] [real] NULL,
	[Origem] [nvarchar](15) NULL,
	[Estado] [nvarchar](10) NULL,
	[Data] [datetime] NULL,
	[User] [nvarchar](6) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DistribuicaoCC]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DistribuicaoCC](
	[KeyDistribuicaoCC] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[CodAgencia] [varchar](3) NOT NULL,
	[CentroCusto] [varchar](15) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodAreaAct] [varchar](2) NULL,
 CONSTRAINT [PK_DistribuicaoCC] PRIMARY KEY CLUSTERED 
(
	[KeyCE] ASC,
	[CodAgencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Distritos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Distritos](
	[KeyDist] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoDist] [varchar](40) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_Distritos] PRIMARY KEY CLUSTERED 
(
	[KeyDist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Divisas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Divisas](
	[KeyDivisas] [int] IDENTITY(1,1) NOT NULL,
	[Divisa] [varchar](50) NULL,
	[Descricao] [varchar](50) NULL,
	[Compra] [decimal](19, 6) NULL,
	[Compra_BM] [decimal](19, 6) NULL,
	[Venda] [decimal](19, 6) NULL,
	[Venda_BM] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[ZONAEURO] [bit] NULL,
	[Arredonda] [int] NULL,
 CONSTRAINT [PK_Divisas] PRIMARY KEY CLUSTERED 
(
	[KeyDivisas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DJ_MotivosNaoPenhoras]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DJ_MotivosNaoPenhoras](
	[KeyDJ_MotivosNaoPenhoras] [int] IDENTITY(1,1) NOT NULL,
	[CodMotivo] [tinyint] NOT NULL,
	[DescricaoMotivo] [varchar](50) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_DJ_MotivosNaoPenhoras] PRIMARY KEY CLUSTERED 
(
	[CodMotivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DMRTransf]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DMRTransf](
	[KeyDMRTransf] [int] IDENTITY(1,1) NOT NULL,
	[MesAnoReferencia] [varchar](7) NOT NULL,
	[MesAnoDestino] [varchar](7) NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[CodTipoRend] [varchar](3) NOT NULL,
	[LocalRend] [int] NOT NULL,
	[TrabExtrangeiro] [bit] NOT NULL,
	[SegSocialNIPC] [varchar](18) NOT NULL,
	[TotalIRS_A_BM] [decimal](18, 2) NOT NULL,
	[TotalIRS_I_BM] [decimal](18, 2) NOT NULL,
	[TotalIRS_H_BM] [decimal](18, 2) NOT NULL,
	[TotalTRIB_A_BM] [decimal](18, 2) NOT NULL,
	[TotalTRIB_I_BM] [decimal](18, 2) NOT NULL,
	[TotalTRIB_H_BM] [decimal](18, 2) NOT NULL,
	[TotalDISP_A_BM] [decimal](18, 2) NOT NULL,
	[TotalDISP_I_BM] [decimal](18, 2) NOT NULL,
	[TotalDISP_H_BM] [decimal](18, 2) NOT NULL,
	[ValorIsento] [decimal](18, 2) NOT NULL,
	[TotalIsento_A_BM] [decimal](18, 2) NOT NULL,
	[TotalIsento_I_BM] [decimal](18, 2) NOT NULL,
	[TotalIsento_H_BM] [decimal](18, 2) NOT NULL,
	[DeducaoSegSocial_BM] [decimal](18, 2) NOT NULL,
	[DeducaoSindicato_BM] [decimal](18, 2) NOT NULL,
	[DescObrigatorios_BM] [decimal](18, 2) NOT NULL,
	[TotalAbonos_BM] [decimal](18, 2) NOT NULL,
	[TotalExclusoes_BM] [decimal](18, 2) NOT NULL,
	[TotalSobreTaxa_BM] [decimal](18, 2) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_DMRTransf] PRIMARY KEY CLUSTERED 
(
	[KeyDMRTransf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocPedidosCompra]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocPedidosCompra](
	[KeyDocPedidosCompra] [int] IDENTITY(1,1) NOT NULL,
	[CodTipoDoc] [varchar](3) NOT NULL,
	[TipoDoc] [varchar](5) NOT NULL,
	[Serie] [varchar](10) NOT NULL,
	[InternalNumber] [int] NOT NULL,
	[DataPedidoCompra] [smalldatetime] NOT NULL,
	[Descricao] [varchar](60) NOT NULL,
	[CodAgencia] [varchar](5) NULL,
	[CodArea] [varchar](2) NULL,
	[KeyCE] [int] NOT NULL,
	[CodIntCE] [varchar](10) NOT NULL,
	[NomeCE] [varchar](60) NOT NULL,
	[MoradaCE] [varchar](60) NOT NULL,
	[LocalidadeCE] [varchar](40) NOT NULL,
	[CodPostalCE] [varchar](8) NOT NULL,
	[CodPostalLocalidadeCE] [varchar](40) NOT NULL,
	[NumContCE] [varchar](18) NOT NULL,
	[GrupoCE] [varchar](5) NOT NULL,
	[KeyCEProjecto] [int] NULL,
	[CodProjecto] [varchar](10) NULL,
	[KeyModoPagamento] [int] NULL,
	[DescModoPagamento] [varchar](25) NULL,
	[KeyPrazoPagamento] [int] NULL,
	[DescPrazoPagamento] [varchar](15) NULL,
	[KeyDivisa] [int] NULL,
	[CodDivisa] [varchar](4) NULL,
	[DescDivisa] [varchar](15) NULL,
	[CodCentroCusto] [varchar](15) NULL,
	[DescCentroCusto] [varchar](25) NULL,
	[NumEncomenda] [varchar](25) NULL,
	[Observacoes] [varchar](512) NULL,
	[DescFornecedor] [decimal](7, 3) NOT NULL,
	[DescFinanceiro] [decimal](7, 3) NOT NULL,
	[TotalIliquido] [decimal](19, 6) NOT NULL,
	[TotalDesconto] [decimal](19, 6) NOT NULL,
	[TotalIva] [decimal](19, 6) NOT NULL,
	[TotalLiquido] [decimal](19, 6) NOT NULL,
	[StatusDoc] [smallint] NULL,
	[StatusWorkflow] [tinyint] NULL,
	[PedidoPor] [varchar](25) NULL,
	[PedidoEm] [smalldatetime] NULL,
	[AprovadoPor] [varchar](25) NULL,
	[AprovadoEm] [smalldatetime] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[KeyCE_Forn] [int] NULL,
	[CodIntCE_Forn] [varchar](10) NULL,
	[NomeCE_Forn] [varchar](60) NULL,
	[MoradaCE_Forn] [varchar](60) NULL,
	[LocalidadeCE_Forn] [varchar](40) NULL,
	[CodPostalCE_Forn] [varchar](8) NULL,
	[CodPostalLocalidadeCE_Forn] [varchar](40) NULL,
	[NumContCE_Forn] [varchar](18) NULL,
	[GrupoCE_Forn] [varchar](5) NULL,
	[TotalJaRegularizado] [decimal](19, 6) NULL,
	[ExpDocGiaf] [bit] NULL,
	[ExpDocGiaf_Por] [varchar](15) NULL,
	[ExpDocGiaf_Em] [smalldatetime] NULL,
	[Contabilizado] [bit] NULL,
	[Contabilizado_Por] [varchar](15) NULL,
	[Contabilizado_Em] [smalldatetime] NULL,
 CONSTRAINT [PK_DocPedidosCompra] PRIMARY KEY CLUSTERED 
(
	[KeyDocPedidosCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocPedidosCompraDetail]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocPedidosCompraDetail](
	[KeyDocPedidosCompraDetail] [int] IDENTITY(1,1) NOT NULL,
	[KeyDocPedidosCompra] [int] NOT NULL,
	[KeyArtigo] [int] NULL,
	[CodArtigo] [varchar](5) NULL,
	[DescArtigo] [varchar](80) NULL,
	[ValorUnitario] [decimal](19, 6) NOT NULL,
	[Quantidade] [decimal](7, 3) NOT NULL,
	[TaxaDesconto] [decimal](7, 3) NOT NULL,
	[TaxaIva] [decimal](7, 3) NOT NULL,
	[ValorIliquido] [decimal](19, 6) NOT NULL,
	[ValorDesconto] [decimal](19, 6) NOT NULL,
	[ValorIva] [decimal](19, 6) NOT NULL,
	[ValorLiquido] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_DocPedidosCompraDetail] PRIMARY KEY CLUSTERED 
(
	[KeyDocPedidosCompraDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocPedidosCompraResumoIVA]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocPedidosCompraResumoIVA](
	[KeyDocPedidosCompraResumoIVA] [int] IDENTITY(1,1) NOT NULL,
	[KeyDocPedidosCompra] [int] NOT NULL,
	[TaxaIva] [decimal](7, 3) NOT NULL,
	[ValorIncidencia] [decimal](19, 6) NOT NULL,
	[ValorIva] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_DocPedidosCompraResumoIVA] PRIMARY KEY CLUSTERED 
(
	[KeyDocPedidosCompraResumoIVA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocPedidosCompraSeries]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocPedidosCompraSeries](
	[KeyDocPedidoCompraSerie] [int] IDENTITY(1,1) NOT NULL,
	[Serie] [varchar](10) NOT NULL,
	[Descricao] [varchar](25) NOT NULL,
	[SerieTemValidade] [bit] NOT NULL,
	[SerieDtValInicio] [smalldatetime] NULL,
	[SerieDtValFim] [smalldatetime] NULL,
	[Activa] [bit] NOT NULL,
	[PreDefinida] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_DocPedidosCompraSeries] PRIMARY KEY CLUSTERED 
(
	[Serie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocPedidosCompraSeriesContas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocPedidosCompraSeriesContas](
	[KeyDocPedidosCompraSeriesContas] [int] IDENTITY(1,1) NOT NULL,
	[KeyDocPedidosCompraSeries] [int] NOT NULL,
	[GrupoMercado] [varchar](5) NOT NULL,
	[GrupoIVA] [char](1) NOT NULL,
	[Taxa] [decimal](7, 3) NOT NULL,
	[ContaVendas] [varchar](22) NULL,
	[ContaIVA] [varchar](22) NULL,
	[CodigoIVA] [varchar](3) NULL,
	[ContaAnalitica] [varchar](22) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_DocPedidosCompraSeriesContas] PRIMARY KEY CLUSTERED 
(
	[KeyDocPedidosCompraSeries] ASC,
	[GrupoMercado] ASC,
	[GrupoIVA] ASC,
	[Taxa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EntidadesBancarias]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EntidadesBancarias](
	[KeyEntidadeBancaria] [int] IDENTITY(1,1) NOT NULL,
	[CodEntidade] [varchar](10) NOT NULL,
	[EntidadeBancaria] [varchar](40) NOT NULL,
	[NibPrefix] [varchar](4) NOT NULL,
	[IbanPrefix] [varchar](8) NOT NULL,
	[SwiftCode] [varchar](11) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_EntidadesBancarias] PRIMARY KEY CLUSTERED 
(
	[CodEntidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Especialidade]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Especialidade](
	[KeyEspecialidade] [int] IDENTITY(1,1) NOT NULL,
	[CodEspecificacao] [varchar](4) NOT NULL,
	[Descricao] [varchar](60) NOT NULL,
	[Activo] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_Especialidade] PRIMARY KEY CLUSTERED 
(
	[KeyEspecialidade] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Establecimentos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Establecimentos](
	[KeyEstablecimento] [int] IDENTITY(1,1) NOT NULL,
	[Establecimento] [varchar](40) NULL,
	[NumContrib] [varchar](19) NULL,
	[CodActEco] [varchar](5) NULL,
	[AnoExerc] [smallint] NULL,
	[Morada] [varchar](50) NULL,
	[Localidade] [varchar](40) NULL,
	[CodPostal] [varchar](8) NULL,
	[LocPostal] [varchar](40) NULL,
	[Telefone] [varchar](25) NULL,
	[Fax] [varchar](25) NULL,
	[Telex] [varchar](25) NULL,
	[DtIniAct] [smalldatetime] NULL,
	[BancoEmpresa] [varchar](40) NULL,
	[NIBEmpresa] [varchar](50) NULL,
	[ServicoSocial] [varchar](40) NULL,
	[ServSocialNumero] [varchar](20) NULL,
	[Distrito] [varchar](40) NULL,
	[Concelho] [varchar](40) NULL,
	[Freguesia] [varchar](40) NULL,
	[NumFunc] [smallint] NULL,
	[NumBolTrab] [varchar](20) NULL,
	[DtBolMTrab] [smalldatetime] NULL,
	[DtTabSalarial] [smalldatetime] NULL,
	[InstRegTrabalho] [varchar](40) NULL,
	[Financas] [varchar](40) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodAgencia] [varchar](3) NULL,
	[Email] [varchar](128) NULL,
	[CodDistConcFreg] [varchar](6) NULL,
	[CodInstRegTrabalho] [int] NULL,
	[BusinessUnit] [varchar](10) NULL,
	[CodCRSS] [varchar](3) NULL,
	[emailUser] [varchar](15) NULL,
	[emailPassword] [varchar](15) NULL,
	[NumChequesMax] [int] NULL,
	[CentroCusto] [varchar](15) NULL,
	[CodAgenciaAlias] [varchar](15) NULL,
	[DescricaoZona] [varchar](25) NULL,
	[UsaLimitesPorAgencia] [bit] NULL,
	[LimRubHorasR01] [decimal](19, 6) NULL,
	[LimiteHorasR01PorTrab] [bit] NULL,
	[AgenciaMapWS] [varchar](4) NULL,
 CONSTRAINT [PK_Establecimentos] PRIMARY KEY NONCLUSTERED 
(
	[KeyEstablecimento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoCivil](
	[KeyECivil] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoECivil] [varchar](20) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_EstadoCivil] PRIMARY KEY CLUSTERED 
(
	[KeyECivil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadoExameMedico]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoExameMedico](
	[KeyEstadoExameMedico] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](5) NULL,
	[designacao] [varchar](20) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[TipoAcao] [tinyint] NULL,
	[EnviarEmailPrestador] [bit] NULL,
	[ModeloPrestador] [varchar](128) NULL,
	[EnviarEmailColaborador] [bit] NULL,
	[ModeloColaborador] [varchar](128) NULL,
	[PorDefeito] [bit] NULL,
	[MarcacaoEfetuada] [bit] NULL,
	[Realizado] [bit] NULL,
	[FichaAptidao] [bit] NULL,
	[GestDoc_Impresso] [bit] NULL,
	[GestDoc_Conferido] [bit] NULL,
	[GestDoc_Digitalizado] [bit] NULL,
	[UsaEstadoExamesMedicos] [bit] NULL,
	[UsaGestaoDocumental] [bit] NULL,
	[CodigoEstadoWS] [int] NULL,
 CONSTRAINT [PK_EstadoExameMedico] PRIMARY KEY CLUSTERED 
(
	[KeyEstadoExameMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExtractoBancarioCAB]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtractoBancarioCAB](
	[KeyExtractoBancarioCAB] [int] IDENTITY(1,1) NOT NULL,
	[NumeroRefTransacao] [varchar](25) NOT NULL,
	[IdentificacaoConta] [varchar](40) NOT NULL,
	[NumeroExtracto] [int] NOT NULL,
	[NumeroSequencial] [int] NOT NULL,
	[DataSaldoInicial] [smalldatetime] NOT NULL,
	[MoedaContaInicial] [varchar](3) NOT NULL,
	[SaldoInicial] [decimal](19, 6) NOT NULL,
	[SinalSaldoInicial] [varchar](1) NOT NULL,
	[DataSaldoFinal] [smalldatetime] NOT NULL,
	[MoedaContaFinal] [varchar](3) NOT NULL,
	[SaldoFinal] [decimal](19, 6) NOT NULL,
	[SinalSaldoFinal] [varchar](1) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ExtractoBancarioCAB] PRIMARY KEY CLUSTERED 
(
	[KeyExtractoBancarioCAB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExtractoBancarioDET]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtractoBancarioDET](
	[KeyExtractoBancarioDET] [int] IDENTITY(1,1) NOT NULL,
	[KeyExtractoBancarioCAB] [int] NOT NULL,
	[DataValor] [smalldatetime] NOT NULL,
	[Valor] [decimal](19, 6) NOT NULL,
	[ReferenciaBanco] [varchar](25) NOT NULL,
	[ReferenciaCliente] [varchar](25) NOT NULL,
	[Sinal] [varchar](1) NOT NULL,
	[CodigoTransacao] [varchar](4) NOT NULL,
	[InformacaoDetentorConta] [varchar](128) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[ValorUtilizado] [decimal](19, 6) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_ExtractoBancarioDET] PRIMARY KEY CLUSTERED 
(
	[KeyExtractoBancarioDET] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacPoc]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacPoc](
	[KeyFacPoc] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [char](3) NULL,
	[TipoDoc] [int] NULL,
	[VVTIVA0N] [varchar](22) NULL,
	[VVTIVA17N] [varchar](22) NULL,
	[VVTIVA0UE] [varchar](22) NULL,
	[VVTIVA17UE] [varchar](22) NULL,
	[VVTIVA0O] [varchar](22) NULL,
	[VVTIVA17O] [varchar](22) NULL,
	[VDF0N] [varchar](22) NULL,
	[VDF17N] [varchar](22) NULL,
	[VDF0UE] [varchar](22) NULL,
	[VDF17UE] [varchar](22) NULL,
	[VDF0O] [varchar](22) NULL,
	[VDF17O] [varchar](22) NULL,
	[VIVA0N] [varchar](22) NULL,
	[VIVA17N] [varchar](22) NULL,
	[VIVA0UE] [varchar](22) NULL,
	[VIVA17UE] [varchar](22) NULL,
	[VIVA0O] [varchar](22) NULL,
	[VIVA17O] [varchar](22) NULL,
	[USER] [varchar](6) NULL,
	[DATA] [smalldatetime] NULL,
	[Descricao] [varchar](25) NULL,
	[Diario] [varchar](10) NULL,
	[VVTIVA5N] [varchar](22) NULL,
	[VVTIVA12N] [varchar](22) NULL,
	[VVTIVA5UE] [varchar](22) NULL,
	[VVTIVA12UE] [varchar](22) NULL,
	[VVTIVA5O] [varchar](22) NULL,
	[VVTIVA12O] [varchar](22) NULL,
	[VDF5N] [varchar](22) NULL,
	[VDF12N] [varchar](22) NULL,
	[VDF5UE] [varchar](22) NULL,
	[VDF12UE] [varchar](22) NULL,
	[VDF5O] [varchar](22) NULL,
	[VDF12O] [varchar](22) NULL,
	[VIVA5N] [varchar](22) NULL,
	[VIVA12N] [varchar](22) NULL,
	[VIVA5UE] [varchar](22) NULL,
	[VIVA12UE] [varchar](22) NULL,
	[VIVA5O] [varchar](22) NULL,
	[VIVA12O] [varchar](22) NULL,
	[Serie] [varchar](10) NULL,
	[DescricaoDA] [varchar](25) NULL,
	[TipoDocDA] [varchar](10) NULL,
	[TemDocAlternativo] [bit] NULL,
	[SufixoCC] [varchar](6) NULL,
	[IncluirMapaIVA] [bit] NULL,
	[SerieTemValidade] [bit] NULL,
	[SerieDtValInicio] [smalldatetime] NULL,
	[SerieDtValFim] [smalldatetime] NULL,
	[ReportTemplate] [varchar](128) NULL,
	[IsDocRectificacao] [bit] NULL,
	[TemIvaCaixa] [bit] NULL,
	[TemDataPreDefinida] [bit] NULL,
	[DataPreDefinida] [smalldatetime] NULL,
 CONSTRAINT [PK_FacPoc] PRIMARY KEY NONCLUSTERED 
(
	[KeyFacPoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacPocContas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacPocContas](
	[KeyFacPocContas] [int] IDENTITY(1,1) NOT NULL,
	[KeyFacPoc] [int] NOT NULL,
	[GrupoMercado] [varchar](5) NOT NULL,
	[GrupoIVA] [char](1) NOT NULL,
	[Taxa] [decimal](7, 3) NOT NULL,
	[ContaVendas] [varchar](22) NULL,
	[ContaIVA] [varchar](22) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodigoIVA] [varchar](3) NULL,
	[ContaAnalitica] [varchar](22) NULL,
 CONSTRAINT [PK_FacPocContas] PRIMARY KEY CLUSTERED 
(
	[KeyFacPoc] ASC,
	[GrupoMercado] ASC,
	[GrupoIVA] ASC,
	[Taxa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacPocContasDET]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacPocContasDET](
	[KeyFacPocContasDET] [int] IDENTITY(1,1) NOT NULL,
	[KeyFacPocContas] [int] NOT NULL,
	[CodRubrica] [varchar](5) NOT NULL,
	[ContaVendas] [varchar](25) NOT NULL,
	[ContaIVA] [varchar](22) NOT NULL,
	[CodigoIVA] [varchar](3) NOT NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_FacPocContasDET] PRIMARY KEY CLUSTERED 
(
	[KeyFacPocContas] ASC,
	[CodRubrica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacReciboCab]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacReciboCab](
	[KeyReciboCab] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NULL,
	[NumRecibo] [int] NULL,
	[DtRecibo] [smalldatetime] NULL,
	[CodIntCE] [varchar](10) NULL,
	[NomeCE] [varchar](60) NULL,
	[MoradaCE] [varchar](100) NULL,
	[LocalidadeCE] [varchar](40) NULL,
	[CPCE] [varchar](8) NULL,
	[LCPCE] [varchar](40) NULL,
	[Ntelef01CE] [varchar](20) NULL,
	[NumContCE] [varchar](18) NULL,
	[TotValorAberto] [decimal](19, 6) NULL,
	[TotValorAberto_BM] [decimal](19, 6) NULL,
	[TotValorRequisitado] [decimal](19, 6) NULL,
	[TotValorRequisitado_BM] [decimal](19, 6) NULL,
	[Processado] [bit] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodAgencia] [varchar](3) NULL,
	[Divisa] [varchar](5) NULL,
	[Cambio] [int] NULL,
	[MeioPagamentoCE] [varchar](25) NULL,
	[BancoCE] [varchar](40) NULL,
	[NDocCE] [varchar](50) NULL,
	[TotValorAberto_ESC] [decimal](19, 6) NULL,
	[CAMBIO_ESC] [decimal](19, 6) NULL,
	[TotValorRequisitado_ESC] [decimal](19, 6) NULL,
	[IndicaMoeda] [bit] NULL,
	[CodArea] [varchar](2) NULL,
	[Contabilizado] [bit] NULL,
	[TxRetencaoIRC] [decimal](7, 3) NULL,
	[RetencaoIRC] [decimal](19, 6) NULL,
	[RetencaoIRC_BM] [decimal](19, 6) NULL,
	[ContaRetIRC] [varchar](22) NULL,
	[PaisCE] [varchar](60) NULL,
	[RetencaoIRC_ESC] [decimal](19, 6) NULL,
	[DataEmissaoPAG] [smalldatetime] NULL,
	[ReferenciaLote] [varchar](15) NULL,
	[TotalIliquido] [decimal](19, 6) NULL,
	[TotalIliquido_BM] [decimal](19, 6) NULL,
	[TotalIliquido_ESC] [decimal](19, 6) NULL,
	[DescontoFinanc] [decimal](19, 6) NULL,
	[DescontoFinanc_BM] [decimal](19, 6) NULL,
	[DescontoFinanc_ESC] [decimal](19, 6) NULL,
	[DescontoFinancConta] [varchar](22) NULL,
	[Contabilizado_Por] [varchar](15) NULL,
	[Contabilizado_Em] [smalldatetime] NULL,
	[StatusRec] [smallint] NULL,
	[StatusRecRCF] [varchar](128) NULL,
	[TipoDoc] [varchar](5) NULL,
	[SerieDoc] [varchar](10) NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [datetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [datetime] NULL,
	[AnuladoPor] [varchar](15) NULL,
	[AnuladoEm] [datetime] NULL,
	[MotivoAnulacao] [varchar](50) NULL,
	[TemIvaCaixa] [bit] NULL,
	[DataRecebimento] [smalldatetime] NULL,
	[StatusAT] [smallint] NULL,
	[ATPor] [varchar](15) NULL,
	[ATEm] [datetime] NULL,
	[IsLiquidacaoAuto] [bit] NULL,
	[ExpDocGiaf] [bit] NULL,
	[ExpDocGiaf_Por] [varchar](15) NULL,
	[ExpDocGiaf_Em] [smalldatetime] NULL,
	[IsFromDocPedidosCompra] [bit] NULL,
	[KeyDocPedidosCompra] [int] NULL,
 CONSTRAINT [PK_FacReciboCab] PRIMARY KEY CLUSTERED 
(
	[KeyReciboCab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacReciboLin]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacReciboLin](
	[KeyReciboLin] [int] IDENTITY(1,1) NOT NULL,
	[KeyReciboCab] [int] NULL,
	[KeyDoc] [int] NULL,
	[Descricao] [varchar](60) NULL,
	[DtFactura] [smalldatetime] NULL,
	[NumDoc] [int] NULL,
	[TipoDoc] [varchar](5) NULL,
	[ValorAberto] [decimal](19, 6) NULL,
	[ValorAberto_BM] [decimal](19, 6) NULL,
	[ValorRequisitado] [decimal](19, 6) NULL,
	[ValorRequisitado_BM] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[ValorAberto_ESC] [decimal](19, 6) NULL,
	[ValorRequisitado_ESC] [decimal](19, 6) NULL,
	[NumLinha] [varchar](4) NULL,
 CONSTRAINT [PK_FacReciboLin_1] PRIMARY KEY CLUSTERED 
(
	[KeyReciboLin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacReciboLinIVA]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacReciboLinIVA](
	[KeyReciboLinIVA] [int] IDENTITY(1,1) NOT NULL,
	[KeyReciboCAB] [int] NOT NULL,
	[KeyReciboLin] [int] NOT NULL,
	[KeyDoc] [int] NOT NULL,
	[GrupoCE] [varchar](5) NOT NULL,
	[TxIVA] [decimal](7, 3) NOT NULL,
	[CodMotivoIsencao] [varchar](5) NOT NULL,
	[JustIsencao] [varchar](60) NOT NULL,
	[BaseInc] [decimal](19, 6) NOT NULL,
	[BaseInc_BM] [decimal](19, 6) NOT NULL,
	[BaseInc_ESC] [decimal](19, 6) NOT NULL,
	[ValorIVA] [decimal](19, 6) NOT NULL,
	[ValorIVA_BM] [decimal](19, 6) NOT NULL,
	[ValorIVA_ESC] [decimal](19, 6) NOT NULL,
	[Total] [decimal](19, 6) NOT NULL,
	[Total_BM] [decimal](19, 6) NOT NULL,
	[Total_ESC] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_FacReciboLinIVA] PRIMARY KEY CLUSTERED 
(
	[KeyReciboLinIVA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacturaAnexoDetalhe]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacturaAnexoDetalhe](
	[KeyFacturaAnexoDetalhe] [int] IDENTITY(1,1) NOT NULL,
	[KeyFacturaCab] [int] NULL,
	[KeyFHContracto] [int] NULL,
	[KeyCE] [int] NULL,
	[KeyCvC_DP] [int] NULL,
	[CodRub] [varchar](5) NULL,
	[Descricao] [varchar](100) NULL,
	[Quantidade] [decimal](19, 6) NULL,
	[TotalPagar] [decimal](19, 6) NULL,
	[TotalPagar_BM] [decimal](19, 6) NULL,
	[TotalFacturar] [decimal](19, 6) NULL,
	[TotalFacturar_BM] [decimal](19, 6) NULL,
	[Coeficiente] [decimal](19, 6) NULL,
	[ValorUnitPagar] [decimal](19, 6) NULL,
	[ValorUnitPagar_BM] [decimal](19, 6) NULL,
	[ValorUnitFacturar] [decimal](19, 6) NULL,
	[ValorUnitFacturar_BM] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Documento] [varchar](50) NULL,
	[NomeCF] [varchar](60) NULL,
	[LocalTrabalho] [varchar](30) NULL,
	[KeyFacturaLin] [int] NULL,
	[CentroCusto] [varchar](15) NULL,
	[SubCentro] [varchar](15) NULL,
	[IVA] [decimal](7, 3) NULL,
	[DtPeriodoINI] [smalldatetime] NULL,
	[DtPeriodoFim] [smalldatetime] NULL,
	[Categoria] [varchar](100) NULL,
	[NumOrdem] [varchar](25) NULL,
	[CodContracto] [varchar](10) NULL,
	[KeyContracto] [int] NULL,
	[AnoFH] [smallint] NULL,
	[MesFH] [tinyint] NULL,
	[JustIsencao] [varchar](60) NULL,
	[CodMotivoIsencao] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyFacturaAnexoDetalhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacturaAnexoDetalheProj]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacturaAnexoDetalheProj](
	[KeyFacturaAnexoDetalheProj] [int] IDENTITY(1,1) NOT NULL,
	[KeyFacturaCab] [int] NULL,
	[KeyCE_Projectos] [int] NULL,
	[KeyCE_ProjectosValores] [int] NULL,
	[KeyCE_ProjectosAltMensais] [int] NULL,
	[KeyCvC_Independentes] [int] NULL,
	[Codigo] [varchar](10) NULL,
	[Descricao] [varchar](200) NULL,
	[ValorUnitario] [decimal](19, 6) NULL,
	[Quantidade] [decimal](19, 6) NULL,
	[ValorTotal] [decimal](19, 6) NULL,
	[IVA] [decimal](7, 3) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[KeyContractosAltMensais] [int] NULL,
 CONSTRAINT [PK_FacturaAnexoDetalheProj] PRIMARY KEY CLUSTERED 
(
	[KeyFacturaAnexoDetalheProj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacturaArqDigital]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacturaArqDigital](
	[KeyFacturaArqDigital] [int] IDENTITY(1,1) NOT NULL,
	[KeyFacturaCab] [int] NOT NULL,
	[KeyFacturaAnexoDetalhe] [int] NOT NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacturaCab]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacturaCab](
	[KeyFacturaCab] [int] IDENTITY(1,1) NOT NULL,
	[TipoDoc] [varchar](5) NULL,
	[KeyCE] [int] NULL,
	[StatusFact] [smallint] NULL,
	[NumFactura] [int] NULL,
	[DtFactura] [smalldatetime] NULL,
	[DtVencFactura] [smalldatetime] NULL,
	[PrazoPag] [varchar](15) NULL,
	[ModoPag] [varchar](25) NULL,
	[CodIntCE] [varchar](10) NULL,
	[NomeCE] [varchar](60) NULL,
	[MoradaCE] [varchar](100) NULL,
	[LocalidadeCE] [varchar](40) NULL,
	[CPCE] [varchar](8) NULL,
	[LCPCE] [varchar](40) NULL,
	[Ntelef01CE] [varchar](20) NULL,
	[NumContCE] [varchar](18) NULL,
	[Tx1] [decimal](19, 6) NULL,
	[Tx2] [decimal](19, 6) NULL,
	[BaseInc1] [decimal](19, 6) NULL,
	[BaseInc1_BM] [decimal](19, 6) NULL,
	[BaseInc2] [decimal](19, 6) NULL,
	[BaseInc2_BM] [decimal](19, 6) NULL,
	[ValorIVA1] [decimal](19, 6) NULL,
	[ValorIVA1_BM] [decimal](19, 6) NULL,
	[ValorIVA2] [decimal](19, 6) NULL,
	[ValorIVA2_BM] [decimal](19, 6) NULL,
	[TotalIliq] [decimal](19, 6) NULL,
	[TotalIliq_BM] [decimal](19, 6) NULL,
	[TotalIVA] [decimal](19, 6) NULL,
	[TotalIVA_BM] [decimal](19, 6) NULL,
	[TotalDoc] [decimal](19, 6) NULL,
	[TotalDoc_BM] [decimal](19, 6) NULL,
	[Regularizado] [bit] NULL,
	[TotalJaRegularizado] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Divisa] [varchar](5) NULL,
	[Cambio] [int] NULL,
	[CodAgencia] [varchar](3) NULL,
	[Obs] [varchar](100) NULL,
	[Centro_Custo] [varchar](15) NULL,
	[BaseInc1_ESC] [decimal](19, 6) NULL,
	[BaseInc2_ESC] [decimal](19, 6) NULL,
	[ValorIVA1_ESC] [decimal](19, 6) NULL,
	[ValorIVA2_ESC] [decimal](19, 6) NULL,
	[TotalIliq_ESC] [decimal](19, 6) NULL,
	[TotalIVA_ESC] [decimal](19, 6) NULL,
	[TotalDoc_ESC] [decimal](19, 6) NULL,
	[Cambio_ESC] [decimal](19, 6) NULL,
	[ZONAEURO] [bit] NULL,
	[TotalJaRegularizado_ESC] [decimal](19, 6) NULL,
	[BaseInc3] [decimal](19, 6) NULL,
	[ValorIVA3] [decimal](19, 6) NULL,
	[BaseInc3_BM] [decimal](19, 6) NULL,
	[ValorIVA3_BM] [decimal](19, 6) NULL,
	[BaseInc3_ESC] [decimal](19, 6) NULL,
	[ValorIVA3_ESC] [decimal](19, 6) NULL,
	[BaseInc4] [decimal](19, 6) NULL,
	[ValorIVA4] [decimal](19, 6) NULL,
	[BaseInc4_BM] [decimal](19, 6) NULL,
	[ValorIVA4_BM] [decimal](19, 6) NULL,
	[BaseInc4_ESC] [decimal](19, 6) NULL,
	[ValorIVA4_ESC] [decimal](19, 6) NULL,
	[Tx3] [decimal](19, 6) NULL,
	[Tx4] [decimal](19, 6) NULL,
	[TotalJaRegularizado_BM] [decimal](19, 6) NULL,
	[IndicaMoeda] [bit] NULL,
	[CodArea] [varchar](2) NULL,
	[NAV] [tinyint] NULL,
	[CodTipoDoc] [varchar](3) NULL,
	[PFACStatus] [int] NULL,
	[KeyFacturaConv] [int] NULL,
	[Contabilizado] [bit] NULL,
	[PERIODODTINI] [smalldatetime] NULL,
	[PERIODODTFIM] [smalldatetime] NULL,
	[Serie] [varchar](10) NULL,
	[GrupoCE] [varchar](5) NULL,
	[ExpDoc] [tinyint] NULL,
	[PaisCE] [varchar](60) NULL,
	[KeyVendedor] [int] NULL,
	[Vendedor] [varchar](40) NULL,
	[ComissaoPaga] [bit] NULL,
	[DataComissao] [smalldatetime] NULL,
	[ComissaoPercentagem] [decimal](7, 3) NULL,
	[ContactoCE] [varchar](60) NULL,
	[Agrupa] [tinyint] NULL,
	[NotaEncomenda] [varchar](40) NULL,
	[Consultor] [varchar](30) NULL,
	[CodLocal] [varchar](15) NULL,
	[DescricaoLocal] [varchar](30) NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[Hash] [varchar](200) NULL,
	[HashControl] [tinyint] NULL,
	[StatusFactRCF] [varchar](128) NULL,
	[Contabilizado_Por] [varchar](15) NULL,
	[Contabilizado_Em] [smalldatetime] NULL,
	[CodTabPreFactRec] [varchar](5) NULL,
	[TipoAgrupamento] [tinyint] NULL,
	[DescFact] [varchar](128) NULL,
	[Anexo] [bit] NULL,
	[AnexoVersao] [tinyint] NULL,
	[ReportTemplate] [varchar](128) NULL,
	[KeyDocOriginal] [int] NULL,
	[TipoDocOriginal] [varchar](5) NULL,
	[CodTipoDocOriginal] [varchar](3) NULL,
	[SerieDocOriginal] [varchar](10) NULL,
	[NumDocOriginal] [int] NULL,
	[IsTotalDocOriginal] [bit] NULL,
	[DataDocOriginal] [smalldatetime] NULL,
	[AnuladoPor] [varchar](15) NULL,
	[AnuladoEm] [datetime] NULL,
	[MotivoAnulacao] [varchar](50) NULL,
	[MotivoRectificacao] [varchar](50) NULL,
	[SeriePreFactura] [varchar](10) NULL,
	[KeyFacturaFinal] [int] NULL,
	[TemIvaCaixa] [bit] NULL,
	[NumProcesso] [varchar](40) NULL,
	[StatusAT] [smallint] NULL,
	[ATPor] [varchar](15) NULL,
	[ATEm] [datetime] NULL,
	[ExpDocGiaf] [bit] NULL,
	[ExpDocGiaf_Por] [varchar](15) NULL,
	[ExpDocGiaf_Em] [smalldatetime] NULL,
	[CodSubConta] [varchar](15) NULL,
	[C_SATS] [varchar](512) NULL,
	[BusinessUnit] [varchar](10) NULL,
	[UnitGroup] [varchar](10) NULL,
	[CodUnidade] [varchar](10) NULL,
 CONSTRAINT [PK_FacturaCab] PRIMARY KEY NONCLUSTERED 
(
	[KeyFacturaCab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacturaCabActividades]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacturaCabActividades](
	[KeyFacturaCabActividades] [int] IDENTITY(1,1) NOT NULL,
	[KeyFacturaCabActividadesReference] [int] NOT NULL,
	[KeyCE] [int] NOT NULL,
	[KeyFacturaCab] [int] NOT NULL,
	[Data] [datetime] NOT NULL,
	[NIPUtilizador] [varchar](25) NOT NULL,
	[KeyEstado] [int] NOT NULL,
	[KeyContato] [int] NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[KeyComentario] [int] NOT NULL,
	[Observacao] [text] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[DataProximoContacto] [datetime] NULL,
 CONSTRAINT [PK_FacturaCabActividades] PRIMARY KEY CLUSTERED 
(
	[KeyFacturaCabActividades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacturaCabOutros]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacturaCabOutros](
	[KeyFacturaCabOutros] [int] IDENTITY(1,1) NOT NULL,
	[KeyFacturaCab] [int] NOT NULL,
	[ValidacaoGC] [bit] NULL,
	[ValidacaoGCQuem] [varchar](6) NULL,
	[ValidacaoGCDT] [smalldatetime] NULL,
	[ConformidadeFact] [varchar](2048) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_FacturaCabOutros] PRIMARY KEY CLUSTERED 
(
	[KeyFacturaCabOutros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacturaElectronica]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacturaElectronica](
	[KeyFacturaE] [int] IDENTITY(1,1) NOT NULL,
	[KeyFacturaCab] [int] NOT NULL,
	[EmailFact] [varchar](128) NULL,
	[DataHoraCert] [smalldatetime] NULL,
	[EstadoEnvio] [tinyint] NOT NULL,
	[DataHoraEnvio] [smalldatetime] NULL,
	[RelatorioEnvio] [varchar](2048) NULL,
 CONSTRAINT [PK_FacturaElectronica] PRIMARY KEY CLUSTERED 
(
	[KeyFacturaCab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FacturaLin]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FacturaLin](
	[KeyFacturaLin] [int] IDENTITY(1,1) NOT NULL,
	[KeyFacturaCab] [int] NULL,
	[TipoDoc] [varchar](5) NULL,
	[KeyCvC_DP] [int] NULL,
	[KeyCE] [int] NULL,
	[KeyHorarioCE] [int] NULL,
	[KeyTarifasEntidades] [int] NULL,
	[KeyProposta] [int] NULL,
	[KeyPedido] [int] NULL,
	[KeyPedidoCat] [int] NULL,
	[KeyPedidoRH] [int] NULL,
	[KeyFHContracto] [int] NULL,
	[Descricao] [varchar](100) NULL,
	[Quantidade] [decimal](19, 6) NULL,
	[ValorUnitario] [decimal](19, 6) NULL,
	[ValorUnitario_BM] [decimal](19, 6) NULL,
	[ValorDesc] [decimal](19, 6) NULL,
	[ValorDesc_BM] [decimal](19, 6) NULL,
	[IVA] [decimal](19, 6) NULL,
	[Total] [decimal](19, 6) NULL,
	[Total_BM] [decimal](19, 6) NULL,
	[CodRub] [varchar](5) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CentroCusto] [varchar](15) NULL,
	[ValorUnitario_ESC] [decimal](19, 6) NULL,
	[ValorDesc_ESC] [decimal](19, 6) NULL,
	[Total_ESC] [decimal](19, 6) NULL,
	[SUBCENTRO] [varchar](15) NULL,
	[NumLinha] [varchar](4) NULL,
	[JustIsencao] [varchar](60) NULL,
	[KeyCE_Projecto] [int] NULL,
	[CDU_IdLinNegMPG] [varchar](20) NULL,
	[CDU_IdLinNegPT] [varchar](20) NULL,
	[CDU_IdEstrutura] [varchar](20) NULL,
	[CodMotivoIsencao] [varchar](5) NULL,
	[NumeroProcesso] [varchar](20) NULL,
	[KeyVendedor] [int] NULL,
	[KeyCvC_ExamesMedicos] [int] NULL,
 CONSTRAINT [PK_FacturaLin] PRIMARY KEY NONCLUSTERED 
(
	[KeyFacturaLin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Faltas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Faltas](
	[KeyFaltas] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](10) NULL,
	[Descricao] [varchar](60) NULL,
	[Remunerada] [bit] NULL,
	[Justificada] [bit] NULL,
	[IncideFactura] [bit] NULL,
	[IncideProp] [bit] NULL,
	[PortalPublicar] [bit] NULL,
	[ParaFerias] [bit] NULL,
	[MotivoQP] [tinyint] NULL,
	[MotivoHorasNTrab] [varchar](2) NULL,
	[DescricaoFact] [varchar](60) NULL,
	[CodAbonoFerias] [varchar](5) NULL,
	[FormulaCalcValorDia] [tinyint] NULL,
	[SSocialNaoIncideDias] [bit] NULL,
	[IncideFundosCompensacao] [bit] NULL,
	[PrimaveraTipoArtigoFact] [varchar](3) NULL,
	[PrimaveraTipoArtigoSal] [varchar](3) NULL,
	[IncidePropSF] [bit] NULL,
	[IncidePropSN] [bit] NULL,
	[IncidePropSFNG] [bit] NULL,
	[IncidePropCPE] [bit] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[SAP_CodMaterial] [varchar](18) NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyFaltas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FaltasIncidencia]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FaltasIncidencia](
	[KeyFaltasIncidencia] [int] IDENTITY(1,1) NOT NULL,
	[KeyFaltas] [int] NOT NULL,
	[CodRubrica] [varchar](5) NOT NULL,
	[Activo] [bit] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_FaltasIncidencia] PRIMARY KEY CLUSTERED 
(
	[KeyFaltasIncidencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FaltasIncidenciaAbonos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FaltasIncidenciaAbonos](
	[KeyFaltasIncidenciaAbonos] [int] IDENTITY(1,1) NOT NULL,
	[KeyFaltas] [int] NOT NULL,
	[CodRubrica] [varchar](5) NOT NULL,
	[Activo] [bit] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[APagar] [bit] NULL,
	[AFacturar] [bit] NULL,
 CONSTRAINT [PK_FaltasIncidenciaAbonos] PRIMARY KEY CLUSTERED 
(
	[KeyFaltasIncidenciaAbonos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FechoMes]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FechoMes](
	[KeyFechoMes] [int] IDENTITY(1,1) NOT NULL,
	[Ano] [varchar](4) NULL,
	[Mes] [int] NULL,
	[FolhasHoras] [bit] NULL,
	[Facturacao] [bit] NULL,
	[ProcMensal] [bit] NULL,
	[Obs] [varchar](50) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Agencia] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyFechoMes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FechoMesRegrasRUB]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FechoMesRegrasRUB](
	[KeyFechoMesRegrasRUB] [int] IDENTITY(1,1) NOT NULL,
	[TipoRubrica] [char](1) NOT NULL,
	[CodRubrica] [varchar](5) NOT NULL,
	[Campo] [varchar](128) NULL,
	[Operador] [varchar](10) NULL,
	[Valor] [decimal](19, 6) NULL,
	[Conector] [varchar](5) NULL,
	[Activo] [bit] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_FechoMesRegrasRUB] PRIMARY KEY CLUSTERED 
(
	[KeyFechoMesRegrasRUB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feriados]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feriados](
	[KeyFeriado] [int] IDENTITY(1,1) NOT NULL,
	[SIG] [varchar](30) NULL,
	[DATA] [smalldatetime] NULL,
	[Localidade] [varchar](40) NULL,
 CONSTRAINT [PK_Feriados] PRIMARY KEY NONCLUSTERED 
(
	[KeyFeriado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ferias]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ferias](
	[KeyFerias] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[Ano] [varchar](4) NULL,
	[DataInicio] [smalldatetime] NULL,
	[DataFim] [smalldatetime] NULL,
	[Dias] [decimal](19, 6) NULL,
	[Gozadas] [bit] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Ocorrencia] [text] NULL,
	[Ferias] [bit] NULL,
	[KeyContractosAltMensais] [int] NULL,
	[KeyCvC_AcidentesTrabalhoAusencias] [int] NULL,
 CONSTRAINT [PK_Ferias] PRIMARY KEY NONCLUSTERED 
(
	[KeyFerias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHAbonos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHAbonos](
	[KeyFHAbonos] [int] IDENTITY(1,1) NOT NULL,
	[KeyFHC_FHoras] [int] NULL,
	[KeyFHContracto] [int] NULL,
	[CodAbono] [varchar](5) NULL,
	[ABO] [varchar](40) NULL,
	[Quantidade] [decimal](19, 6) NULL,
	[VAL] [decimal](19, 6) NULL,
	[VAL_BM] [decimal](19, 6) NULL,
	[Total] [decimal](19, 6) NULL,
	[Total_BM] [decimal](19, 6) NULL,
	[SSocial] [bit] NULL,
	[IRS] [bit] NULL,
	[SFerias] [bit] NULL,
	[SNatal] [bit] NULL,
	[SFeriasNGoz] [bit] NULL,
	[CompEmp] [bit] NULL,
	[TipoValor] [smallint] NULL,
	[VALORHORAPAGAR] [decimal](19, 6) NULL,
	[VALORHORAPAGAR_BM] [decimal](19, 6) NULL,
	[COEFICIENTE] [decimal](19, 6) NULL,
	[VALORHORAFACTURAR] [decimal](19, 6) NULL,
	[VALORHORAFACTURAR_BM] [decimal](19, 6) NULL,
	[TotalFacturar] [decimal](19, 6) NULL,
	[TotalFacturar_BM] [decimal](19, 6) NULL,
	[QtdFacturar] [decimal](19, 6) NULL,
	[Sind] [bit] NULL,
	[SegSocNDias] [decimal](19, 6) NULL,
	[SegSocData] [varchar](6) NULL,
	[SSocialIncideDias] [bit] NULL,
	[PropTipoIncidencia] [tinyint] NULL,
	[QuantidadeDias] [decimal](19, 6) NULL,
	[ValorDiaPagar] [decimal](19, 6) NULL,
	[ValorDiaPagar_BM] [decimal](19, 6) NULL,
	[QtdFacturarDias] [decimal](19, 6) NULL,
	[SemRetencaoNaFonte] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHC_FFaltas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHC_FFaltas](
	[KeyFHC_FFaltas] [int] IDENTITY(1,1) NOT NULL,
	[KeyFHContracto] [int] NULL,
	[Descricao] [varchar](60) NULL,
	[Fechada] [bit] NULL,
	[D1] [decimal](19, 6) NULL,
	[D2] [decimal](19, 6) NULL,
	[D3] [decimal](19, 6) NULL,
	[D4] [decimal](19, 6) NULL,
	[D5] [decimal](19, 6) NULL,
	[D6] [decimal](19, 6) NULL,
	[D7] [decimal](19, 6) NULL,
	[D8] [decimal](19, 6) NULL,
	[D9] [decimal](19, 6) NULL,
	[D10] [decimal](19, 6) NULL,
	[D11] [decimal](19, 6) NULL,
	[D12] [decimal](19, 6) NULL,
	[D13] [decimal](19, 6) NULL,
	[D14] [decimal](19, 6) NULL,
	[D15] [decimal](19, 6) NULL,
	[D16] [decimal](19, 6) NULL,
	[D17] [decimal](19, 6) NULL,
	[D18] [decimal](19, 6) NULL,
	[D19] [decimal](19, 6) NULL,
	[D20] [decimal](19, 6) NULL,
	[D21] [decimal](19, 6) NULL,
	[D22] [decimal](19, 6) NULL,
	[D23] [decimal](19, 6) NULL,
	[D24] [decimal](19, 6) NULL,
	[D25] [decimal](19, 6) NULL,
	[D26] [decimal](19, 6) NULL,
	[D27] [decimal](19, 6) NULL,
	[D28] [decimal](19, 6) NULL,
	[D29] [decimal](19, 6) NULL,
	[D30] [decimal](19, 6) NULL,
	[D31] [decimal](19, 6) NULL,
	[TMensal] [decimal](19, 6) NULL,
	[Mes] [varchar](15) NULL,
	[CodFalta] [varchar](10) NULL,
	[Remunerada] [bit] NULL,
	[Justificada] [bit] NULL,
	[IncideFactura] [bit] NULL,
	[IncideProp] [bit] NULL,
	[ParaFerias] [bit] NULL,
	[TMensalDias] [decimal](19, 6) NULL,
	[TMensalHoras] [decimal](19, 6) NULL,
	[SSocialNaoIncideDias] [bit] NULL,
	[SemAvisoPrevio] [bit] NULL,
	[ProcessarPorDia] [bit] NULL,
	[SegSocData] [varchar](6) NULL,
 CONSTRAINT [PK_FHC_FFaltas] PRIMARY KEY NONCLUSTERED 
(
	[KeyFHC_FFaltas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHC_FFaltasPortal]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHC_FFaltasPortal](
	[KeyFHC_FFaltasPortal] [int] IDENTITY(1,1) NOT NULL,
	[KeyFHC_FFaltas] [int] NOT NULL,
	[PortalUtilizador] [varchar](255) NOT NULL,
	[PortalDtUltimaModif] [smalldatetime] NULL,
 CONSTRAINT [PK_FHC_FFaltasPortal] PRIMARY KEY CLUSTERED 
(
	[KeyFHC_FFaltasPortal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHC_FHoras]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHC_FHoras](
	[KeyFHC_FHoras] [int] IDENTITY(1,1) NOT NULL,
	[KeyFHContracto] [int] NULL,
	[DescricaoRubricas] [varchar](40) NULL,
	[Verificadas] [bit] NULL,
	[D1] [decimal](19, 6) NULL,
	[D2] [decimal](19, 6) NULL,
	[D3] [decimal](19, 6) NULL,
	[D4] [decimal](19, 6) NULL,
	[D5] [decimal](19, 6) NULL,
	[D6] [decimal](19, 6) NULL,
	[D7] [decimal](19, 6) NULL,
	[D8] [decimal](19, 6) NULL,
	[D9] [decimal](19, 6) NULL,
	[D10] [decimal](19, 6) NULL,
	[D11] [decimal](19, 6) NULL,
	[D12] [decimal](19, 6) NULL,
	[D13] [decimal](19, 6) NULL,
	[D14] [decimal](19, 6) NULL,
	[D15] [decimal](19, 6) NULL,
	[D16] [decimal](19, 6) NULL,
	[D17] [decimal](19, 6) NULL,
	[D18] [decimal](19, 6) NULL,
	[D19] [decimal](19, 6) NULL,
	[D20] [decimal](19, 6) NULL,
	[D21] [decimal](19, 6) NULL,
	[D22] [decimal](19, 6) NULL,
	[D23] [decimal](19, 6) NULL,
	[D24] [decimal](19, 6) NULL,
	[D25] [decimal](19, 6) NULL,
	[D26] [decimal](19, 6) NULL,
	[D27] [decimal](19, 6) NULL,
	[D28] [decimal](19, 6) NULL,
	[D29] [decimal](19, 6) NULL,
	[D30] [decimal](19, 6) NULL,
	[D31] [decimal](19, 6) NULL,
	[TMensal] [decimal](19, 6) NULL,
	[Mes] [varchar](15) NULL,
	[CodRub] [varchar](6) NULL,
	[TMensalFact] [decimal](19, 6) NULL,
	[TMensalDias] [decimal](19, 6) NULL,
 CONSTRAINT [PK_FHC_FHoras] PRIMARY KEY NONCLUSTERED 
(
	[KeyFHC_FHoras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHC_FHorasPortal]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHC_FHorasPortal](
	[KeyFHC_FHorasPortal] [int] IDENTITY(1,1) NOT NULL,
	[KeyFHC_FHoras] [int] NOT NULL,
	[PortalUtilizador] [varchar](255) NOT NULL,
	[PortalDtUltimaModif] [smalldatetime] NULL,
 CONSTRAINT [PK_FHC_FHorasPortal] PRIMARY KEY CLUSTERED 
(
	[KeyFHC_FHorasPortal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHChequeEscola]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHChequeEscola](
	[KeyFHChequeEscola] [int] IDENTITY(1,1) NOT NULL,
	[KeyFHContracto] [int] NOT NULL,
	[KeyCvC_ChequeEscola] [int] NOT NULL,
	[NomeAluno] [varchar](60) NULL,
	[DataNascimento] [smalldatetime] NULL,
	[Estabelecimento] [varchar](60) NULL,
	[EstabelecimentoContacto] [varchar](60) NULL,
	[EstabelecimentoTelefone] [varchar](20) NULL,
	[EstabelecimentoLocalidade] [varchar](40) NULL,
	[TipoPagamento] [int] NULL,
	[ValorUnitarioPag] [decimal](19, 6) NULL,
	[QuantidadePag] [decimal](19, 6) NULL,
	[FormatoPag] [varchar](25) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[ChequeEscola_Pago] [bit] NULL,
	[ChequeEscola_CodBanco] [varchar](4) NULL,
	[ChequeEscola_BancoConta] [varchar](25) NULL,
	[ChequeEscola_DataEmissaoPag] [smalldatetime] NULL,
 CONSTRAINT [PK_FHChequeEscola] PRIMARY KEY CLUSTERED 
(
	[KeyFHChequeEscola] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHContracto]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHContracto](
	[KeyFHContracto] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[KeyCE] [int] NULL,
	[KeyContracto] [int] NULL,
	[DataFH] [smalldatetime] NULL,
	[MesFH] [varchar](10) NULL,
	[MesN] [smallint] NULL,
	[AnoFH] [smallint] NULL,
	[Documento] [varchar](50) NULL,
	[CodIntF] [varchar](10) NULL,
	[NomeCF] [varchar](60) NULL,
	[NomeCE] [varchar](60) NULL,
	[Categoria] [varchar](100) NULL,
	[DtInicioCont] [smalldatetime] NULL,
	[DtFimCont] [smalldatetime] NULL,
	[NumDiasSAlm] [decimal](7, 3) NULL,
	[Horario] [text] NULL,
	[PreFacturado] [bit] NULL,
	[LocalTrabalho] [varchar](30) NULL,
	[Adiantamento] [decimal](19, 6) NULL,
	[Adiantamento_BM] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Status] [smallint] NULL,
	[CodContracto] [varchar](10) NULL,
	[ValorHoraPagar] [decimal](19, 6) NULL,
	[ValorHoraPagar_BM] [decimal](19, 6) NULL,
	[SALMOCO] [decimal](19, 6) NULL,
	[SALMOCO_BM] [decimal](19, 6) NULL,
	[HORASMES] [decimal](19, 6) NULL,
	[IVA] [decimal](19, 6) NULL,
	[FACT_FIXO] [bit] NULL,
	[FACTMENSAL] [decimal](19, 6) NULL,
	[FACTMENSAL_BM] [decimal](19, 6) NULL,
	[FACTVALHORA] [decimal](19, 6) NULL,
	[FACTVALHORA_BM] [decimal](19, 6) NULL,
	[EXPORTADO] [bit] NULL,
	[CENTROCUSTO] [varchar](15) NULL,
	[KeyTarifasEntidades] [int] NULL,
	[KeyTE_CatFun] [int] NULL,
	[CodAgencia] [varchar](3) NULL,
	[CodArea] [varchar](2) NULL,
	[SUBCENTRO] [varchar](15) NULL,
	[KeyFacturaCab] [int] NULL,
	[DPGT] [tinyint] NULL,
	[DT1] [int] NULL,
	[DT2] [int] NULL,
	[DT3] [int] NULL,
	[DT4] [int] NULL,
	[DT5] [int] NULL,
	[DT6] [int] NULL,
	[DT7] [int] NULL,
	[DT8] [int] NULL,
	[DT9] [int] NULL,
	[DT10] [int] NULL,
	[DT11] [int] NULL,
	[DT12] [int] NULL,
	[DT13] [int] NULL,
	[DT14] [int] NULL,
	[DT15] [int] NULL,
	[DT16] [int] NULL,
	[DT17] [int] NULL,
	[DT18] [int] NULL,
	[DT19] [int] NULL,
	[DT20] [int] NULL,
	[DT21] [int] NULL,
	[DT22] [int] NULL,
	[DT23] [int] NULL,
	[DT24] [int] NULL,
	[DT25] [int] NULL,
	[DT26] [int] NULL,
	[DT27] [int] NULL,
	[DT28] [int] NULL,
	[DT29] [int] NULL,
	[DT30] [int] NULL,
	[DT31] [int] NULL,
	[SAL_REF] [decimal](19, 6) NULL,
	[SAL_REF_BM] [decimal](19, 6) NULL,
	[CodInt] [varchar](15) NULL,
	[PERIODODTINI] [smalldatetime] NULL,
	[PERIODODTFIM] [smalldatetime] NULL,
	[FHEstado] [tinyint] NULL,
	[KeyReciboC] [int] NULL,
	[FUSER] [varchar](6) NULL,
	[FDATA] [smalldatetime] NULL,
	[RUSER] [varchar](6) NULL,
	[RDATA] [smalldatetime] NULL,
	[TxIVA] [decimal](19, 6) NULL,
	[ContabConstProv] [bit] NULL,
	[ContabUtilProv] [bit] NULL,
	[PortalPublicar] [bit] NULL,
	[PortalEstado] [smallint] NULL,
	[VHFFaltas] [bit] NULL,
	[CoefFaltas] [decimal](19, 6) NULL,
	[ValorHoraFactFaltas] [decimal](19, 6) NULL,
	[ContabConstProv_Por] [varchar](15) NULL,
	[ContabConstProv_Em] [smalldatetime] NULL,
	[ContabUtilProv_Por] [varchar](15) NULL,
	[ContabUtilProv_Em] [smalldatetime] NULL,
	[NotaEncomenda] [varchar](40) NULL,
	[KeyPreFactura] [int] NULL,
	[WorkflowCPEStatus] [tinyint] NULL,
	[WorkflowCPEPedidoPor] [varchar](60) NULL,
	[WorkflowCPEPedidoEm] [smalldatetime] NULL,
	[WorkflowCPEAprovadoPor] [varchar](60) NULL,
	[WorkflowCPEAprovadoEm] [smalldatetime] NULL,
	[CPE_ImportFromExcel] [bit] NULL,
	[CPE_ExcelFileName] [varchar](128) NULL,
	[CPE_Periodo1Pagar] [decimal](19, 6) NULL,
	[CPE_Periodo1Fact] [decimal](19, 6) NULL,
	[CPE_Periodo2Pagar] [decimal](19, 6) NULL,
	[CPE_Periodo2Fact] [decimal](19, 6) NULL,
	[TipoUnidadePag] [int] NULL,
	[CodSubConta] [varchar](15) NULL,
	[ValorDiaPagar] [decimal](19, 6) NULL,
	[ValorDiaPagar_BM] [decimal](19, 6) NULL,
	[KeyCE_Projecto] [int] NULL,
	[CDU_IdEstrutura] [varchar](20) NULL,
	[CDU_IdLinNegMPG] [varchar](20) NULL,
	[CDU_IdLinNegPT] [varchar](20) NULL,
	[KeyVendedor] [int] NULL,
	[CodCategoria] [varchar](8) NULL,
	[NaoPagarAutoSF] [bit] NULL,
	[NaoPagarAutoSN] [bit] NULL,
	[NaoPagarAutoSFNG] [bit] NULL,
	[NaoPagarAutoCPE] [bit] NULL,
	[VHFSemCPE] [bit] NULL,
	[CoefCPE] [decimal](19, 6) NULL,
	[VHFSemSF] [bit] NULL,
	[CoefSF] [decimal](19, 6) NULL,
	[VHFSemSN] [bit] NULL,
	[CoefSN] [decimal](19, 6) NULL,
	[VHFSemSFNG] [bit] NULL,
	[CoefSFNG] [decimal](19, 6) NULL,
	[BusinessUnit] [varchar](10) NULL,
	[UnitGroup] [varchar](10) NULL,
	[CodUnidade] [varchar](10) NULL,
	[MeioRecebimento] [varchar](25) NULL,
	[SAL_30DIAS] [bit] NULL,
	[VHFFaltasFerias] [bit] NULL,
	[CoefFaltasFerias] [decimal](19, 6) NULL,
	[ValorHoraFactFaltasFerias] [decimal](19, 6) NULL,
 CONSTRAINT [PK_FHContracto] PRIMARY KEY NONCLUSTERED 
(
	[KeyFHContracto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHContractoHistorico]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHContractoHistorico](
	[KeyFHContractoHistorico] [int] IDENTITY(1,1) NOT NULL,
	[KeyFHContracto] [int] NOT NULL,
	[DataHora] [smalldatetime] NOT NULL,
	[Utilizador] [varchar](6) NOT NULL,
	[Operacao] [varchar](15) NOT NULL,
	[Campo] [varchar](60) NOT NULL,
	[Descricao] [varchar](512) NOT NULL,
	[OldValue] [varchar](1024) NULL,
	[NewValue] [varchar](1024) NULL,
 CONSTRAINT [PK_FHContractoHistorico] PRIMARY KEY CLUSTERED 
(
	[KeyFHContractoHistorico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHContractoPortal]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHContractoPortal](
	[KeyFHContractoPortal] [int] IDENTITY(1,1) NOT NULL,
	[KeyFHContracto] [int] NOT NULL,
	[PortalUtilizador] [varchar](255) NOT NULL,
	[PortalDtFechoFolha] [smalldatetime] NULL,
	[PortalObsUtilizador] [varchar](255) NULL,
	[PortalObservacoes ] [varchar](255) NULL,
	[PortalObsDTModif] [smalldatetime] NULL,
 CONSTRAINT [PK_FHContractoPortal] PRIMARY KEY CLUSTERED 
(
	[KeyFHContractoPortal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHContractoRetifica]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHContractoRetifica](
	[KeyFHContractoRetifica] [int] IDENTITY(1,1) NOT NULL,
	[KeyFHContracto] [int] NOT NULL,
	[CodAbono] [varchar](5) NULL,
	[ABO] [varchar](60) NULL,
	[Quantidade] [decimal](19, 6) NULL,
	[VAL] [decimal](19, 6) NULL,
	[VAL_BM] [decimal](19, 6) NULL,
	[Total] [decimal](19, 6) NULL,
	[Total_BM] [decimal](19, 6) NULL,
	[SSocial] [bit] NULL,
	[IRS] [bit] NULL,
	[SFerias] [bit] NULL,
	[SNatal] [bit] NULL,
	[SFeriasNGoz] [bit] NULL,
	[CompEmp] [bit] NULL,
	[TipoValor] [smallint] NULL,
	[VALORHORAPAGAR] [decimal](19, 6) NULL,
	[VALORHORAPAGAR_BM] [decimal](19, 6) NULL,
	[COEFICIENTE] [decimal](19, 6) NULL,
	[VALORHORAFACTURAR] [decimal](19, 6) NULL,
	[VALORHORAFACTURAR_BM] [decimal](19, 6) NULL,
	[TotalFacturar] [decimal](19, 6) NULL,
	[TotalFacturar_BM] [decimal](19, 6) NULL,
	[QtdFacturar] [decimal](19, 6) NULL,
	[Sind] [bit] NULL,
	[SegSocNDias] [decimal](19, 6) NULL,
	[SegSocData] [varchar](6) NULL,
	[SSocialIncideDias] [bit] NULL,
	[PropTipoIncidencia] [tinyint] NULL,
	[QuantidadeDias] [decimal](19, 6) NULL,
	[QtdFacturarDias] [decimal](19, 6) NULL,
	[ValorDiaPagar] [decimal](19, 6) NULL,
	[ValorDiaPagar_BM] [decimal](19, 6) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_FHContractoRetifica] PRIMARY KEY CLUSTERED 
(
	[KeyFHContractoRetifica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHDescontos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHDescontos](
	[KeyFHDescontos] [int] IDENTITY(1,1) NOT NULL,
	[KeyDescontos] [int] NULL,
	[KeyFHC_FHoras] [int] NULL,
	[KeyFHContracto] [int] NULL,
	[CodDesconto] [varchar](5) NULL,
	[DES] [varchar](60) NULL,
	[PVA] [smallint] NULL,
	[VAL] [decimal](19, 6) NULL,
	[VAL_BM] [decimal](19, 6) NULL,
	[QTD] [decimal](19, 6) NULL,
	[SegSocData] [varchar](6) NULL,
	[SSocialNaoIncideDias] [bit] NULL,
	[KeyCvC_Artigos] [int] NULL,
	[IndemSemAvisoPrevio] [bit] NULL,
	[QTDDias] [decimal](19, 6) NULL,
 CONSTRAINT [PK_FHDescontos] PRIMARY KEY NONCLUSTERED 
(
	[KeyFHDescontos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHOutrosAbonos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHOutrosAbonos](
	[KeyFHOutrosAbonos] [int] IDENTITY(1,1) NOT NULL,
	[KeyFHContracto] [int] NOT NULL,
	[CodAbono] [varchar](5) NOT NULL,
	[Quantidade] [decimal](7, 3) NOT NULL,
	[Total] [decimal](19, 6) NOT NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[KeyCvC_Artigos] [int] NULL,
 CONSTRAINT [PK_FHOutrosAbonos] PRIMARY KEY CLUSTERED 
(
	[KeyFHOutrosAbonos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHOutrosAbonosPortal]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHOutrosAbonosPortal](
	[KeyFHOutrosAbonosPortal] [int] IDENTITY(1,1) NOT NULL,
	[KeyFHOutrosAbonos] [int] NOT NULL,
	[PortalUtilizador] [varchar](255) NOT NULL,
	[PortalDtUltimaModif] [smalldatetime] NULL,
 CONSTRAINT [PK_FHOutrosAbonosPortal] PRIMARY KEY CLUSTERED 
(
	[KeyFHOutrosAbonosPortal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FHProvisoes]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHProvisoes](
	[KeyFHProvisoes] [int] IDENTITY(1,1) NOT NULL,
	[KeyFHContracto] [int] NULL,
	[CodAgContrato] [varchar](14) NULL,
	[Total_C] [decimal](19, 6) NULL,
	[Total_C_BM] [decimal](19, 6) NULL,
	[Total_D] [decimal](19, 6) NULL,
	[Total_D_BM] [decimal](19, 6) NULL,
	[KeyCE] [int] NULL,
	[AnoMes] [varchar](7) NULL,
	[User] [varchar](6) NULL,
	[DATA] [smalldatetime] NULL,
	[C_SF] [decimal](19, 6) NULL,
	[C_SF_BM] [decimal](19, 6) NULL,
	[C_FNG] [decimal](19, 6) NULL,
	[C_FNG_BM] [decimal](19, 6) NULL,
	[C_SN] [decimal](19, 6) NULL,
	[C_SN_BM] [decimal](19, 6) NULL,
	[C_CPE] [decimal](19, 6) NULL,
	[C_CPE_BM] [decimal](19, 6) NULL,
	[C_TSU] [decimal](19, 6) NULL,
	[C_TSU_BM] [decimal](19, 6) NULL,
	[U_TSU_FN] [decimal](19, 6) NULL,
	[U_TSU_FN_BM] [decimal](19, 6) NULL,
	[U_FNG] [decimal](19, 6) NULL,
	[U_FNG_BM] [decimal](19, 6) NULL,
	[D_CPE] [decimal](19, 6) NULL,
	[D_CPE_BM] [decimal](19, 6) NULL,
	[TX_CPE] [decimal](19, 6) NULL,
	[TX_SF] [decimal](19, 6) NULL,
	[TX_FNG] [decimal](19, 6) NULL,
	[TX_SN] [decimal](19, 6) NULL,
	[U_SFNGComFFerias] [decimal](19, 6) NULL,
	[U_SFNGComFFerias_BM] [decimal](19, 6) NULL,
	[U_SFNGPago] [decimal](19, 6) NULL,
	[U_SFNGPago_BM] [decimal](19, 6) NULL,
	[C_Seg] [decimal](19, 6) NULL,
	[C_Seg_BM] [decimal](19, 6) NULL,
	[U_Seg] [decimal](19, 6) NULL,
	[U_Seg_BM] [decimal](19, 6) NULL,
	[Total_CFact] [decimal](19, 6) NULL,
	[Total_CFact_BM] [decimal](19, 6) NULL,
	[C_SFFact] [decimal](19, 6) NULL,
	[C_SFFact_BM] [decimal](19, 6) NULL,
	[C_FNGFact] [decimal](19, 6) NULL,
	[C_FNGFact_BM] [decimal](19, 6) NULL,
	[C_SNFact] [decimal](19, 6) NULL,
	[C_SNFact_BM] [decimal](19, 6) NULL,
	[C_CPEFact] [decimal](19, 6) NULL,
	[C_CPEFact_BM] [decimal](19, 6) NULL,
	[C_TSUFact] [decimal](19, 6) NULL,
	[C_TSUFact_BM] [decimal](19, 6) NULL,
	[C_SegFact] [decimal](19, 6) NULL,
	[C_SegFact_BM] [decimal](19, 6) NULL,
	[P_PARP] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyFHProvisoes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FicheirosClientePortal]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FicheirosClientePortal](
	[KeyFicheirosClientePortal] [int] IDENTITY(1,1) NOT NULL,
	[NomeFicheiro] [varchar](128) NULL,
	[PathFicheiro] [varchar](256) NULL,
	[TodosClientes] [bit] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_FicheirosClientePortal] PRIMARY KEY CLUSTERED 
(
	[KeyFicheirosClientePortal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Form_AreaEducacao]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Form_AreaEducacao](
	[KeyForm_AreaEducacao] [int] IDENTITY(1,1) NOT NULL,
	[CodForm_AreaEducacao] [varchar](4) NULL,
	[Descricao] [varchar](150) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Form_Entidade]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Form_Entidade](
	[KeyForm_Entidade] [int] IDENTITY(1,1) NOT NULL,
	[CodForm_Entidade] [varchar](2) NULL,
	[Descricao] [varchar](80) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Form_Horario]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Form_Horario](
	[KeyForm_Horario] [int] IDENTITY(1,1) NOT NULL,
	[CodForm_Horario] [varchar](2) NULL,
	[Descricao] [varchar](20) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Form_Iniciativa]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Form_Iniciativa](
	[KeyForm_Iniciativa] [int] IDENTITY(1,1) NOT NULL,
	[CodForm_Iniciativa] [varchar](2) NULL,
	[Descricao] [varchar](90) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Form_Modalidade]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Form_Modalidade](
	[KeyForm_Modalidade] [int] IDENTITY(1,1) NOT NULL,
	[CodForm_Modalidade] [varchar](2) NULL,
	[Descricao] [varchar](110) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Form_PeriodoReferencia]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Form_PeriodoReferencia](
	[KeyForm_PeriodoReferencia] [int] IDENTITY(1,1) NOT NULL,
	[CodForm_PeriodoReferencia] [varchar](2) NULL,
	[Descricao] [varchar](130) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Form_Situacao]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Form_Situacao](
	[KeyForm_Situacao] [int] IDENTITY(1,1) NOT NULL,
	[CodForm_Situacao] [varchar](2) NULL,
	[Descricao] [varchar](340) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Form_TipoCertDiploma]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Form_TipoCertDiploma](
	[KeyForm_TipoCertDiploma] [int] IDENTITY(1,1) NOT NULL,
	[CodForm_TipoCertDiploma] [varchar](2) NULL,
	[Descricao] [varchar](80) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Form_TipoQualificacao]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Form_TipoQualificacao](
	[KeyForm_TipoQualificacao] [int] IDENTITY(1,1) NOT NULL,
	[CodForm_TipoQualificacao] [varchar](2) NULL,
	[Descricao] [varchar](80) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fornecedores]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fornecedores](
	[KeyFornecedores] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Nome] [varchar](60) NOT NULL,
	[NIF] [varchar](18) NOT NULL,
	[Morada] [varchar](100) NOT NULL,
	[Localidade] [varchar](40) NOT NULL,
	[CodPostal] [varchar](8) NOT NULL,
	[LocalidadeCodPostal] [varchar](40) NOT NULL,
	[Pais] [varchar](60) NOT NULL,
	[CodPais] [varchar](5) NOT NULL,
	[IsActivo] [bit] NOT NULL,
	[Observacoes] [varchar](512) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_Fornecedores] PRIMARY KEY CLUSTERED 
(
	[KeyFornecedores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Freguesias]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Freguesias](
	[KeyFreg] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoFreg] [varchar](40) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_Freguesias] PRIMARY KEY NONCLUSTERED 
(
	[KeyFreg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_Condutores]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_Condutores](
	[KeyCondutores] [int] IDENTITY(1,1) NOT NULL,
	[CodCondutor] [varchar](6) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_FRT_Condutores] PRIMARY KEY CLUSTERED 
(
	[KeyCondutores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_Manutencoes]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_Manutencoes](
	[KeyManutencoes] [int] IDENTITY(1,1) NOT NULL,
	[CodManutencao] [varchar](9) NOT NULL,
	[CodViaturas] [varchar](6) NOT NULL,
	[CodOficina] [varchar](6) NOT NULL,
	[CodReparacao] [varchar](6) NOT NULL,
	[CodOcorrencia] [varchar](6) NOT NULL,
	[DataInicio] [smalldatetime] NOT NULL,
	[DataFim] [smalldatetime] NOT NULL,
	[HoraInicio] [varchar](5) NOT NULL,
	[HoraFim] [varchar](5) NOT NULL,
	[Valor] [decimal](19, 6) NOT NULL,
	[IVA] [decimal](19, 6) NOT NULL,
	[TotalCIva] [decimal](19, 6) NOT NULL,
	[KeyViaturas] [int] NOT NULL,
	[contacto] [varchar](150) NULL,
	[telefone] [varchar](12) NULL,
	[email] [varchar](150) NULL,
	[observacoes] [varchar](2500) NULL,
	[seguro] [bit] NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_FRT_Manutencoes] PRIMARY KEY CLUSTERED 
(
	[KeyManutencoes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_Marcas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_Marcas](
	[KeyMarcas] [int] IDENTITY(1,1) NOT NULL,
	[CodMarca] [varchar](4) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_FRT_Marcas] PRIMARY KEY CLUSTERED 
(
	[KeyMarcas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_Modelos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_Modelos](
	[KeyModelo] [int] IDENTITY(1,1) NOT NULL,
	[CodMarca] [varchar](4) NOT NULL,
	[CodModelo] [varchar](4) NOT NULL,
	[CodMM] [varchar](8) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_FRT_Modelos] PRIMARY KEY CLUSTERED 
(
	[KeyModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_Ocorrencias]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_Ocorrencias](
	[KeyOcorrencias] [int] IDENTITY(1,1) NOT NULL,
	[CodOcorrencia] [varchar](6) NOT NULL,
	[CodTipoOcorrencia] [varchar](6) NOT NULL,
	[CodCondutor] [varchar](6) NOT NULL,
	[Descricao] [varchar](1024) NOT NULL,
	[Data] [smalldatetime] NULL,
	[Local] [varchar](50) NOT NULL,
	[KeyViaturas] [int] NOT NULL,
	[KeyTiposOcorrencias] [int] NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[culpa] [int] NULL,
	[cobertura] [bit] NULL,
	[Hora] [varchar](5) NOT NULL,
 CONSTRAINT [PK_FRT_Ocorrencias] PRIMARY KEY CLUSTERED 
(
	[KeyOcorrencias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_Oficinas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_Oficinas](
	[KeyOficinas] [int] IDENTITY(1,1) NOT NULL,
	[CodOficina] [varchar](6) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_FRT_Oficinas] PRIMARY KEY CLUSTERED 
(
	[KeyOficinas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_Seguros_CE]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_Seguros_CE](
	[KeySeguros_CE] [int] IDENTITY(1,1) NOT NULL,
	[CodSeguros_CE] [varchar](6) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_FRT_Seguros_CE] PRIMARY KEY CLUSTERED 
(
	[KeySeguros_CE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_SegurosApolices]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_SegurosApolices](
	[KeySegurosApolices] [int] IDENTITY(1,1) NOT NULL,
	[CodSeguros_CE] [varchar](6) NOT NULL,
	[numApolice] [varchar](6) NOT NULL,
	[Inicio] [smalldatetime] NOT NULL,
	[Fim] [smalldatetime] NOT NULL,
	[Premio] [decimal](19, 6) NOT NULL,
	[KeyViaturas] [int] NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_FRT_SegurosApolices] PRIMARY KEY CLUSTERED 
(
	[KeySegurosApolices] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_TiposCulpas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_TiposCulpas](
	[KeyTiposCulpas] [int] IDENTITY(1,1) NOT NULL,
	[codCulpa] [varchar](6) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FRT_TiposCulpas] PRIMARY KEY CLUSTERED 
(
	[KeyTiposCulpas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_TiposOcorrencias]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_TiposOcorrencias](
	[KeyTiposOcorrencias] [int] IDENTITY(1,1) NOT NULL,
	[CodTipoOcorrencia] [varchar](6) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FRT_TiposOcorrencias] PRIMARY KEY CLUSTERED 
(
	[KeyTiposOcorrencias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_TiposViaturas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_TiposViaturas](
	[KeyTiposViaturas] [int] IDENTITY(1,1) NOT NULL,
	[CodTipoViatura] [varchar](4) NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FRT_TiposViaturas] PRIMARY KEY CLUSTERED 
(
	[KeyTiposViaturas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_Viaturas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_Viaturas](
	[KeyViaturas] [int] IDENTITY(1,1) NOT NULL,
	[CodViaturas] [varchar](6) NOT NULL,
	[codMarca] [varchar](4) NOT NULL,
	[codModelo] [varchar](4) NOT NULL,
	[codMM] [varchar](8) NOT NULL,
	[CodTipoViatura] [varchar](6) NOT NULL,
	[codFrota] [varchar](6) NOT NULL,
	[Versao] [varchar](25) NOT NULL,
	[Matricula] [varchar](8) NOT NULL,
	[Registo] [varchar](10) NOT NULL,
	[numQuadro] [varchar](30) NOT NULL,
	[lotacao] [int] NOT NULL,
	[CompraValor] [decimal](19, 6) NOT NULL,
	[CompraData] [smalldatetime] NOT NULL,
	[CompraMeses] [int] NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[activa] [bit] NOT NULL,
	[RegistoInterno] [varchar](40) NULL,
 CONSTRAINT [PK_FRT_Viaturas] PRIMARY KEY CLUSTERED 
(
	[KeyViaturas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_ViaturasAmortizacoes]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_ViaturasAmortizacoes](
	[KeyViaturasAmortizacoes] [int] IDENTITY(1,1) NOT NULL,
	[CodViaturaAmortizacao] [varchar](6) NOT NULL,
	[CodViatura] [varchar](6) NOT NULL,
	[codBanco] [varchar](6) NOT NULL,
	[codConta] [varchar](6) NOT NULL,
	[codLocaldora] [varchar](6) NOT NULL,
	[Data] [smalldatetime] NOT NULL,
	[Valor] [decimal](19, 6) NOT NULL,
	[IVA] [decimal](19, 6) NOT NULL,
	[TotalCIva] [decimal](19, 6) NOT NULL,
	[numPrestacao] [int] NOT NULL,
 CONSTRAINT [PK_FRT_ViaturasAmortizacoes] PRIMARY KEY CLUSTERED 
(
	[KeyViaturasAmortizacoes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_ViaturasApolices]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_ViaturasApolices](
	[KeySegurosViaturas] [int] IDENTITY(1,1) NOT NULL,
	[CodSeguros_CE] [varchar](6) NOT NULL,
	[CodViaturas] [varchar](6) NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[KeyViaturas] [int] NOT NULL,
	[KeySeguros_CE] [int] NOT NULL,
	[numApoilice] [varchar](50) NOT NULL,
	[dataInicio] [smalldatetime] NULL,
	[dataFim] [smalldatetime] NULL,
	[numDias] [int] NULL,
	[Contacto] [varchar](15) NOT NULL,
	[ContactoNome] [varchar](50) NOT NULL,
	[servQuebraVidros] [bit] NOT NULL,
	[servTodosRiscos] [bit] NOT NULL,
	[servViaturaSubst] [bit] NOT NULL,
 CONSTRAINT [PK_FRT_ViaturasApolices] PRIMARY KEY CLUSTERED 
(
	[KeySegurosViaturas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_ViaturasCondutores]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_ViaturasCondutores](
	[KeyViaturasCondutores] [int] IDENTITY(1,1) NOT NULL,
	[CodViaturaCondutor] [varchar](6) NOT NULL,
	[CodCondutor] [varchar](6) NOT NULL,
	[KmInicio] [int] NOT NULL,
	[KmFim] [int] NULL,
	[KeyViaturas] [int] NOT NULL,
	[KeyCondutores] [int] NOT NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[DataInicio] [smalldatetime] NOT NULL,
	[DataFim] [smalldatetime] NULL,
	[HoraInicio] [varchar](5) NULL,
	[HoraFim] [varchar](5) NULL,
	[Observacoes] [varchar](2500) NULL,
 CONSTRAINT [PK_FRT_ViaturasCondutores] PRIMARY KEY CLUSTERED 
(
	[KeyViaturasCondutores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FRT_ViaturasCustos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FRT_ViaturasCustos](
	[KeyViaturasCustos] [int] IDENTITY(1,1) NOT NULL,
	[CodViaturaCusto] [varchar](6) NOT NULL,
	[CodViatura] [varchar](6) NOT NULL,
	[CodTipoCusto] [varchar](6) NOT NULL,
	[Data] [smalldatetime] NOT NULL,
	[valor] [decimal](19, 6) NOT NULL,
	[IVA] [decimal](19, 6) NOT NULL,
	[ValorCIva] [decimal](19, 6) NOT NULL,
	[CoberturaSeguro] [bit] NULL,
	[codCulpado] [int] NULL,
 CONSTRAINT [PK_FRT_ViaturasCustos] PRIMARY KEY CLUSTERED 
(
	[KeyViaturasCustos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FSA]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FSA](
	[KeyFSA] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](2) NOT NULL,
	[Descricao] [varchar](40) NOT NULL,
	[TaxaBeneficiario] [decimal](19, 6) NULL,
	[TaxaContribuinte] [decimal](19, 6) NULL,
	[IsActivo] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_FSA] PRIMARY KEY CLUSTERED 
(
	[KeyFSA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GrausParentesco]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GrausParentesco](
	[KeyGrauParentesco] [int] IDENTITY(1,1) NOT NULL,
	[CodGrauParentesco] [varchar](6) NOT NULL,
	[Descricao] [varchar](25) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_GrausParentesco] PRIMARY KEY CLUSTERED 
(
	[CodGrauParentesco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grupo](
	[KeyGrupo] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoGrupo] [varchar](30) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Codigo] [varchar](5) NULL,
	[TipoGrupo] [varchar](1) NULL,
	[ObrigaCP] [bit] NULL,
 CONSTRAINT [PK_Grupo] PRIMARY KEY NONCLUSTERED 
(
	[KeyGrupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GruposAgencia]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GruposAgencia](
	[KeyGruposAgencia] [int] IDENTITY(1,1) NOT NULL,
	[CodAgencia] [varchar](3) NOT NULL,
	[CodAgenciaAgrupada] [varchar](3) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [pkGruposAgencia] PRIMARY KEY NONCLUSTERED 
(
	[KeyGruposAgencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GTT_IVA_Excepcoes]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GTT_IVA_Excepcoes](
	[KeyIVA_Excepcoes] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NOT NULL,
	[DataDesdobra] [smalldatetime] NULL,
	[IVAAnterior] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HabilitacoesQP]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HabilitacoesQP](
	[KeyHabilitacoesQP] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](3) NOT NULL,
	[CodAntigo] [varchar](3) NULL,
	[Descricao] [varchar](128) NULL,
	[Obs] [varchar](256) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_HabilitacoesQP] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HistExportaTransfBancos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HistExportaTransfBancos](
	[KeyHistExpBanco] [int] IDENTITY(1,1) NOT NULL,
	[CodBanco] [varchar](4) NOT NULL,
	[NomeFicheiro] [varchar](128) NOT NULL,
	[CaminhoFicheiro] [varchar](128) NOT NULL,
	[Valor] [decimal](19, 6) NOT NULL,
	[QtdRegistos] [int] NULL,
	[Encriptado] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[ContentHash] [varbinary](max) NULL,
	[Origem] [varchar](35) NULL,
 CONSTRAINT [PK_HistExportaTransfBancos] PRIMARY KEY CLUSTERED 
(
	[KeyHistExpBanco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HLiterarias_01]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HLiterarias_01](
	[KeyHL01] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoHL01] [varchar](100) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodAHRNET] [varchar](8) NULL,
 CONSTRAINT [PK_HLiterarias_01] PRIMARY KEY CLUSTERED 
(
	[KeyHL01] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HLiterarias_02]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HLiterarias_02](
	[KeyHL02] [int] IDENTITY(1,1) NOT NULL,
	[KeyHL01] [int] NULL,
	[DescricaoHL02] [varchar](100) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodAHRNET] [varchar](8) NULL,
 CONSTRAINT [PK_HLiterarias_02] PRIMARY KEY NONCLUSTERED 
(
	[KeyHL02] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HLiterarias_03]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HLiterarias_03](
	[KeyHL03] [int] IDENTITY(1,1) NOT NULL,
	[KeyHL02] [int] NULL,
	[DescricaoHL03] [varchar](100) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodAHRNET] [varchar](8) NULL,
 CONSTRAINT [PK_HLiterarias_03] PRIMARY KEY NONCLUSTERED 
(
	[KeyHL03] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HorarioCE]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HorarioCE](
	[KeyHorarioCE] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NULL,
	[HorarioAuto] [bit] NULL,
	[NomeCE] [varchar](60) NULL,
	[CodHorarioCE] [varchar](5) NULL,
	[DescricaoHCE] [varchar](20) NULL,
	[HorasDia] [decimal](19, 6) NULL,
	[HorasSemana] [decimal](19, 6) NULL,
	[HorasMes] [decimal](19, 6) NULL,
	[HorasAno] [decimal](19, 6) NULL,
	[HManIni] [varchar](5) NULL,
	[HManFim] [varchar](5) NULL,
	[HTarIni] [varchar](5) NULL,
	[HTarFim] [varchar](5) NULL,
	[HoraExMaxDia] [decimal](19, 6) NULL,
	[HoraExMaxMes] [decimal](19, 6) NULL,
	[1HoraEx] [decimal](19, 6) NULL,
	[2HoraEx] [decimal](19, 6) NULL,
	[HoraExNocturna] [decimal](19, 6) NULL,
	[HoraExFS] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[DescritivoHorario] [text] NULL,
	[CodAgencia] [varchar](3) NULL,
	[DiaDO] [int] NULL,
	[DiaDC] [int] NULL,
	[HPeriodo3Ini] [varchar](5) NULL,
	[HPeriodo3Fim] [varchar](5) NULL,
	[HPeriodo4Ini] [varchar](5) NULL,
	[HPeriodo4Fim] [varchar](5) NULL,
	[HPeriodo5Ini] [varchar](5) NULL,
	[HPeriodo5Fim] [varchar](5) NULL,
	[KeyCE_NecLoc] [int] NULL,
	[IsInactivo] [bit] NULL,
 CONSTRAINT [PK_HorarioCE] PRIMARY KEY NONCLUSTERED 
(
	[KeyHorarioCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HorarioCEDetalhe]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HorarioCEDetalhe](
	[KeyHorarioCEDetalhe] [int] IDENTITY(1,1) NOT NULL,
	[KeyHorarioCE] [int] NOT NULL,
	[DiaSemana] [tinyint] NOT NULL,
	[HoraInicio1] [smalldatetime] NOT NULL,
	[HoraFim1] [smalldatetime] NOT NULL,
	[TipoHorario1] [smallint] NOT NULL,
	[HoraInicio2] [smalldatetime] NOT NULL,
	[HoraFim2] [smalldatetime] NOT NULL,
	[TipoHorario2] [smallint] NOT NULL,
	[HoraInicio3] [smalldatetime] NOT NULL,
	[HoraFim3] [smalldatetime] NOT NULL,
	[TipoHorario3] [smallint] NOT NULL,
	[HoraInicio4] [smalldatetime] NOT NULL,
	[HoraFim4] [smalldatetime] NOT NULL,
	[TipoHorario4] [smallint] NOT NULL,
	[HoraInicio5] [smalldatetime] NOT NULL,
	[HoraFim5] [smalldatetime] NOT NULL,
	[TipoHorario5] [smallint] NOT NULL,
	[TipoDia] [int] NOT NULL,
	[TotalHoras] [decimal](7, 3) NULL,
	[TotalTurnos] [decimal](7, 3) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_HorarioCEDetalhe] PRIMARY KEY CLUSTERED 
(
	[KeyHorarioCEDetalhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IdictDeleg]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IdictDeleg](
	[KeyIdictDeleg] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](8) NOT NULL,
	[Delegacao] [varchar](40) NULL,
	[Morada] [varchar](60) NULL,
	[Localidade] [varchar](40) NULL,
	[CodigoPostal] [varchar](40) NULL,
	[Telefone] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Email] [varchar](128) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_IdictDeleg] PRIMARY KEY CLUSTERED 
(
	[KeyIdictDeleg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Idioma](
	[KeyIdioma] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoIdioma] [varchar](15) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_Idioma] PRIMARY KEY NONCLUSTERED 
(
	[KeyIdioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImportedFiles]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImportedFiles](
	[KeyImportedFiles] [int] IDENTITY(1,1) NOT NULL,
	[FileType] [int] NOT NULL,
	[FileName] [varchar](128) NOT NULL,
	[FileExtension] [varchar](5) NOT NULL,
	[FileSize] [bigint] NOT NULL,
	[FileHash] [varchar](128) NOT NULL,
	[ImportedBy] [varchar](25) NULL,
	[ImportedDate] [smalldatetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Irs]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Irs](
	[KeyIRS] [int] IDENTITY(1,1) NOT NULL,
	[ANO] [varchar](4) NULL,
	[TIT] [varchar](25) NULL,
	[REM_MES_ATE] [decimal](19, 6) NULL,
	[REM_MES_ATE_BM] [decimal](19, 6) NULL,
	[DEP0] [decimal](19, 6) NULL,
	[DEP1] [decimal](19, 6) NULL,
	[DEP2] [decimal](19, 6) NULL,
	[DEP3] [decimal](19, 6) NULL,
	[DEP4] [decimal](19, 6) NULL,
	[DEP5] [decimal](19, 6) NULL,
	[REG] [tinyint] NULL,
 CONSTRAINT [PK_Irs] PRIMARY KEY NONCLUSTERED 
(
	[KeyIRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ListagemPesquisa]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ListagemPesquisa](
	[KeyListagem] [int] IDENTITY(1,1) NOT NULL,
	[KeyCabListagem] [int] NULL,
	[CampoListar] [varchar](50) NULL,
	[Tamanho] [smallint] NULL,
	[Form] [varchar](25) NULL,
	[NomeCampo] [varchar](50) NULL,
 CONSTRAINT [PK_ListagemPesquisa] PRIMARY KEY NONCLUSTERED 
(
	[KeyListagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ListNacProf]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ListNacProf](
	[KeyProf] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NULL,
	[Design] [varchar](150) NULL,
	[Descricao] [text] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK__ListNacProf__339FAB6E] PRIMARY KEY CLUSTERED 
(
	[KeyProf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LocalExameMedico]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LocalExameMedico](
	[KeyLocalExameMedico] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](15) NULL,
	[designacao] [varchar](40) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[CustoBase] [decimal](19, 6) NULL,
 CONSTRAINT [PK_LocalExameMedico] PRIMARY KEY CLUSTERED 
(
	[KeyLocalExameMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Localidades](
	[KeyLocal] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoLocal] [varchar](40) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_Localidades] PRIMARY KEY NONCLUSTERED 
(
	[KeyLocal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LogConferenciaDocumentos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogConferenciaDocumentos](
	[KeyLogConferenciaDocumentos] [int] IDENTITY(1,1) NOT NULL,
	[KeyContracto] [int] NULL,
	[CodContracto] [varchar](10) NULL,
	[DescTipoDoc] [varchar](200) NULL,
	[Observacoes] [varchar](max) NULL,
	[Resultado] [bit] NULL,
	[DescResultado] [varchar](10) NULL,
	[CodDocumento] [varchar](25) NULL,
	[DataDocumento] [datetime] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_LogConferenciaDocumentos] PRIMARY KEY CLUSTERED 
(
	[KeyLogConferenciaDocumentos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mapas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mapas](
	[keyMapas] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](60) NULL,
	[Rpt] [varchar](12) NULL,
	[Procedimento] [smallint] NULL,
	[Aplicacao] [varchar](10) NULL,
	[User] [varchar](6) NULL,
 CONSTRAINT [PK_Mapas] PRIMARY KEY NONCLUSTERED 
(
	[keyMapas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MapeamentoDomicilioFiscal]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MapeamentoDomicilioFiscal](
	[KeyMapDomFiscal] [int] IDENTITY(1,1) NOT NULL,
	[CodRegiao_G3T] [tinyint] NOT NULL,
	[CodRegiao_PRI] [varchar](10) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_MapeamentoDomicilioFiscal] PRIMARY KEY NONCLUSTERED 
(
	[KeyMapDomFiscal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MapeamentoRubricaEscalas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MapeamentoRubricaEscalas](
	[KeyMapeamentoRubricaEscala] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[Descricao] [varchar](60) NOT NULL,
	[CodAbono] [varchar](5) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_MapeamentoRubricaEscalas] PRIMARY KEY CLUSTERED 
(
	[KeyMapeamentoRubricaEscala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MeioRecebimento]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MeioRecebimento](
	[KeyMPRec] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoMRec] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CLIFACT] [bit] NULL,
	[CodClassMetodoPag] [varchar](2) NULL,
	[ApenasParaDJ] [bit] NULL,
	[PRITipMovDJ] [varchar](3) NULL,
 CONSTRAINT [PK_MeioRecebimento] PRIMARY KEY NONCLUSTERED 
(
	[KeyMPRec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MetodologiasTemplateCAB]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MetodologiasTemplateCAB](
	[KeyMetodologiaTemplateCAB] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](15) NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
	[Activo] [bit] NOT NULL,
	[PreDefinido] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[TipoNegocio] [tinyint] NULL,
 CONSTRAINT [PK_MetodologiasTemplateCAB] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MetodologiasTemplateDET]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MetodologiasTemplateDET](
	[KeyMetodologiaTemplateDET] [int] IDENTITY(1,1) NOT NULL,
	[KeyMetodologiaTemplateCAB] [int] NOT NULL,
	[Descricao] [varchar](128) NOT NULL,
	[Valor] [varchar](15) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Notas] [text] NULL,
 CONSTRAINT [PK_MetodologiasTemplateDET] PRIMARY KEY CLUSTERED 
(
	[KeyMetodologiaTemplateDET] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MetodosClassifCE]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MetodosClassifCE](
	[KeyMetodosClassifCE] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](60) NULL,
	[VolNegocios] [decimal](19, 6) NULL,
	[CapitalSocial] [decimal](19, 6) NULL,
	[QuadroPessoal] [int] NULL,
	[NAgencias] [int] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_MetodosClassifCE] PRIMARY KEY CLUSTERED 
(
	[KeyMetodosClassifCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MFAExameMedico]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MFAExameMedico](
	[KeyMFAExameMedico] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](5) NULL,
	[designacao] [varchar](20) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_MFAExameMedico] PRIMARY KEY CLUSTERED 
(
	[KeyMFAExameMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Modelos_Formacao]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Modelos_Formacao](
	[KeyModelos_Formacao] [int] IDENTITY(1,1) NOT NULL,
	[Formacao] [varchar](60) NULL,
	[DuracaoAccaoHoras] [int] NOT NULL,
	[SituacaoFormacaoProf] [varchar](2) NULL,
	[PerRefFormacao] [varchar](2) NULL,
	[PerRefFormacao_2] [varchar](2) NULL,
	[PerRefFormacao_3] [varchar](2) NULL,
	[PerRefFormacao_4] [varchar](2) NULL,
	[AreaEducacao] [varchar](3) NULL,
	[Desc_Area_Educacao] [varchar](150) NULL,
	[Modalidade] [varchar](2) NULL,
	[Iniciativa] [varchar](2) NULL,
	[DuracaoHoras] [int] NOT NULL,
	[Horario] [varchar](2) NULL,
	[Entidade] [varchar](2) NULL,
	[Tipo_Cert_Diploma] [varchar](2) NULL,
	[NivelQualificacao] [varchar](2) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[DtDuracaoHoras] [smalldatetime] NULL,
 CONSTRAINT [PK_Modelos_Formacao] PRIMARY KEY NONCLUSTERED 
(
	[KeyModelos_Formacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSHSTExameMedico]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSHSTExameMedico](
	[KeyMSHSTExameMedico] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](5) NULL,
	[designacao] [varchar](20) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[Tipo] [tinyint] NULL,
	[PorDefeito] [bit] NULL,
 CONSTRAINT [PK_MSHSTExameMedico] PRIMARY KEY CLUSTERED 
(
	[KeyMSHSTExameMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ObjectivosDasActividades]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObjectivosDasActividades](
	[KeyObjectivosDasActividades] [int] IDENTITY(1,1) NOT NULL,
	[TipoObjectivo] [smallint] NOT NULL,
	[ObjectivoEspecifico] [smallint] NULL,
	[ObjectivoEspecificoDesc] [varchar](50) NOT NULL,
	[Descricao] [varchar](25) NOT NULL,
	[DataInicio] [datetime] NOT NULL,
	[DataFim] [datetime] NOT NULL,
	[CodAgencia] [varchar](3) NOT NULL,
	[Consultor] [varchar](40) NOT NULL,
	[Quantidade] [decimal](19, 6) NOT NULL,
	[TipoMapa] [varchar](15) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ObjectivosDasActividades] PRIMARY KEY CLUSTERED 
(
	[KeyObjectivosDasActividades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paises](
	[KeytPaises] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoPaises] [varchar](50) NULL,
	[DescricaoNacional] [varchar](50) NULL,
	[DescricaoIdioma] [varchar](3) NULL,
	[DescricaoMoeda] [varchar](3) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[QPEEE] [varchar](3) NULL,
	[CodPaisISOAlpha3] [varchar](3) NULL,
	[CodPaisISOAlpha2] [varchar](2) NULL,
	[PermiteEnvioTrab] [bit] NULL,
	[NumDiasParaRetencaoIRS] [smallint] NULL,
	[IsComunicacaoACT] [bit] NULL,
	[isEU] [bit] NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY NONCLUSTERED 
(
	[KeytPaises] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pedido](
	[KeyPedido] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NULL,
	[KeyHorarioCE] [int] NULL,
	[KeyTarifasEntidades] [int] NULL,
	[KeyProposta] [int] NULL,
	[CodPedido] [varchar](10) NULL,
	[DtPedido] [smalldatetime] NULL,
	[NomeCEPedido] [varchar](60) NULL,
	[QRecPedido] [varchar](40) NULL,
	[CodProposta] [varchar](10) NULL,
	[DtProposta] [smalldatetime] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Satisfeito] [bit] NULL,
	[CodAgencia] [varchar](3) NULL,
	[CodArea] [varchar](2) NULL,
	[IndicaMoeda] [bit] NULL,
	[KeyVendedor] [int] NULL,
	[Vendedor] [varchar](40) NULL,
	[CDU_IdEstrutura] [varchar](20) NULL,
	[CDU_IdLinNegMPG] [varchar](20) NULL,
	[GeraCuttColectivo] [bit] NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY NONCLUSTERED 
(
	[KeyPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PedidoCat]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PedidoCat](
	[KeyPedidoCat] [int] IDENTITY(1,1) NOT NULL,
	[KeyPedido] [int] NULL,
	[KeyCE] [int] NULL,
	[KeyHorarioCE] [int] NULL,
	[DescricaoCategoria] [varchar](100) NULL,
	[QTD] [smallint] NULL,
	[SBMensalPed] [decimal](19, 6) NULL,
	[SBMensalPed_BM] [decimal](19, 6) NULL,
	[SAlmoco] [decimal](19, 6) NULL,
	[SAlmoco_BM] [decimal](19, 6) NULL,
	[SAlmocoFacturar] [decimal](19, 6) NULL,
	[SAlmocoFacturar_BM] [decimal](19, 6) NULL,
	[Coeficiente] [decimal](19, 6) NULL,
	[ValorHoraPagar] [decimal](19, 6) NULL,
	[ValorHoraPagar_BM] [decimal](19, 6) NULL,
	[CargaHS] [decimal](19, 6) NULL,
	[FacturacaoMensal] [decimal](19, 6) NULL,
	[FacturacaoMensal_BM] [decimal](19, 6) NULL,
	[ValorHoraFacturar] [decimal](19, 6) NULL,
	[ValorHoraFacturar_BM] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[HabilitLiter] [varchar](50) NULL,
	[AreaResid] [varchar](50) NULL,
	[FundCont] [varchar](50) NULL,
	[ExpProf] [varchar](50) NULL,
	[LocalTrab] [varchar](30) NULL,
	[IDADE] [int] NULL,
	[OutrasCond] [varchar](50) NULL,
	[OutrasCaract] [varchar](50) NULL,
	[Sexo] [varchar](1) NULL,
	[EntrevistaCli] [bit] NULL,
	[OutrasQualif] [varchar](250) NULL,
	[DtPrevInicio] [smalldatetime] NULL,
	[KeyTE_CatFun] [int] NULL,
	[CodigoCategoria] [varchar](10) NULL,
	[ObsPerfil] [varchar](2048) NULL,
	[CodIRCT] [varchar](5) NULL,
	[CodAcordoCCT] [varchar](5) NULL,
	[CodRegiao] [varchar](5) NULL,
	[Nivel] [varchar](3) NULL,
	[CodSubConta] [varchar](15) NULL,
	[MotRecurso] [text] NULL,
	[Funcao] [text] NULL,
	[DecretoLei] [varchar](15) NULL,
	[MotRecursoArtigo] [varchar](10) NULL,
	[MotRecursoDuracao] [int] NULL,
	[Especificacao] [text] NULL,
	[CodNacProf] [varchar](10) NULL,
	[ClassificacaoBLS] [varchar](5) NULL,
	[CLASSIF_BS] [int] NULL,
 CONSTRAINT [PK_PedidoCat] PRIMARY KEY NONCLUSTERED 
(
	[KeyPedidoCat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PedidoCatIdioma]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PedidoCatIdioma](
	[KeyPedCat_Idioma] [int] IDENTITY(1,1) NOT NULL,
	[KeyPedidoCat] [int] NULL,
	[Idioma] [varchar](15) NULL,
	[Fala] [varchar](1) NULL,
	[Leitura] [varchar](1) NULL,
	[Escrita] [varchar](1) NULL,
	[Traducao] [varchar](1) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_PedidoCatIdioma] PRIMARY KEY NONCLUSTERED 
(
	[KeyPedCat_Idioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PedidoCatInfo]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PedidoCatInfo](
	[KeyPedCat_Info] [int] IDENTITY(1,1) NOT NULL,
	[KeyPedidoCat] [int] NULL,
	[Nivel] [varchar](1) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[DescricaoTipoInfo] [varchar](25) NULL,
 CONSTRAINT [PK_PedidoCatInfo] PRIMARY KEY NONCLUSTERED 
(
	[KeyPedCat_Info] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PedidoRH]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PedidoRH](
	[KeyPedidoRH] [int] IDENTITY(1,1) NOT NULL,
	[KeyPedido] [int] NULL,
	[KeyPedidoCat] [int] NULL,
	[KeyCE] [int] NULL,
	[KeyHorarioCE] [int] NULL,
	[KeyCvC_DP] [int] NULL,
	[CodIntF] [varchar](10) NULL,
	[NomeCF] [varchar](60) NULL,
	[DescricaoCategoria] [varchar](100) NULL,
	[DtInicioRH] [smalldatetime] NULL,
	[HoraRH] [varchar](5) NULL,
	[DtFimRH] [smalldatetime] NULL,
	[SituacaoRH] [varchar](20) NULL,
	[ContractoGerado] [bit] NULL,
	[ObservRH] [varchar](50) NULL,
	[Verifica1Dia] [bit] NULL,
	[Verifica1Semana] [bit] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[KeyTE_CatFun] [int] NULL,
	[IndicaMoeda] [bit] NULL,
 CONSTRAINT [PK_PedidoRH] PRIMARY KEY NONCLUSTERED 
(
	[KeyPedidoRH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PerfisDescontos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PerfisDescontos](
	[KeyPerfisDescontos] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](2) NOT NULL,
	[Descricao] [varchar](40) NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_PerfisDescontos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PerfisDescontosDetalhe]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PerfisDescontosDetalhe](
	[KeyPerfisDescontosDetalhe] [int] IDENTITY(1,1) NOT NULL,
	[KeyPerfisDescontos] [int] NOT NULL,
	[CodDesconto] [varchar](5) NOT NULL,
	[IVA] [decimal](19, 6) NULL,
	[VAL] [decimal](19, 6) NULL,
	[VAL_BM] [decimal](19, 6) NULL,
	[USO] [bit] NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_PerfisDescontosDetalhe] PRIMARY KEY CLUSTERED 
(
	[CodDesconto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Poc]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Poc](
	[KeyPoc] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](22) NULL,
	[Descricao] [varchar](50) NULL,
	[Tipo] [varchar](12) NULL,
	[CodigoIVA] [varchar](5) NULL,
	[ContaIVA] [varchar](22) NULL,
	[Taxa] [decimal](19, 6) NULL,
	[NContrib] [varchar](16) NULL,
	[TipoTerc] [varchar](1) NULL,
	[CodCentroCusto] [varchar](15) NULL,
	[CentroCusto] [varchar](35) NULL,
	[CodReparte] [varchar](10) NULL,
	[Reparte] [varchar](40) NULL,
	[CntAnaliticaDBDB] [varchar](22) NULL,
	[CntAnaliticaDBCR] [varchar](22) NULL,
	[CntAnaliticaCRCR] [varchar](22) NULL,
	[CntAnaliticaCRDB] [varchar](22) NULL,
	[TipoPlano] [varchar](1) NULL,
	[ContaDebB] [varchar](22) NULL,
	[ContaCreB] [varchar](22) NULL,
	[ICurso] [varchar](30) NULL,
	[Data] [smalldatetime] NULL,
	[User] [varchar](6) NULL,
	[ClasseIVA] [varchar](10) NULL,
	[NOBRA] [varchar](4) NULL,
	[MCR0] [float] NULL,
	[MCR0_BM] [float] NULL,
	[MCR1] [float] NULL,
	[MCR1_BM] [float] NULL,
	[MCR2] [float] NULL,
	[MCR2_BM] [float] NULL,
	[MCR3] [float] NULL,
	[MCR3_BM] [float] NULL,
	[MCR4] [float] NULL,
	[MCR4_BM] [float] NULL,
	[MCR5] [float] NULL,
	[MCR5_BM] [float] NULL,
	[MCR6] [float] NULL,
	[MCR6_BM] [float] NULL,
	[MCR7] [float] NULL,
	[MCR7_BM] [float] NULL,
	[MCR8] [float] NULL,
	[MCR8_BM] [float] NULL,
	[MCR9] [float] NULL,
	[MCR9_BM] [float] NULL,
	[MCR10] [float] NULL,
	[MCR10_BM] [float] NULL,
	[MCR11] [float] NULL,
	[MCR11_BM] [float] NULL,
	[MCR12] [float] NULL,
	[MCR12_BM] [float] NULL,
	[MCR13] [float] NULL,
	[MCR13_BM] [float] NULL,
	[MCR14] [float] NULL,
	[MCR14_BM] [float] NULL,
	[MCR15] [float] NULL,
	[MCR15_BM] [float] NULL,
	[MDB0] [float] NULL,
	[MDB0_BM] [float] NULL,
	[MDB1] [float] NULL,
	[MDB1_BM] [float] NULL,
	[MDB2] [float] NULL,
	[MDB2_BM] [float] NULL,
	[MDB3] [float] NULL,
	[MDB3_BM] [float] NULL,
	[MDB4] [float] NULL,
	[MDB4_BM] [float] NULL,
	[MDB5] [float] NULL,
	[MDB5_BM] [float] NULL,
	[MDB6] [float] NULL,
	[MDB6_BM] [float] NULL,
	[MDB7] [float] NULL,
	[MDB7_BM] [float] NULL,
	[MDB8] [float] NULL,
	[MDB8_BM] [float] NULL,
	[MDB9] [float] NULL,
	[MDB9_BM] [float] NULL,
	[MDB10] [float] NULL,
	[MDB10_BM] [float] NULL,
	[MDB11] [float] NULL,
	[MDB11_BM] [float] NULL,
	[MDB12] [float] NULL,
	[MDB12_BM] [float] NULL,
	[MDB13] [float] NULL,
	[MDB13_BM] [float] NULL,
	[MDB14] [float] NULL,
	[MDB14_BM] [float] NULL,
	[MDB15] [float] NULL,
	[MDB15_BM] [float] NULL,
	[ORC1] [float] NULL,
	[ORC1_BM] [float] NULL,
	[ORC2] [float] NULL,
	[ORC2_BM] [float] NULL,
	[ORC3] [float] NULL,
	[ORC3_BM] [float] NULL,
	[ORC4] [float] NULL,
	[ORC4_BM] [float] NULL,
	[ORC5] [float] NULL,
	[ORC5_BM] [float] NULL,
	[ORC6] [float] NULL,
	[ORC6_BM] [float] NULL,
	[ORC7] [float] NULL,
	[ORC7_BM] [float] NULL,
	[ORC8] [float] NULL,
	[ORC8_BM] [float] NULL,
	[ORC9] [float] NULL,
	[ORC9_BM] [float] NULL,
	[ORC10] [float] NULL,
	[ORC10_BM] [float] NULL,
	[ORC11] [float] NULL,
	[ORC11_BM] [float] NULL,
	[ORC12] [float] NULL,
	[ORC12_BM] [float] NULL,
	[ORCTOTAL] [float] NULL,
	[ORCTOTAL_BM] [float] NULL,
	[Activa] [bit] NULL,
	[ClassificaAgencia] [bit] NULL,
 CONSTRAINT [PK_Poc01] PRIMARY KEY CLUSTERED 
(
	[KeyPoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[POC_Descricoes]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POC_Descricoes](
	[KeyPoc_Descricoes] [int] IDENTITY(1,1) NOT NULL,
	[AnoExercicio] [int] NOT NULL,
	[ContaPOC] [nvarchar](22) NOT NULL,
	[TipoPlano] [nvarchar](1) NOT NULL,
	[Descricao] [nvarchar](50) NULL,
	[User] [nvarchar](6) NULL,
	[Data] [datetime] NULL,
 CONSTRAINT [PK_POC_Descricoes] PRIMARY KEY CLUSTERED 
(
	[AnoExercicio] ASC,
	[ContaPOC] ASC,
	[TipoPlano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrazoPagamento]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrazoPagamento](
	[KeyPrazoPag] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoPrazo] [varchar](15) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_PrazoPagamento] PRIMARY KEY NONCLUSTERED 
(
	[KeyPrazoPag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PreFacturasSeries]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PreFacturasSeries](
	[KeyPreFacturaSerie] [int] IDENTITY(1,1) NOT NULL,
	[Serie] [varchar](10) NOT NULL,
	[Descricao] [varchar](25) NOT NULL,
	[SerieTemValidade] [bit] NOT NULL,
	[SerieDtValInicio] [smalldatetime] NULL,
	[SerieDtValFim] [smalldatetime] NULL,
	[Activa] [bit] NOT NULL,
	[PreDefinida] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_PreFacturasSeries] PRIMARY KEY CLUSTERED 
(
	[Serie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRI_TiposArtigo]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRI_TiposArtigo](
	[TipoArtigo] [varchar](3) NOT NULL,
	[Descricao] [varchar](20) NOT NULL,
	[TipoLinha] [varchar](2) NULL,
	[Sistema] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_PRI_TiposArtigo] PRIMARY KEY CLUSTERED 
(
	[TipoArtigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Projectos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Projectos](
	[ID] [nvarchar](40) NOT NULL,
	[Codigo] [nvarchar](40) NOT NULL,
	[Descricao] [nvarchar](512) NULL,
	[DataConclusaoPrevista] [datetime] NULL,
	[ERPTipoEntidadeA] [nvarchar](1) NULL,
	[ERPEntidadeA] [nvarchar](20) NULL,
	[Projecto] [bit] NOT NULL,
	[Tipo] [varchar](1) NOT NULL,
	[ConcursoID] [nvarchar](40) NULL,
	[TipoEntidadeResponsavel] [nvarchar](1) NULL,
	[EntidadeResponsavel] [nvarchar](60) NULL,
	[DataCriacao] [datetime] NULL,
	[PrevisaoInicio] [datetime] NULL,
	[Armazem] [nvarchar](5) NULL,
	[Observacoes] [varchar](1000) NULL,
	[TipoEmpreitadaID] [nvarchar](40) NOT NULL,
	[CDU_Inactivo] [bit] NOT NULL,
 CONSTRAINT [Projectos01] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [Projectos02] UNIQUE NONCLUSTERED 
(
	[Codigo] ASC,
	[ConcursoID] ASC,
	[Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PropostaCatFun]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PropostaCatFun](
	[KeyPropostaCatFun] [int] IDENTITY(1,1) NOT NULL,
	[KeyProposta] [int] NULL,
	[KeyTE_CatFun] [int] NULL,
	[KeyTarifasEntidades] [int] NULL,
	[KeyCE] [int] NULL,
	[KeyHorarioCE] [int] NULL,
	[DescricaoCategoria] [varchar](100) NULL,
	[DescricaoFuncao] [text] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodigoCategoria] [varchar](10) NULL,
 CONSTRAINT [PK_PropostaCatFun] PRIMARY KEY NONCLUSTERED 
(
	[KeyPropostaCatFun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Propostas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Propostas](
	[KeyProposta] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NULL,
	[KeyHorarioCE] [int] NULL,
	[KeyTarifasEntidades] [int] NULL,
	[CodProposta] [varchar](10) NULL,
	[DtProposta] [smalldatetime] NULL,
	[RevisaoProposta] [smallint] NULL,
	[SitucaoProposta] [varchar](15) NULL,
	[NomeCEProposta] [varchar](60) NULL,
	[CodTar] [varchar](10) NULL,
	[JustificacaoProposta] [varchar](1024) NULL,
	[ObservacoesProposta] [varchar](1024) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodAgencia] [varchar](3) NULL,
	[CodArea] [varchar](2) NULL,
	[IndicaMoeda] [bit] NULL,
	[Progresso] [decimal](19, 6) NULL,
	[ACTIVA] [bit] NULL,
	[CONCORRENCIA] [text] NULL,
	[Consultor] [varchar](30) NULL,
	[KeyVendedor] [int] NULL,
	[DataValidadeProposta] [smalldatetime] NULL,
	[KeyCE_Contactos] [int] NULL,
	[KeyCE_NecLoc] [int] NULL,
	[DuracaoProposta] [varchar](20) NULL,
	[DataPrevistaInicio] [smalldatetime] NULL,
	[NumHorasSemanais] [varchar](2) NULL,
	[CondicoesProposta] [varchar](max) NULL,
	[DiasPagamento] [varchar](2) NULL,
	[MeioPagamento] [varchar](40) NULL,
	[CondPagamento] [varchar](max) NULL,
	[ValorMinSubsAlim] [varchar](10) NULL,
	[NumMinTrab] [varchar](10) NULL,
	[ValorSubsTransporte] [decimal](19, 6) NULL,
	[CDU_IdEstrutura] [varchar](20) NULL,
	[CDU_IdLinNegMPG] [varchar](20) NULL,
	[CDU_IsDefinedOnTarget] [bit] NULL,
 CONSTRAINT [PK_Propostas] PRIMARY KEY NONCLUSTERED 
(
	[KeyProposta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PropostasAnexos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PropostasAnexos](
	[KeyPropostasAnexo] [int] IDENTITY(1,1) NOT NULL,
	[KeyPropostas] [int] NOT NULL,
	[Descricao] [varchar](40) NULL,
	[Anexo] [varchar](80) NULL,
	[DataAnexo] [smalldatetime] NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[Responsavel] [varchar](60) NULL,
	[lingua] [varchar](2) NULL,
 CONSTRAINT [PK_PropostasAnexos] PRIMARY KEY CLUSTERED 
(
	[KeyPropostasAnexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PropostasMetodologias]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PropostasMetodologias](
	[KeyPropostaMetodologia] [int] IDENTITY(1,1) NOT NULL,
	[KeyPropostas] [int] NOT NULL,
	[Descricao] [varchar](128) NOT NULL,
	[Valor] [varchar](15) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Notas] [text] NULL,
 CONSTRAINT [PK_PropostasMetodologias] PRIMARY KEY CLUSTERED 
(
	[KeyPropostaMetodologia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PropostasRappel]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PropostasRappel](
	[KeyPropostaRappel] [int] IDENTITY(1,1) NOT NULL,
	[KeyProposta] [int] NOT NULL,
	[EscalaoRange] [varchar](200) NULL,
	[Desconto] [decimal](19, 6) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_PropostasRappel] PRIMARY KEY CLUSTERED 
(
	[KeyPropostaRappel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PropostaTarifas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PropostaTarifas](
	[KeyPropostaTarifas] [int] IDENTITY(1,1) NOT NULL,
	[KeyProposta] [int] NULL,
	[KeyTE_CatFun] [int] NULL,
	[KeyTarifasEntidades] [int] NULL,
	[KeyCE] [int] NULL,
	[CodRub] [varchar](5) NULL,
	[SBMensal] [decimal](19, 6) NULL,
	[SBMensal_BM] [decimal](19, 6) NULL,
	[SubFerias] [decimal](19, 6) NULL,
	[SubFerias_BM] [decimal](19, 6) NULL,
	[SubNatal] [decimal](19, 6) NULL,
	[SubNatal_BM] [decimal](19, 6) NULL,
	[SubFeriasNG] [decimal](19, 6) NULL,
	[SubFeriasNG_BM] [decimal](19, 6) NULL,
	[SSocial] [decimal](19, 6) NULL,
	[SSocial_BM] [decimal](19, 6) NULL,
	[Seguro] [decimal](19, 6) NULL,
	[Seguro_BM] [decimal](19, 6) NULL,
	[ComplementoPE] [decimal](19, 6) NULL,
	[ComplementoPE_BM] [decimal](19, 6) NULL,
	[CargaHM] [decimal](19, 6) NULL,
	[ValorHoraPagar] [decimal](19, 6) NULL,
	[ValorHoraPagar_BM] [decimal](19, 6) NULL,
	[Coeficiente] [decimal](19, 6) NULL,
	[ValorHoraFacturar] [decimal](19, 6) NULL,
	[ValorHoraFacturar_BM] [decimal](19, 6) NULL,
	[FacturacaoMMensal] [decimal](19, 6) NULL,
	[FacturacaoMMensal_BM] [decimal](19, 6) NULL,
	[MargemBruta] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[DESCRICAORUBRICAS] [varchar](40) NULL,
 CONSTRAINT [PK_PropostaTarifas] PRIMARY KEY NONCLUSTERED 
(
	[KeyPropostaTarifas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProvisoesPreCalc]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProvisoesPreCalc](
	[KeyProvisoesPreCalc] [int] IDENTITY(1,1) NOT NULL,
	[Ano] [smallint] NOT NULL,
	[Mes] [tinyint] NOT NULL,
	[KeyCE] [int] NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[CodAgencia] [varchar](3) NOT NULL,
	[Activo] [bit] NOT NULL,
	[Prov_SF] [decimal](19, 6) NOT NULL,
	[Prov_SN] [decimal](19, 6) NOT NULL,
	[Prov_FNG] [decimal](19, 6) NOT NULL,
	[Prov_TSU_Seg] [decimal](19, 6) NOT NULL,
	[SF] [decimal](19, 6) NOT NULL,
	[SN] [decimal](19, 6) NOT NULL,
	[SFNG] [decimal](19, 6) NOT NULL,
	[FG] [decimal](19, 6) NOT NULL,
	[TSU_Seg] [decimal](19, 6) NOT NULL,
	[DtFimContracto] [smalldatetime] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ProvisoesPreCalc] PRIMARY KEY CLUSTERED 
(
	[KeyProvisoesPreCalc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProvisoesPreCalcConvAgencia]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProvisoesPreCalcConvAgencia](
	[KeyProvisoesPreCalcConvAgencia] [int] IDENTITY(1,1) NOT NULL,
	[Ano] [smallint] NOT NULL,
	[CodAgencia] [varchar](3) NOT NULL,
	[ConvertePara] [varchar](3) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_ProvisoesPreCalcConvAgencia] PRIMARY KEY CLUSTERED 
(
	[KeyProvisoesPreCalcConvAgencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Querys]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Querys](
	[KeyQuery] [int] IDENTITY(1,1) NOT NULL,
	[NomeQuery] [varchar](100) NULL,
	[Query] [varchar](1024) NULL,
	[Aplicacao] [varchar](10) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Titulo] [varchar](255) NULL,
 CONSTRAINT [PK_Querys] PRIMARY KEY NONCLUSTERED 
(
	[KeyQuery] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecibosCabecalhos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecibosCabecalhos](
	[KeyReciboC] [int] IDENTITY(1,1) NOT NULL,
	[KeyCvC_DP] [int] NULL,
	[KeyFHContracto] [int] NULL,
	[KeyContracto] [int] NULL,
	[MesAno] [varchar](7) NULL,
	[Numero] [varchar](10) NULL,
	[Nome] [varchar](60) NULL,
	[TotalAbonos] [decimal](19, 6) NULL,
	[TotalAbonos_BM] [decimal](19, 6) NULL,
	[TotalDescontos] [decimal](19, 6) NULL,
	[TotalDescontos_BM] [decimal](19, 6) NULL,
	[Dias] [smallint] NULL,
	[TotalIrs_A] [decimal](19, 6) NULL,
	[TotalIrs_A_BM] [decimal](19, 6) NULL,
	[TotalTrib_A] [decimal](19, 6) NULL,
	[TotalTrib_A_BM] [decimal](19, 6) NULL,
	[Titularidade] [smallint] NULL,
	[Taxa] [decimal](19, 6) NULL,
	[TotalIrs_H] [decimal](19, 6) NULL,
	[TotalIrs_H_BM] [decimal](19, 6) NULL,
	[TotalTrib_H] [decimal](19, 6) NULL,
	[TotalTrib_H_BM] [decimal](19, 6) NULL,
	[TotalSegSoc] [decimal](19, 6) NULL,
	[TotalSegSoc_BM] [decimal](19, 6) NULL,
	[TotalSelo] [decimal](19, 6) NULL,
	[TotalSelo_BM] [decimal](19, 6) NULL,
	[TotalADSE] [decimal](19, 6) NULL,
	[TotalADSE_BM] [decimal](19, 6) NULL,
	[TotalMSE] [decimal](19, 6) NULL,
	[TotalMSE_BM] [decimal](19, 6) NULL,
	[TotalCGA] [decimal](19, 6) NULL,
	[TotalCGA_BM] [decimal](19, 6) NULL,
	[TotalSindicatos] [decimal](19, 6) NULL,
	[TotalSindicatos_BM] [decimal](19, 6) NULL,
	[TotalSeguros] [decimal](19, 6) NULL,
	[TotalSeguros_BM] [decimal](19, 6) NULL,
	[SSCOL4] [varchar](100) NULL,
	[SSCOL5] [decimal](19, 6) NULL,
	[SSCOL5_BM] [decimal](19, 6) NULL,
	[SSCOL6] [decimal](19, 6) NULL,
	[SSCOL6_BM] [decimal](19, 6) NULL,
	[SSCOL7] [decimal](19, 6) NULL,
	[SSCOL7_BM] [decimal](19, 6) NULL,
	[SSCOL8] [decimal](19, 6) NULL,
	[SSCOL8_BM] [decimal](19, 6) NULL,
	[SSCOL9] [varchar](50) NULL,
	[FALTA1] [decimal](19, 6) NULL,
	[FALTA2] [decimal](19, 6) NULL,
	[FALTA3] [decimal](19, 6) NULL,
	[FALTAn] [decimal](19, 6) NULL,
	[TotalIrs_I] [decimal](19, 6) NULL,
	[TotalIrs_I_BM] [decimal](19, 6) NULL,
	[TotalTrib_I] [decimal](19, 6) NULL,
	[TotalTrib_I_BM] [decimal](19, 6) NULL,
	[SalarioHora] [decimal](19, 6) NULL,
	[SalarioHora_BM] [decimal](19, 6) NULL,
	[Establecimento] [varchar](40) NULL,
	[CentroCusto] [varchar](60) NULL,
	[SegurancaSocial] [varchar](3) NULL,
	[DataProc] [smalldatetime] NULL,
	[TotalLiquido] [decimal](19, 6) NULL,
	[TotalLiquido_BM] [decimal](19, 6) NULL,
	[DataFecho] [smalldatetime] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[keyce] [int] NULL,
	[codcontracto] [varchar](10) NULL,
	[Centro_Custo] [varchar](15) NULL,
	[SEGURO] [varchar](3) NULL,
	[NUM_CHEQUE] [varchar](25) NULL,
	[BANCONTA] [varchar](25) NULL,
	[CodAgencia] [varchar](3) NULL,
	[NUMREC] [int] NULL,
	[QP_REMOUT] [decimal](19, 6) NULL,
	[QP_SUBREG] [decimal](19, 6) NULL,
	[QP_TRABSUPL] [decimal](19, 6) NULL,
	[QP_PRESTIREG] [decimal](19, 6) NULL,
	[QP_HNREM] [int] NULL,
	[QP_HSUPL] [int] NULL,
	[SUBCENTRO] [varchar](15) NULL,
	[MeioRecebimento] [varchar](25) NULL,
	[Banco] [varchar](40) NULL,
	[NIB] [varchar](50) NULL,
	[IndicaMoeda] [bit] NULL,
	[NSSR] [varchar](14) NULL,
	[SAL_REF] [decimal](19, 6) NULL,
	[SAL_REF_BM] [decimal](19, 6) NULL,
	[DtEmissaoPAG] [smalldatetime] NULL,
	[EstEntEmp] [varchar](4) NULL,
	[TOTAL_TRANSF] [decimal](19, 6) NULL,
	[CodArea] [varchar](2) NULL,
	[DPGT] [smallint] NULL,
	[ContabilizadoSAL] [bit] NULL,
	[ContabilizadoPag] [bit] NULL,
	[SINDICATO] [varchar](3) NULL,
	[ctwRemLiq] [varchar](22) NULL,
	[ctwTSUEmp] [varchar](22) NULL,
	[ctwTSUEmpColab] [varchar](22) NULL,
	[ctwSeguroD] [varchar](22) NULL,
	[ctwSeguroC] [varchar](22) NULL,
	[ctwDiario] [varchar](5) NULL,
	[KeyReciboAnulado] [int] NULL,
	[ctwRemLiqPAG] [varchar](22) NULL,
	[ctwDiarioPAG] [varchar](5) NULL,
	[CodSocSind] [varchar](10) NULL,
	[CodBanco] [varchar](4) NULL,
	[REG] [tinyint] NULL,
	[DeclRI] [tinyint] NULL,
	[ExpDoc] [tinyint] NULL,
	[DeclRExp] [tinyint] NULL,
	[KeyAdiantamento] [int] NULL,
	[IBAN] [varchar](50) NULL,
	[SWIFT] [varchar](11) NULL,
	[NotasRecibos] [varchar](255) NULL,
	[Taxa1Seguro] [decimal](7, 3) NULL,
	[Taxa2Seguro] [decimal](7, 3) NULL,
	[TxBeneficiarioSS] [decimal](7, 3) NULL,
	[TxContribuinteSS] [decimal](7, 3) NULL,
	[HorasMes] [decimal](19, 6) NULL,
	[ContabilizadoUtilProv] [bit] NULL,
	[DtPeriodoInicio] [smalldatetime] NULL,
	[DtPeriodoFim] [smalldatetime] NULL,
	[ContabilizadoSAL_Por] [varchar](15) NULL,
	[ContabilizadoSAL_Em] [smalldatetime] NULL,
	[ContabilizadoUtilProv_Por] [varchar](15) NULL,
	[ContabilizadoUtilProv_Em] [smalldatetime] NULL,
	[ContabilizadoPAG_Por] [varchar](15) NULL,
	[ContabilizadoPAG_Em] [smalldatetime] NULL,
	[PreFacturado] [bit] NULL,
	[PreFacturado_Por] [varchar](15) NULL,
	[PreFacturado_Em] [smalldatetime] NULL,
	[KeyFacturaCab] [int] NULL,
	[SubRef_RecPorCartao] [bit] NULL,
	[SubRef_Pago] [bit] NULL,
	[SubRef_CodBanco] [varchar](4) NULL,
	[SubRef_BancoConta] [varchar](25) NULL,
	[SubRef_DataEmissaoPag] [smalldatetime] NULL,
	[SubRef_NumNIB] [varchar](50) NULL,
	[ContabilizadoCompras] [bit] NULL,
	[ContabilizadoCompras_Por] [varchar](15) NULL,
	[ContabilizadoCompras_Em] [smalldatetime] NULL,
	[CDU_IdEstrutura] [varchar](20) NULL,
	[CDU_IdLinNegMPG] [varchar](20) NULL,
	[CDU_IdLinNegPT] [varchar](20) NULL,
	[KeyProjecto] [int] NULL,
	[ContabilizadoConstProv] [bit] NULL,
	[ContabilizadoConstProv_Em] [smalldatetime] NULL,
	[ContabilizadoConstProv_Por] [varchar](15) NULL,
	[KeyContractoProjecto] [int] NULL,
	[NumViasImpressao] [int] NULL,
	[DataUltImpressao] [smalldatetime] NULL,
	[DescSobretaxaPerc] [decimal](7, 3) NULL,
	[SegSocialNIPC] [varchar](18) NULL,
	[TotalIsento_A] [decimal](19, 6) NULL,
	[TotalIsento_A_BM] [decimal](19, 6) NULL,
	[TotalIsento_I] [decimal](19, 6) NULL,
	[TotalIsento_I_BM] [decimal](19, 6) NULL,
	[TotalIsento_H] [decimal](19, 6) NULL,
	[TotalIsento_H_BM] [decimal](19, 6) NULL,
	[SubRef_RecPoreTicket] [bit] NULL,
	[ContabilizadoSubRef] [bit] NULL,
	[ContabilizadoSubRef_Em] [smalldatetime] NULL,
	[ContabilizadoSubRef_Por] [varchar](15) NULL,
	[KeyPreFactura] [int] NULL,
	[ContabIncentivoEmpregoSAL] [bit] NULL,
	[ContabIncentivoEmpregoSAL_Por] [varchar](15) NULL,
	[ContabIncentivoEmpregoSAL_Em] [smalldatetime] NULL,
	[CodigoSAMS] [varchar](2) NULL,
	[TaxaBeneficiarioSAMS] [decimal](7, 3) NULL,
	[TaxaContribuinteSAMS] [decimal](7, 3) NULL,
	[TotalSAMS] [decimal](19, 6) NULL,
	[TotalSAMS_BM] [decimal](19, 6) NULL,
	[CodigoFSA] [varchar](2) NULL,
	[TaxaBeneficiarioFSA] [decimal](7, 3) NULL,
	[TaxaContribuinteFSA] [decimal](7, 3) NULL,
	[TotalFSA] [decimal](19, 6) NULL,
	[TotalFSA_BM] [decimal](19, 6) NULL,
	[NumDependentes] [smallint] NULL,
	[EstCivilF] [varchar](20) NULL,
	[TipoIncidenciaSind] [tinyint] NULL,
	[ProcIndependente] [bit] NULL,
	[KeyCvC_Independentes] [int] NULL,
	[Conferido] [bit] NULL,
	[DtConferido] [smalldatetime] NULL,
	[SubRef_Banco] [varchar](40) NULL,
	[SubRef_Swift] [varchar](11) NULL,
	[NumOrdemSequencial] [int] NULL,
	[NumRecInterno] [varchar](10) NULL,
	[TipoUnidadePag] [int] NULL,
	[IsCompensacaoPecuniariaGlobal] [bit] NULL,
	[Sind_DataEmissaoPag] [smalldatetime] NULL,
	[Sind_Pago] [bit] NULL,
	[Sind_BancoConta] [varchar](25) NULL,
	[Sind_NumNIB] [varchar](50) NULL,
	[Sind_Banco] [varchar](40) NULL,
	[Sind_SWIFT] [varchar](11) NULL,
	[Sind_IBAN] [varchar](50) NULL,
	[Sind_CodBanco] [varchar](4) NULL,
	[RefInternaTransf] [varchar](25) NULL,
	[ExpTransf] [bit] NULL,
	[ExpTransfPor] [varchar](15) NULL,
	[ExpTransfEm] [smalldatetime] NULL,
	[HorasSemana] [decimal](19, 6) NULL,
	[HorasDia] [decimal](19, 6) NULL,
	[SubRef_NumCartao] [varchar](25) NULL,
	[BusinessUnit] [varchar](10) NULL,
	[UnitGroup] [varchar](10) NULL,
	[CodUnidade] [varchar](10) NULL,
	[DT_NumDias] [int] NULL,
	[DT_NumDiasCalc] [int] NULL,
	[Validado] [bit] NULL,
	[ValidadoPor] [varchar](25) NULL,
	[ValidadoEm] [smalldatetime] NULL,
	[IsEmpresa] [bit] NULL,
	[TipoCartao] [tinyint] NULL,
	[SubRef_NumIBAN] [varchar](50) NULL,
 CONSTRAINT [PK_RecibosCabecalhos] PRIMARY KEY CLUSTERED 
(
	[KeyReciboC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecibosCentroCusto]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecibosCentroCusto](
	[KeyReciboCentroCusto] [int] IDENTITY(1,1) NOT NULL,
	[KeyRecibo] [int] NOT NULL,
	[KeyContracto] [int] NOT NULL,
	[CentroCusto] [varchar](15) NOT NULL,
	[TaxaImputacao] [decimal](7, 3) NOT NULL,
	[TotalAbonos] [decimal](19, 6) NOT NULL,
	[TotalDescontos] [decimal](19, 6) NOT NULL,
	[TotalSegSoc] [decimal](19, 6) NOT NULL,
	[TotalSindicatos] [decimal](19, 6) NOT NULL,
	[TotalSeguros] [decimal](19, 6) NOT NULL,
	[TotalIrs_A] [decimal](19, 6) NOT NULL,
	[TotalTrib_A] [decimal](19, 6) NOT NULL,
	[TotalIsento_A] [decimal](19, 6) NOT NULL,
	[TotalIrs_H] [decimal](19, 6) NOT NULL,
	[TotalTrib_H] [decimal](19, 6) NOT NULL,
	[TotalIsento_H] [decimal](19, 6) NOT NULL,
	[TotalIrs_I] [decimal](19, 6) NOT NULL,
	[TotalTrib_I] [decimal](19, 6) NOT NULL,
	[TotalIsento_I] [decimal](19, 6) NOT NULL,
	[TotalLiquido] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_RecibosCentroCusto] PRIMARY KEY CLUSTERED 
(
	[KeyReciboCentroCusto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecibosDetalhe]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecibosDetalhe](
	[KeyReciboD] [int] IDENTITY(1,1) NOT NULL,
	[KeyReciboC] [int] NULL,
	[MesAno] [varchar](7) NULL,
	[Numero] [varchar](10) NULL,
	[CodAbono] [varchar](5) NULL,
	[Abonos] [varchar](60) NULL,
	[AbonosValor] [decimal](19, 6) NULL,
	[AbonosValor_BM] [decimal](19, 6) NULL,
	[AbonosQuant] [decimal](19, 6) NULL,
	[AbonosCentroCusto] [varchar](40) NULL,
	[AbonosConta] [varchar](15) NULL,
	[AbonosGrupo] [smallint] NULL,
	[AbonosObs] [varchar](40) NULL,
	[CodDesconto] [varchar](5) NULL,
	[Descontos] [varchar](60) NULL,
	[DescontosValor] [decimal](19, 6) NULL,
	[DescontosValor_BM] [decimal](19, 6) NULL,
	[DescontosQtdHoras] [decimal](19, 6) NULL,
	[DescontosQtdDias] [decimal](19, 6) NULL,
	[DescontosIncidencia] [decimal](19, 6) NULL,
	[DescontosIncidencia_BM] [decimal](19, 6) NULL,
	[DescontosConta] [varchar](15) NULL,
	[DescontosOrganismo] [varchar](40) NULL,
	[DescontosGrupo] [smallint] NULL,
	[DescontosObs] [varchar](40) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[IRS] [bit] NULL,
	[SSocial] [bit] NULL,
	[SFerias] [bit] NULL,
	[SNatal] [bit] NULL,
	[SFeriasNGoz] [bit] NULL,
	[CompEmp] [bit] NULL,
	[Sind] [bit] NULL,
	[TipoSS] [varchar](1) NULL,
	[SegSocNDias] [decimal](19, 6) NULL,
	[SegSocData] [varchar](6) NULL,
	[Seguro] [bit] NULL,
	[SSocialIncideDias] [bit] NULL,
	[SegSocDataDESC] [varchar](6) NULL,
	[COL_SG] [smallint] NULL,
	[TipoValorSeg] [varchar](2) NULL,
	[SegSocNDiasP2] [decimal](19, 6) NULL,
	[SegSocDataP2] [varchar](6) NULL,
	[AbonosValorTrib] [decimal](19, 6) NULL,
	[AbonosValorTrib_BM] [decimal](19, 6) NULL,
	[AbonosValorTribP2] [decimal](19, 6) NULL,
	[AbonosValorTribP2_BM] [decimal](19, 6) NULL,
	[DescontosValorTrib] [decimal](19, 6) NULL,
	[DescontosValorTrib_BM] [decimal](19, 6) NULL,
	[DescontosValorTribP2] [decimal](19, 6) NULL,
	[DescontosValorTribP2_BM] [decimal](19, 6) NULL,
	[SegSocDataDESCP2] [varchar](6) NULL,
	[Isento] [bit] NULL,
	[CodTipoRend] [varchar](3) NULL,
	[TaxaDesconto] [decimal](19, 6) NULL,
	[TipoIncidenciaIRS] [smallint] NULL,
	[AbonosValorUnit] [decimal](19, 6) NULL,
	[AbonosValorUnit_BM] [decimal](19, 6) NULL,
	[DescontosSSocialNaoIncideDias] [bit] NULL,
	[UsaValorMinimo] [bit] NULL,
	[Val_Minimo] [decimal](19, 6) NULL,
	[AbonosQuantDias] [decimal](19, 6) NULL,
	[AbonosValorDia] [decimal](19, 6) NULL,
	[AbonosValorDia_BM] [decimal](19, 6) NULL,
	[SemAvisoPrevio] [bit] NULL,
	[IndemSemAvisoPrevio] [bit] NULL,
	[IncideDuplaTrib] [bit] NULL,
	[MesAnoRetroativo] [varchar](7) NULL,
	[AbonosSemRetencaoNaFonte] [bit] NULL,
 CONSTRAINT [PK_RecibosDetalhe_1] PRIMARY KEY CLUSTERED 
(
	[KeyReciboD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecibosDuplaTrib]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecibosDuplaTrib](
	[KeyRecibosDuplaTrib] [int] IDENTITY(1,1) NOT NULL,
	[KeyReciboC] [int] NOT NULL,
	[TotalIncidenciaBase] [decimal](19, 6) NOT NULL,
	[TotalIncidenciaCalc] [decimal](19, 6) NOT NULL,
	[Taxa] [decimal](7, 3) NOT NULL,
	[TotalRetencao] [decimal](19, 6) NOT NULL,
	[Impresso] [bit] NULL,
	[ImpressoPor] [varchar](6) NULL,
	[ImpressoEm] [smalldatetime] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodPaisISOAlpha2] [varchar](2) NULL,
	[ValorTotalIncidenciaBaseAnterior] [decimal](19, 6) NULL,
	[TotalIncidenciaCalcDif] [decimal](19, 6) NULL,
	[NumDias] [int] NULL,
	[NumDiasCalc] [int] NULL,
 CONSTRAINT [PK_RecibosDuplaTrib] PRIMARY KEY CLUSTERED 
(
	[KeyReciboC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecibosProvisoes]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecibosProvisoes](
	[KeyRecibosProvisoes] [int] IDENTITY(1,1) NOT NULL,
	[KeyReciboC] [int] NULL,
	[CodAgContrato] [varchar](14) NULL,
	[Total_C] [decimal](19, 6) NULL,
	[Total_C_BM] [decimal](19, 6) NULL,
	[Total_D] [decimal](19, 6) NULL,
	[Total_D_BM] [decimal](19, 6) NULL,
	[KeyCE] [int] NULL,
	[AnoMes] [varchar](7) NULL,
	[User] [varchar](6) NULL,
	[DATA] [smalldatetime] NULL,
	[C_SF] [decimal](19, 6) NULL,
	[C_SF_BM] [decimal](19, 6) NULL,
	[C_FNG] [decimal](19, 6) NULL,
	[C_FNG_BM] [decimal](19, 6) NULL,
	[C_SN] [decimal](19, 6) NULL,
	[C_SN_BM] [decimal](19, 6) NULL,
	[C_CPE] [decimal](19, 6) NULL,
	[C_CPE_BM] [decimal](19, 6) NULL,
	[C_TSU] [decimal](19, 6) NULL,
	[C_TSU_BM] [decimal](19, 6) NULL,
	[U_TSU_FN] [decimal](19, 6) NULL,
	[U_TSU_FN_BM] [decimal](19, 6) NULL,
	[U_FNG] [decimal](19, 6) NULL,
	[U_FNG_BM] [decimal](19, 6) NULL,
	[D_CPE] [decimal](19, 6) NULL,
	[D_CPE_BM] [decimal](19, 6) NULL,
	[TX_CPE] [decimal](19, 6) NULL,
	[TX_SF] [decimal](19, 6) NULL,
	[TX_FNG] [decimal](19, 6) NULL,
	[TX_SN] [decimal](19, 6) NULL,
	[U_SFNGComFFerias] [decimal](19, 6) NULL,
	[U_SFNGComFFerias_BM] [decimal](19, 6) NULL,
	[U_SFNGPago] [decimal](19, 6) NULL,
	[U_SFNGPago_BM] [decimal](19, 6) NULL,
 CONSTRAINT [PK_RecibosProvisoes] PRIMARY KEY NONCLUSTERED 
(
	[KeyRecibosProvisoes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecibosRetencaoTipoRend]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecibosRetencaoTipoRend](
	[KeyRecibosRetencaoTipoRend] [int] IDENTITY(1,1) NOT NULL,
	[KeyReciboC] [int] NULL,
	[KeyCvC_DP] [int] NULL,
	[LocalRend] [tinyint] NULL,
	[TrabExtrangeiro] [bit] NULL,
	[CodTipoRend] [varchar](3) NULL,
	[TotalIRS_A_BM] [decimal](19, 6) NULL,
	[TotalIRS_I_BM] [decimal](19, 6) NULL,
	[TotalIRS_H_BM] [decimal](19, 6) NULL,
	[TotalTRIB_A_BM] [decimal](19, 6) NULL,
	[TotalTRIB_I_BM] [decimal](19, 6) NULL,
	[TotalTRIB_H_BM] [decimal](19, 6) NULL,
	[TaxaIRS] [decimal](7, 3) NULL,
	[IncidenciaSS_BM] [decimal](19, 6) NULL,
	[DeducaoSegSocial_BM] [decimal](19, 6) NULL,
	[TxBeneficiarioSS] [decimal](7, 3) NULL,
	[TxContribuinteSS] [decimal](7, 3) NULL,
	[TotalAbonos_BM] [decimal](19, 6) NULL,
	[TotalExclusoes_BM] [decimal](19, 6) NULL,
	[TotalSobreTaxa_BM] [decimal](19, 6) NULL,
	[DescSobretaxaPerc] [decimal](7, 3) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[IncidenciaSobretaxa_BM] [decimal](19, 6) NULL,
 CONSTRAINT [PK_RecibosRetencaoTipoRend] PRIMARY KEY CLUSTERED 
(
	[KeyRecibosRetencaoTipoRend] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecibosRetroativos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecibosRetroativos](
	[KeyRecibosRetroativos] [int] IDENTITY(1,1) NOT NULL,
	[KeyReciboC] [int] NOT NULL,
	[MesAno] [varchar](7) NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[TipoIncidencia] [smallint] NOT NULL,
	[Taxa] [decimal](7, 3) NOT NULL,
	[Incidencia] [decimal](19, 6) NOT NULL,
	[Valor] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_RecibosRetroativos] PRIMARY KEY CLUSTERED 
(
	[KeyRecibosRetroativos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RecibosSeries]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecibosSeries](
	[KeyReciboSerie] [int] IDENTITY(1,1) NOT NULL,
	[Serie] [varchar](10) NOT NULL,
	[Descricao] [varchar](25) NOT NULL,
	[SerieTemValidade] [bit] NOT NULL,
	[SerieDtValInicio] [smalldatetime] NULL,
	[SerieDtValFim] [smalldatetime] NULL,
	[Activa] [bit] NOT NULL,
	[PreDefinida] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[TemIvaCaixa] [bit] NULL,
	[TemDtPreDefinida] [bit] NULL,
	[DtPreDefinida] [smalldatetime] NULL,
 CONSTRAINT [PK_RecibosSeries] PRIMARY KEY CLUSTERED 
(
	[Serie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Regioes]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Regioes](
	[KeyRegioes] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[Descricao] [varchar](40) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Regiao] [tinyint] NULL,
 CONSTRAINT [PK_Regioes] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RelatoriosFiltrosPreDefinidos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RelatoriosFiltrosPreDefinidos](
	[KeyRelatoriosFiltrosPreDefinidos] [int] IDENTITY(1,1) NOT NULL,
	[KeyRelatorio] [int] NOT NULL,
	[CodigoCampo] [varchar](40) NOT NULL,
	[Valor] [varchar](25) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_RelatoriosFiltrosPreDefinidos] PRIMARY KEY CLUSTERED 
(
	[KeyRelatoriosFiltrosPreDefinidos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ResConta]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ResConta](
	[KeyResConta] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoResConta] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_ResConta] PRIMARY KEY NONCLUSTERED 
(
	[KeyResConta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ResultadoExameMedico]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ResultadoExameMedico](
	[KeyResultadoExameMedico] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](5) NULL,
	[designacao] [varchar](20) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodigoResultadoWS] [int] NULL,
 CONSTRAINT [PK_ResultadoExameMedico] PRIMARY KEY CLUSTERED 
(
	[KeyResultadoExameMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RetencaoIRSOutrosPaises]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RetencaoIRSOutrosPaises](
	[KeyRetencaoIRS] [int] IDENTITY(1,1) NOT NULL,
	[Ano] [smallint] NOT NULL,
	[CodPaisISOAlpha2] [char](2) NOT NULL,
	[REM_MES_ATE] [decimal](19, 6) NOT NULL,
	[TxRetencao] [decimal](7, 3) NOT NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_RetencaoIRSOutrosPaises] PRIMARY KEY CLUSTERED 
(
	[Ano] ASC,
	[CodPaisISOAlpha2] ASC,
	[REM_MES_ATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RFinancas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RFinancas](
	[KeyRFinan] [int] IDENTITY(1,1) NOT NULL,
	[CodRFinan] [varchar](4) NULL,
	[DescricaoFinan] [varchar](40) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_RFinancas] PRIMARY KEY NONCLUSTERED 
(
	[KeyRFinan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SAMS]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SAMS](
	[KeySAMS] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](2) NOT NULL,
	[Descricao] [varchar](40) NOT NULL,
	[TaxaBeneficiario] [decimal](19, 6) NULL,
	[TaxaContribuinte] [decimal](19, 6) NULL,
	[IsActivo] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_SAMS] PRIMARY KEY CLUSTERED 
(
	[KeySAMS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SecAdm]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecAdm](
	[KeySecAdm] [int] IDENTITY(1,1) NOT NULL,
	[Seccao] [nvarchar](3) NULL,
	[Descricao] [nvarchar](40) NULL,
	[User] [nvarchar](6) NULL,
	[Data] [datetime] NULL,
 CONSTRAINT [PK_SecAdm] PRIMARY KEY CLUSTERED 
(
	[KeySecAdm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SegurancaSocial]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SegurancaSocial](
	[KeySS] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoSS] [varchar](40) NULL,
	[RegimeSS] [varchar](40) NULL,
	[TxBeneficiarioSS] [decimal](19, 6) NULL,
	[TxContribuinteSS] [decimal](19, 6) NULL,
	[TxSuplBenefSS] [decimal](19, 6) NULL,
	[TxSuplContribSS] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CODIGO] [varchar](3) NULL,
	[NSSR] [varchar](14) NULL,
	[EstEntEmp] [varchar](4) NULL,
	[Distrito] [varchar](40) NULL,
	[Activo] [bit] NULL,
	[NumNIPC] [varchar](18) NULL,
	[IsRestrito] [bit] NULL,
	[CodigoContactoSegSoc] [varchar](8) NULL,
 CONSTRAINT [PK_SegurancaSocial] PRIMARY KEY NONCLUSTERED 
(
	[KeySS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Seguros]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seguros](
	[KeySeguros] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoSeguro] [varchar](40) NULL,
	[RamoSeguro] [varchar](40) NULL,
	[Taxa1Seguro] [decimal](19, 6) NULL,
	[Taxa2Seguro] [decimal](19, 6) NULL,
	[ApoliceSeguro] [varchar](20) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CODIGO] [varchar](3) NULL,
	[SeguroActivo] [int] NULL,
	[ContaDebito] [varchar](22) NULL,
	[ContaCredito] [varchar](22) NULL,
	[CodigoISP] [varchar](4) NULL,
	[TipoSeguro] [tinyint] NULL,
 CONSTRAINT [PK_Seguros] PRIMARY KEY NONCLUSTERED 
(
	[KeySeguros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Seguros_Historico]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seguros_Historico](
	[KeySeguros_Historico] [int] IDENTITY(1,1) NOT NULL,
	[RefExportacao] [uniqueidentifier] NOT NULL,
	[NomeFicheiro] [varchar](128) NOT NULL,
	[KeyCvC_DP] [int] NOT NULL,
	[Tipo] [varchar](40) NOT NULL,
	[Observacoes] [varchar](1024) NOT NULL,
	[AlteradoEm] [smalldatetime] NOT NULL,
	[AlteradoPor] [varchar](25) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SetoresAtividade]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SetoresAtividade](
	[KeySetorAtividade] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](5) NOT NULL,
	[Descricao] [varchar](40) NOT NULL,
	[KeyUnidadeNegocio] [int] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_SetoresAtividade] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SimuladorTMBAdcFormulasBase]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SimuladorTMBAdcFormulasBase](
	[KeySimuladorTMBAdcFormulasBase] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](100) NOT NULL,
	[Grupo] [varchar](100) NOT NULL,
	[Descricao] [varchar](200) NOT NULL,
	[Formula] [varchar](4096) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_SimuladorTMBAdcFormulasBase] PRIMARY KEY CLUSTERED 
(
	[KeySimuladorTMBAdcFormulasBase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sindicatos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sindicatos](
	[KeySindicato] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoSindicato] [varchar](40) NULL,
	[Valor] [decimal](19, 6) NULL,
	[Valor_BM] [decimal](19, 6) NULL,
	[ValMinimo] [decimal](19, 6) NULL,
	[ValMinimo_BM] [decimal](19, 6) NULL,
	[Percentual] [bit] NULL,
	[DescCont] [varchar](40) NULL,
	[DtCont] [smalldatetime] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CODIGO] [varchar](3) NULL,
	[Activo] [bit] NULL,
	[Conta] [varchar](15) NULL,
	[TipoIncidencia] [tinyint] NULL,
	[MeioRecebimento] [varchar](25) NULL,
	[Banco] [varchar](40) NULL,
	[NIB] [varchar](50) NULL,
	[IBAN] [varchar](50) NULL,
	[SWIFT] [varchar](11) NULL,
 CONSTRAINT [PK_Sindicatos] PRIMARY KEY NONCLUSTERED 
(
	[KeySindicato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SobretaxaIRS]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SobretaxaIRS](
	[KeySobretaxaIRS] [int] IDENTITY(1,1) NOT NULL,
	[ANO] [varchar](4) NOT NULL,
	[TIT] [varchar](25) NOT NULL,
	[REM_MES_ATE] [decimal](19, 6) NOT NULL,
	[Taxa] [decimal](19, 6) NOT NULL,
	[Reg] [tinyint] NOT NULL,
	[CriadoPor] [varchar](25) NOT NULL,
	[CriadoEm] [smalldatetime] NOT NULL,
	[AlteradoPor] [varchar](25) NOT NULL,
	[AlteradoEm] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_KeySobretaxaIRS] PRIMARY KEY NONCLUSTERED 
(
	[KeySobretaxaIRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Solicitadores]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Solicitadores](
	[KeySolicitador] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NULL,
	[Descricao] [varchar](60) NULL,
	[NCedula] [varchar](10) NULL,
	[Morada] [varchar](100) NULL,
	[Localidade] [varchar](40) NULL,
	[CodPostal] [varchar](8) NULL,
	[LocalidadePostal] [varchar](40) NULL,
	[Telefone] [varchar](25) NULL,
	[Fax] [varchar](25) NULL,
	[Email] [varchar](128) NULL,
	[HorarioAtendimento] [text] NULL,
	[Comarca] [varchar](40) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Observacoes] [text] NULL,
	[Telemovel] [varchar](25) NULL,
	[CodTipoSolicitador] [varchar](5) NULL,
	[DescricaoTipoSolicitador] [varchar](60) NULL,
 CONSTRAINT [PK_Solicitadores] PRIMARY KEY CLUSTERED 
(
	[KeySolicitador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tabela_Fiscal]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabela_Fiscal](
	[CODIGO] [nvarchar](4) NULL,
	[DESIGN] [nvarchar](115) NULL,
	[TX81] [float] NULL,
	[TX90] [float] NULL,
	[GRUPO] [nvarchar](50) NULL,
	[SUBG] [nvarchar](50) NULL,
	[Mapas] [bit] NOT NULL,
	[KeyTabelaFiscal] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Tabela_Fiscal] PRIMARY KEY CLUSTERED 
(
	[KeyTabelaFiscal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TabelaIRCT]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TabelaIRCT](
	[KeyTabelaIRCT] [int] IDENTITY(1,1) NOT NULL,
	[CodIRCT] [varchar](5) NOT NULL,
	[Descricao] [varchar](60) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodAplicIRCT] [varchar](2) NULL,
	[DescAplicIRCT] [varchar](40) NULL,
 CONSTRAINT [PK_TabelaIRCT] PRIMARY KEY CLUSTERED 
(
	[CodIRCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TabelaIVA]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TabelaIVA](
	[KeyTabelaIVA] [int] IDENTITY(1,1) NOT NULL,
	[GrupoMercado] [varchar](5) NOT NULL,
	[GrupoIVA] [char](1) NOT NULL,
	[Taxa] [decimal](7, 3) NOT NULL,
	[Descricao] [varchar](30) NULL,
	[IsDefault] [bit] NULL,
	[IsActive] [bit] NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[EspacoFiscal] [tinyint] NULL,
	[JustIsencao] [varchar](60) NULL,
	[CodMotivoIsencao] [varchar](5) NULL,
 CONSTRAINT [PK_TabelaIVA] PRIMARY KEY CLUSTERED 
(
	[GrupoMercado] ASC,
	[GrupoIVA] ASC,
	[Taxa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TabelaIVAMotivos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TabelaIVAMotivos](
	[KeyTabelaIVAMotivos] [int] IDENTITY(1,1) NOT NULL,
	[CodMotivo] [varchar](5) NOT NULL,
	[Descricao] [varchar](100) NULL,
	[NormasAplicaveis] [varchar](max) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_TabelaIVAMotivos] PRIMARY KEY CLUSTERED 
(
	[CodMotivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TabelaMRS]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TabelaMRS](
	[KeyTabelaMRS] [int] IDENTITY(1,1) NOT NULL,
	[CodMRS] [varchar](3) NOT NULL,
	[Descricao] [varchar](40) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_TabelaMRS] PRIMARY KEY CLUSTERED 
(
	[CodMRS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TabelasPreFactRecCAB]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TabelasPreFactRecCAB](
	[KeyTabelaPrecFactRecCAB] [int] IDENTITY(1,1) NOT NULL,
	[CodTabela] [varchar](5) NOT NULL,
	[Descricao] [varchar](30) NOT NULL,
	[TipoTabela] [tinyint] NOT NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_TabelasPreFactRecCAB] PRIMARY KEY CLUSTERED 
(
	[CodTabela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TabelasPreFactRecDET]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TabelasPreFactRecDET](
	[KeyTabelaPrecFactRecDET] [int] IDENTITY(1,1) NOT NULL,
	[KeyTabelaPrecFactRecCAB] [int] NOT NULL,
	[Meses] [smallint] NOT NULL,
	[Recursos] [smallint] NOT NULL,
	[ValorTotal] [decimal](19, 6) NOT NULL,
	[ValorUnit] [decimal](19, 6) NOT NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_TabelasPreFactRecDET] PRIMARY KEY CLUSTERED 
(
	[KeyTabelaPrecFactRecDET] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_CC_by_CC]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_CC_by_CC](
	[Consultor] [varchar](30) NOT NULL,
	[CentroCusto] [nvarchar](15) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TarifasEntidades]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TarifasEntidades](
	[KeyTarifasEntidades] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NULL,
	[KeyHorarioCE] [int] NULL,
	[NomeCE] [varchar](60) NULL,
	[CodTar] [varchar](10) NULL,
	[RegimeSS] [varchar](40) NULL,
	[BenefBrutoTE] [decimal](19, 6) NULL,
	[BenefMinimoTE] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodAgencia] [varchar](3) NULL,
	[CodArea] [varchar](2) NULL,
	[DtTarifa] [smalldatetime] NULL,
	[IndicaMoeda] [bit] NULL,
	[TARACTIVA] [int] NULL,
	[VHFsemCPE] [smallint] NULL,
	[CoefCPE] [decimal](19, 6) NULL,
	[VHFSemSFNG] [bit] NULL,
	[CoefSFNG] [decimal](19, 6) NULL,
	[KeyVendedor] [int] NULL,
	[Vendedor] [varchar](40) NULL,
	[AprovacaoPedidaPor] [varchar](15) NULL,
	[AprovacaoPedidaEm] [smalldatetime] NULL,
	[StatusAprovacao] [tinyint] NULL,
	[StatusAprovacaoData] [smalldatetime] NULL,
	[StatusAprovacaoPor] [varchar](15) NULL,
	[VHFSemSF] [bit] NULL,
	[CoefSF] [decimal](19, 6) NULL,
	[VHFSemSN] [bit] NULL,
	[CoefSN] [decimal](19, 6) NULL,
	[VHFFaltas] [bit] NULL,
	[CoefFaltas] [decimal](19, 6) NULL,
	[ValorHoraFactFaltas] [decimal](19, 6) NULL,
	[CDU_IdEstrutura] [varchar](20) NULL,
	[KeyCE_SimuladorTMBAdc] [int] NULL,
	[FormaPagamento] [int] NULL,
	[FormaFacturacao] [int] NULL,
	[Fact_Fixo] [bit] NULL,
	[SAL_30Dias] [bit] NULL,
	[NumMesesPrevistos] [decimal](7, 3) NULL,
	[ValCustoEMEA] [decimal](19, 6) NULL,
	[ValFactEMEA] [decimal](19, 6) NULL,
	[ValCustoEPI] [decimal](19, 6) NULL,
	[ValFactEPI] [decimal](19, 6) NULL,
	[OutrosGastosPag] [decimal](19, 6) NULL,
	[OutrosGastosFact] [decimal](19, 6) NULL,
	[Descricao] [varchar](40) NULL,
	[PodeFactAbaixoSal] [bit] NULL,
	[KeyTarifaEntidadesOriginal] [int] NULL,
 CONSTRAINT [PK_TarifasEntidades] PRIMARY KEY NONCLUSTERED 
(
	[KeyTarifasEntidades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaxasIva]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaxasIva](
	[KeyTxIva] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [nvarchar](10) NULL,
	[Descricao] [varchar](30) NULL,
	[Tx1] [decimal](19, 6) NULL,
	[Tx2] [decimal](19, 6) NULL,
	[Tx3] [decimal](19, 6) NULL,
	[Tx4] [decimal](19, 6) NULL,
	[TpMerc] [nvarchar](30) NULL,
	[User] [varchar](6) NULL,
	[DATA] [smalldatetime] NULL,
 CONSTRAINT [PK_TaxasIva] PRIMARY KEY NONCLUSTERED 
(
	[KeyTxIva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TDU_Estrutura]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TDU_Estrutura](
	[CDU_IdEstrutura] [varchar](20) NOT NULL,
	[CDU_DescrEstrutura] [varchar](80) NULL,
	[CDU_Inactivo] [bit] NOT NULL,
 CONSTRAINT [PK_TDU_Estrutura] PRIMARY KEY CLUSTERED 
(
	[CDU_IdEstrutura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TDU_LinNegMPG]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TDU_LinNegMPG](
	[CDU_IdLinNegMPG] [varchar](20) NOT NULL,
	[CDU_DescricaoLNMPG] [varchar](80) NULL,
	[CDU_Inactivo] [bit] NOT NULL,
	[CDU_IsDefinedOnTarget] [bit] NULL,
	[CDU_CodMetodologiaTemplateCAB] [varchar](15) NULL,
 CONSTRAINT [PK_TDU_LinNegMPG] PRIMARY KEY CLUSTERED 
(
	[CDU_IdLinNegMPG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TDU_LinNegMPG_DET]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TDU_LinNegMPG_DET](
	[KeyLinNegMPG_DET] [int] IDENTITY(1,1) NOT NULL,
	[CDU_IdLinNegMPG] [varchar](20) NOT NULL,
	[Descricao] [varchar](128) NOT NULL,
	[Valor] [varchar](15) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[Notas] [text] NULL,
 CONSTRAINT [PK_TDU_LinNegMPG_DET] PRIMARY KEY CLUSTERED 
(
	[KeyLinNegMPG_DET] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TDU_LinNegPT]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TDU_LinNegPT](
	[CDU_IdLinNegPT] [varchar](20) NOT NULL,
	[CDU_DescricaoLNPT] [varchar](80) NULL,
	[CDU_Inactivo] [bit] NOT NULL,
	[AdicionarPedidoAHRNET] [bit] NULL,
	[SincronizarAHRNET] [bit] NULL,
 CONSTRAINT [PK_TDU_LinNegPT] PRIMARY KEY CLUSTERED 
(
	[CDU_IdLinNegPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TE_CatFun]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TE_CatFun](
	[KeyTE_CatFun] [int] IDENTITY(1,1) NOT NULL,
	[KeyTarifasEntidades] [int] NULL,
	[KeyCE] [int] NULL,
	[KeyHorarioCE] [int] NULL,
	[CargaHM] [decimal](19, 6) NULL,
	[CODHORARIO] [varchar](5) NULL,
	[DescricaoCategoria] [varchar](100) NULL,
	[DescricaoFuncao] [text] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodigoCategoria] [varchar](10) NULL,
	[VHFFaltas] [bit] NULL,
	[CoefFaltas] [decimal](19, 6) NULL,
	[ValorHoraFactFaltas] [decimal](19, 6) NULL,
	[SubRef_RecPorCartao] [bit] NULL,
	[SubRef_RecPoreTicket] [bit] NULL,
	[CodAcordoCCT] [varchar](5) NULL,
	[CodRegiao] [varchar](5) NULL,
	[CodSeguro] [varchar](3) NULL,
	[Nivel] [varchar](3) NULL,
	[TipoUnidadePag] [int] NULL,
	[VHFFaltasFerias] [bit] NULL,
	[CoefFaltasFerias] [decimal](19, 6) NULL,
	[ValorHoraFactFaltasFerias] [decimal](19, 6) NULL,
 CONSTRAINT [PK_TE_CatFun] PRIMARY KEY NONCLUSTERED 
(
	[KeyTE_CatFun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TE_Historico]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TE_Historico](
	[KeyTE_Historico] [int] IDENTITY(1,1) NOT NULL,
	[KeyTE_Tarifas] [int] NULL,
	[KeyTarifasEntidades] [int] NULL,
	[KeyTE_CatFun] [int] NULL,
	[dataH] [smalldatetime] NULL,
	[Tipo] [varchar](60) NULL,
	[Observacoes] [varchar](255) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyTE_Historico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TE_Tarifas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TE_Tarifas](
	[KeyTE_Tarifas] [int] IDENTITY(1,1) NOT NULL,
	[KeyTE_CatFun] [int] NULL,
	[KeyTarifasEntidades] [int] NULL,
	[KeyCE] [int] NULL,
	[CodRub] [varchar](6) NULL,
	[SBMensal] [decimal](19, 6) NULL,
	[SBMensal_BM] [decimal](19, 6) NULL,
	[SubFerias] [decimal](19, 6) NULL,
	[SubFerias_BM] [decimal](19, 6) NULL,
	[SubNatal] [decimal](19, 6) NULL,
	[SubNatal_BM] [decimal](19, 6) NULL,
	[SubFeriasNG] [decimal](19, 6) NULL,
	[SubFeriasNG_BM] [decimal](19, 6) NULL,
	[SSocial] [decimal](19, 6) NULL,
	[SSocial_BM] [decimal](19, 6) NULL,
	[Seguro] [decimal](19, 6) NULL,
	[Seguro_BM] [decimal](19, 6) NULL,
	[ComplementoPE] [decimal](19, 6) NULL,
	[ComplementoPE_BM] [decimal](19, 6) NULL,
	[CargaHM] [decimal](19, 6) NULL,
	[ValorHoraPagar] [decimal](19, 6) NULL,
	[ValorHoraPagar_BM] [decimal](19, 6) NULL,
	[Coeficiente] [decimal](19, 6) NULL,
	[ValorHoraFacturar] [decimal](19, 6) NULL,
	[ValorHoraFacturar_BM] [decimal](19, 6) NULL,
	[FacturacaoMMensal] [decimal](19, 6) NULL,
	[FacturacaoMMensal_BM] [decimal](19, 6) NULL,
	[MargemBruta] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[DESCRICAORUBRICAS] [varchar](40) NULL,
	[VFF] [bit] NULL,
	[SubRef_RecPorCartao] [bit] NULL,
	[SubRef_RecPoreTicket] [bit] NULL,
	[Imprimir] [bit] NULL,
	[ValorDiaPagar] [decimal](19, 6) NULL,
	[ValorDiaPagar_BM] [decimal](19, 6) NULL,
 CONSTRAINT [PK_TE_Tarifas] PRIMARY KEY NONCLUSTERED 
(
	[KeyTE_Tarifas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TE_TarifasAgrupar]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TE_TarifasAgrupar](
	[KeyTE_TarifasAgrupar] [int] IDENTITY(1,1) NOT NULL,
	[KeyTE_CatFun] [int] NOT NULL,
	[KeyTarifasEntidades] [int] NOT NULL,
	[KeyTE_Tarifas] [int] NOT NULL,
	[CodRub] [varchar](5) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_TE_TarifasAgrupar] PRIMARY KEY CLUSTERED 
(
	[KeyTE_TarifasAgrupar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TE_TarifasAgruparHEFact]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TE_TarifasAgruparHEFact](
	[TE_TarifasAgruparHEFact] [int] IDENTITY(1,1) NOT NULL,
	[KeyTE_CatFun] [int] NOT NULL,
	[KeyTarifasEntidades] [int] NOT NULL,
	[KeyTE_Tarifas] [int] NOT NULL,
	[CodRub] [varchar](5) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_TE_TarifasAgruparHEFact] PRIMARY KEY CLUSTERED 
(
	[TE_TarifasAgruparHEFact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TE_TarifasAgruparHEPag]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TE_TarifasAgruparHEPag](
	[TE_TarifasAgruparHEPag] [int] IDENTITY(1,1) NOT NULL,
	[KeyTE_CatFun] [int] NOT NULL,
	[KeyTarifasEntidades] [int] NOT NULL,
	[KeyTE_Tarifas] [int] NOT NULL,
	[CodRub] [varchar](5) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_TE_TarifasAgruparHEPag] PRIMARY KEY CLUSTERED 
(
	[TE_TarifasAgruparHEPag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Temas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Temas](
	[KeyTemas] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoTemas] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_Temas] PRIMARY KEY CLUSTERED 
(
	[KeyTemas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoCurso]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoCurso](
	[KeyCurso] [int] IDENTITY(1,1) NOT NULL,
	[TipoCurso] [varchar](100) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_TipoCurso] PRIMARY KEY NONCLUSTERED 
(
	[KeyCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoInformatica]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoInformatica](
	[KeyTipoInfo] [int] IDENTITY(1,1) NOT NULL,
	[KeyAreaInfo] [int] NULL,
	[DescricaoTipoInfo] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_TipoInformatica] PRIMARY KEY CLUSTERED 
(
	[KeyTipoInfo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipologia]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipologia](
	[KeyTipologia] [int] IDENTITY(1,1) NOT NULL,
	[CodTipologia] [varchar](4) NOT NULL,
	[Descricao] [varchar](60) NOT NULL,
	[Activo] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_Tipologia] PRIMARY KEY CLUSTERED 
(
	[KeyTipologia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposAct_CvC]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposAct_CvC](
	[KeyTiposAct_CvC] [int] IDENTITY(1,1) NOT NULL,
	[TipoActividade] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_TiposAct_CvC] PRIMARY KEY CLUSTERED 
(
	[KeyTiposAct_CvC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposAct_Templates]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposAct_Templates](
	[KeyTiposAct_Templates] [int] IDENTITY(1,1) NOT NULL,
	[KeyTiposAct_CvC] [int] NOT NULL,
	[Titulo] [varchar](30) NULL,
	[Relatorio] [text] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_TiposAct_Templates] PRIMARY KEY CLUSTERED 
(
	[KeyTiposAct_Templates] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposAngariacao]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposAngariacao](
	[KeyTiposAngariacao] [int] IDENTITY(1,1) NOT NULL,
	[CodTipoAngariacao] [varchar](5) NULL,
	[DescricaoAngariacao] [varchar](60) NULL,
	[IsActivo] [bit] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_TiposAngariacao] PRIMARY KEY CLUSTERED 
(
	[KeyTiposAngariacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposCartaConducao]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposCartaConducao](
	[KeyTiposCartaCond] [varchar](3) NOT NULL,
	[DescricaoTiposCartaCond] [varchar](3) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_TiposCartaConducao] PRIMARY KEY CLUSTERED 
(
	[KeyTiposCartaCond] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposConcorrencia]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposConcorrencia](
	[KeyTiposConcorrencia] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](50) NULL,
	[CriadoPor] [varchar](6) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](6) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_TiposConcorrencia] PRIMARY KEY CLUSTERED 
(
	[KeyTiposConcorrencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposDocIdentificacao]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposDocIdentificacao](
	[KeyTiposDocIdentificacao] [int] IDENTITY(1,1) NOT NULL,
	[CodTiposDocIdentif] [int] NULL,
	[DescricaoTiposDocIdentif] [varchar](30) NULL,
	[IsActivo] [bit] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_TiposDocIdentificacao] PRIMARY KEY CLUSTERED 
(
	[KeyTiposDocIdentificacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposDocumento]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposDocumento](
	[KeyTipoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[CodTipoDocumento] [tinyint] NOT NULL,
	[Descricao] [varchar](25) NOT NULL,
	[Contador] [int] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_TiposDocumento] PRIMARY KEY CLUSTERED 
(
	[KeyTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposExameMedico]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposExameMedico](
	[KeyTiposExameMedico] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](5) NULL,
	[designacao] [varchar](20) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[PorDefeito] [bit] NULL,
	[BalancoSocial] [tinyint] NULL,
 CONSTRAINT [PK_TiposExameMedico] PRIMARY KEY CLUSTERED 
(
	[KeyTiposExameMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposExameSHST]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposExameSHST](
	[KeyTiposExameSHST] [int] IDENTITY(1,1) NOT NULL,
	[Indice] [tinyint] NULL,
	[Tipo] [varchar](60) NULL,
	[CriadoPor] [varchar](15) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](15) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_TiposExameSHST] PRIMARY KEY CLUSTERED 
(
	[KeyTiposExameSHST] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposFacCabActComentarios]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposFacCabActComentarios](
	[KeyTiposFactCabComent] [int] IDENTITY(1,1) NOT NULL,
	[KeyComentario] [int] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TiposFacCabActComentarios] PRIMARY KEY CLUSTERED 
(
	[KeyTiposFactCabComent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposFacCabActEstados]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposFacCabActEstados](
	[KeyTiposFacturaCabActividadesEstados] [int] IDENTITY(1,1) NOT NULL,
	[KeyEstado] [int] NOT NULL,
	[Descricao] [varchar](25) NOT NULL,
 CONSTRAINT [PK_TiposFacCabActEstados] PRIMARY KEY CLUSTERED 
(
	[KeyTiposFacturaCabActividadesEstados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposPenhora]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposPenhora](
	[KeyTiposPenhora] [int] IDENTITY(1,1) NOT NULL,
	[CodTipoPenhora] [varchar](5) NULL,
	[DescricaoPenhora] [varchar](60) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[IsActivo] [bit] NULL,
	[ContaPOC] [varchar](22) NULL,
 CONSTRAINT [PK_TiposPenhora] PRIMARY KEY CLUSTERED 
(
	[KeyTiposPenhora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposProcessamento]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposProcessamento](
	[KeyTipoProcessamento] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [int] NOT NULL,
	[Descricao] [varchar](40) NOT NULL,
	[IsProcReservado] [bit] NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_TiposProcessamento] PRIMARY KEY CLUSTERED 
(
	[KeyTipoProcessamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposSMS]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposSMS](
	[KeyTiposSMS] [int] IDENTITY(1,1) NOT NULL,
	[TituloMsg] [varchar](25) NULL,
	[TipoMsg] [int] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_TiposSMS] PRIMARY KEY CLUSTERED 
(
	[KeyTiposSMS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposSMS_Templates]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposSMS_Templates](
	[KeyTiposSMS_Templates] [int] IDENTITY(1,1) NOT NULL,
	[KeyTiposSMS] [int] NULL,
	[KeyCVC_DP] [int] NULL,
	[TipoMsg] [int] NULL,
	[Titulo] [varchar](30) NULL,
	[Relatorio] [text] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[Assunto] [varchar](128) NULL,
 CONSTRAINT [PK_TiposSMS_Templates] PRIMARY KEY CLUSTERED 
(
	[KeyTiposSMS_Templates] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposSolicitadores]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposSolicitadores](
	[KeyTiposSolicitadores] [int] IDENTITY(1,1) NOT NULL,
	[CodTipoSolicitador] [varchar](5) NULL,
	[DescricaoTipoSolicitador] [varchar](60) NULL,
	[IsActivo] [bit] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[IsAgenteExecucao] [bit] NULL,
	[IsEntidadeOrdenante] [bit] NULL,
	[IsBeneficiario] [bit] NULL,
 CONSTRAINT [PK_TiposSolicitadores] PRIMARY KEY CLUSTERED 
(
	[KeyTiposSolicitadores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposVeiculo]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposVeiculo](
	[KeyTiposVeiculo] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoTiposVeiculo] [varchar](50) NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_TiposVeiculo] PRIMARY KEY CLUSTERED 
(
	[KeyTiposVeiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TiposVisitas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TiposVisitas](
	[KeyTiposVisitas] [int] IDENTITY(1,1) NOT NULL,
	[TipoVisita] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_TiposVisitas] PRIMARY KEY CLUSTERED 
(
	[KeyTiposVisitas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Titulos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Titulos](
	[KeyTitulo] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoTitulo] [varchar](20) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_Titulos] PRIMARY KEY CLUSTERED 
(
	[KeyTitulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tmp_PedCatTar]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tmp_PedCatTar](
	[D0] [varchar](50) NULL,
	[D1] [varchar](50) NULL,
	[D2] [varchar](50) NULL,
	[D3] [varchar](50) NULL,
	[D4] [varchar](50) NULL,
	[D5] [varchar](100) NULL,
	[D6] [varchar](50) NULL,
	[D7] [varchar](50) NULL,
	[D8] [varchar](50) NULL,
	[D9] [varchar](50) NULL,
	[D10] [varchar](50) NULL,
	[D11] [varchar](50) NULL,
	[D12] [varchar](50) NULL,
	[D13] [varchar](50) NULL,
	[KeyPedido] [int] NULL,
	[D14] [varchar](50) NULL,
	[D15] [varchar](50) NULL,
	[D16] [varchar](50) NULL,
	[D17] [varchar](50) NULL,
	[D18] [varchar](50) NULL,
	[D19] [varchar](50) NULL,
	[KeyCE] [int] NULL,
	[KeyHorarioCE] [int] NULL,
	[QTD] [smallint] NULL,
	[D51] [varchar](10) NULL,
	[USER] [varchar](6) NULL,
	[CodIRCT] [varchar](5) NULL,
	[CodAcordoCCT] [varchar](5) NULL,
	[CodRegiao] [varchar](5) NULL,
	[Nivel] [varchar](3) NULL,
	[CodSubConta] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_QP]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_QP](
	[KeyTemp_QP] [int] IDENTITY(1,1) NOT NULL,
	[NomeCF] [varchar](80) NULL,
	[CodAgencia] [varchar](80) NULL,
	[DtNasF] [smalldatetime] NULL,
	[Profissao] [varchar](50) NULL,
	[CodProfissao] [decimal](19, 6) NULL,
	[Categoria] [varchar](100) NULL,
	[DtInicioCont] [smalldatetime] NULL,
	[DtUltimaPromo] [smalldatetime] NULL,
	[CodHabilit_QP] [int] NULL,
	[Habilit_QP] [varchar](128) NULL,
	[QP_SUBREG] [decimal](19, 6) NULL,
	[QP_REMOUT] [decimal](19, 6) NULL,
	[QP_TRABSUPL] [decimal](19, 6) NULL,
	[QP_PRESTIREG] [decimal](19, 6) NULL,
	[QP_HNREM] [decimal](19, 6) NULL,
	[QP_HSUPL] [decimal](19, 6) NULL,
	[NacionalidadeF] [varchar](50) NULL,
	[CodNacionalidadeF] [int] NULL,
	[RegTempo] [varchar](15) NULL,
	[SexoF] [varchar](1) NULL,
	[CargaHS] [decimal](19, 6) NULL,
	[NumSSF] [varchar](12) NULL,
	[TipoCont] [int] NULL,
	[Lei] [int] NULL,
	[CodInstRegTrabalho] [int] NULL,
	[CodCategoria] [decimal](19, 6) NULL,
	[DTFimCont] [smalldatetime] NULL,
	[Ano] [varchar](4) NULL,
	[HorasMes] [decimal](19, 6) NULL,
	[QP_Sal_Ref] [decimal](19, 6) NULL,
	[DescricaoIRCT] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyTemp_QP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMPExpProp]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMPExpProp](
	[KeyTMP] [int] IDENTITY(1,1) NOT NULL,
	[CatFun] [varchar](55) NULL,
	[SBMensal] [decimal](19, 6) NULL,
	[SubFerias] [decimal](19, 6) NULL,
	[SubNatal] [decimal](19, 6) NULL,
	[SubFeriasNG] [decimal](19, 6) NULL,
	[SSocial] [decimal](19, 6) NULL,
	[CargaHM] [decimal](19, 6) NULL,
	[Coeficiente] [decimal](19, 6) NULL,
	[Seguro] [decimal](19, 6) NULL,
	[ComplementoPE] [decimal](19, 6) NULL,
	[ValorHoraPagar] [decimal](19, 6) NULL,
	[ValorHoraFacturar] [decimal](19, 6) NULL,
	[FacturacaoMMensal] [decimal](19, 6) NULL,
	[MargemBruta] [decimal](19, 6) NULL,
 CONSTRAINT [PK_TMPExpProp] PRIMARY KEY CLUSTERED 
(
	[KeyTMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMPORG]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMPORG](
	[KeyContracto] [int] NULL,
	[VC] [decimal](19, 6) NULL,
	[VSA] [decimal](19, 6) NULL,
	[VHE] [decimal](19, 6) NULL,
	[VOUT] [decimal](19, 6) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[TABO] [decimal](19, 6) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnidadesNegocio]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnidadesNegocio](
	[KeyUnidadeNegocio] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](3) NOT NULL,
	[Descricao] [varchar](40) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[SufixoConta] [varchar](10) NULL,
 CONSTRAINT [PK_UnidadesNegocio] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UnitGroups]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UnitGroups](
	[KeyUnitGroup] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Descricao] [varchar](40) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_UnitGroups] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ValorTema]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ValorTema](
	[KeyValores] [int] IDENTITY(1,1) NOT NULL,
	[KeyTemas] [int] NULL,
	[DescricaoValores] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_ValorTema] PRIMARY KEY CLUSTERED 
(
	[KeyValores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vendedores]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendedores](
	[KeyVendedor] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[Vendedor] [varchar](40) NULL,
	[Comissao] [decimal](7, 3) NULL,
	[Activo] [bit] NULL,
	[Morada] [varchar](60) NULL,
	[Localidade] [varchar](40) NULL,
	[CodigoPostal] [varchar](8) NULL,
	[DescCodigoPostal] [varchar](40) NULL,
	[Telefone] [varchar](20) NULL,
	[Telemovel] [varchar](20) NULL,
	[Email] [varchar](128) NULL,
	[User] [char](6) NULL,
	[Data] [smalldatetime] NULL,
	[LinkToUser] [varchar](6) NULL,
	[Funcao] [varchar](60) NULL,
 CONSTRAINT [PK_Vendedores] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendedoresObjectivos]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendedoresObjectivos](
	[KeyVendedorObj] [int] IDENTITY(1,1) NOT NULL,
	[KeyVendedor] [int] NOT NULL,
	[CDU_idLinNegPT] [varchar](20) NULL,
	[Valor] [decimal](19, 6) NULL,
	[NumeroProcessos] [int] NULL,
	[Ano] [smallint] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_VendedoresObjectivos] PRIMARY KEY CLUSTERED 
(
	[KeyVendedorObj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Visitas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Visitas](
	[KeyVisita] [int] IDENTITY(1,1) NOT NULL,
	[KeyCE] [int] NULL,
	[DataVisita] [smalldatetime] NULL,
	[HoraVisita] [varchar](5) NULL,
	[CodIntCE] [varchar](10) NULL,
	[NomeCE] [varchar](60) NULL,
	[DuracaoVisita] [int] NULL,
	[Utilizador] [varchar](30) NULL,
	[ResumoVisita] [varchar](60) NULL,
	[Zona] [varchar](25) NULL,
	[TipoVisita] [varchar](25) NULL,
	[VisitaRealizada] [bit] NULL,
	[VisitaObrigatoria] [bit] NULL,
	[RelatorioVisita] [text] NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
	[CodArea] [varchar](2) NULL,
	[DataFollowUp] [smalldatetime] NULL,
	[HoraFollowUp] [varchar](5) NULL,
 CONSTRAINT [PK_Visitas] PRIMARY KEY CLUSTERED 
(
	[KeyVisita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Workflows]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Workflows](
	[KeyWorkflow] [int] IDENTITY(1,1) NOT NULL,
	[CodWorkflow] [int] NOT NULL,
	[Descricao] [varchar](40) NOT NULL,
	[Notas] [varchar](2048) NOT NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_Workflows] PRIMARY KEY CLUSTERED 
(
	[KeyWorkflow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkflowsApprovals]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkflowsApprovals](
	[KeyWorkflowApproval] [int] IDENTITY(1,1) NOT NULL,
	[KeyWorkflows] [int] NOT NULL,
	[ApprovalNIP] [varchar](25) NULL,
	[ApprovalNome] [varchar](40) NOT NULL,
	[ApprovaleMail] [varchar](40) NOT NULL,
	[AprrovalNivel] [tinyint] NULL,
	[CriadoPor] [varchar](25) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](25) NULL,
	[AlteradoEm] [smalldatetime] NULL,
	[CodIntCE] [varchar](10) NULL,
	[CodigoLocal] [varchar](15) NULL,
 CONSTRAINT [PK_WorkflowsApprovals] PRIMARY KEY CLUSTERED 
(
	[KeyWorkflowApproval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkflowsDocument]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkflowsDocument](
	[KeyWorkflowDocument] [int] IDENTITY(1,1) NOT NULL,
	[KeyWorkflows] [int] NOT NULL,
	[KeyReference] [int] NOT NULL,
	[RequestedDate] [smalldatetime] NOT NULL,
	[RequestedByNIP] [varchar](60) NULL,
	[RequestedByName] [varchar](256) NULL,
	[RequestedByEMail] [varchar](128) NOT NULL,
	[WorkflowStatus] [tinyint] NOT NULL,
	[NotifyApproval] [bit] NOT NULL,
	[LastRun] [datetime] NULL,
	[CriadoPor] [varchar](60) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](60) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_WorkflowsDocument] PRIMARY KEY CLUSTERED 
(
	[KeyWorkflowDocument] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WorkflowsDocumentDetails]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkflowsDocumentDetails](
	[KeyWorkflowDocumentDetails] [int] IDENTITY(1,1) NOT NULL,
	[KeyWorkflowDocument] [int] NOT NULL,
	[ApprovalDate] [smalldatetime] NOT NULL,
	[ApprovalByNIP] [varchar](60) NULL,
	[ApprovalByName] [varchar](256) NULL,
	[ApprovalByEMail] [varchar](128) NOT NULL,
	[ApprovalWithStatus] [tinyint] NOT NULL,
	[Observations] [varchar](2048) NOT NULL,
	[NotifyOriginator] [bit] NOT NULL,
	[LastRun] [datetime] NULL,
	[CriadoPor] [varchar](60) NULL,
	[CriadoEm] [smalldatetime] NULL,
	[AlteradoPor] [varchar](60) NULL,
	[AlteradoEm] [smalldatetime] NULL,
 CONSTRAINT [PK_WorkflowsDocumentDetails] PRIMARY KEY CLUSTERED 
(
	[KeyWorkflowDocumentDetails] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Zonas]    Script Date: 24-11-2017 16:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zonas](
	[KeyZona] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoZona] [varchar](25) NULL,
	[User] [varchar](6) NULL,
	[Data] [smalldatetime] NULL,
 CONSTRAINT [PK_Zonas] PRIMARY KEY CLUSTERED 
(
	[KeyZona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Abonos] ADD  CONSTRAINT [DF_Abonos_PRO]  DEFAULT ((0)) FOR [PRO]
GO
ALTER TABLE [dbo].[Abonos] ADD  CONSTRAINT [DF_Abonos_USO]  DEFAULT ((0)) FOR [USO]
GO
ALTER TABLE [dbo].[Abonos] ADD  CONSTRAINT [DF_Abonos_SSocial]  DEFAULT ((0)) FOR [SSocial]
GO
ALTER TABLE [dbo].[Abonos] ADD  CONSTRAINT [DF_Abonos_IRS]  DEFAULT ((0)) FOR [IRS]
GO
ALTER TABLE [dbo].[Abonos] ADD  CONSTRAINT [DF_Abonos_CPE]  DEFAULT ((0)) FOR [CPE]
GO
ALTER TABLE [dbo].[Abonos] ADD  CONSTRAINT [DF_Abonos_Seguro]  DEFAULT ((0)) FOR [Seguro]
GO
ALTER TABLE [dbo].[Abonos] ADD  CONSTRAINT [DF_Abonos_SFerias]  DEFAULT ((0)) FOR [SFerias]
GO
ALTER TABLE [dbo].[Abonos] ADD  CONSTRAINT [DF_Abonos_SNatal]  DEFAULT ((0)) FOR [SNatal]
GO
ALTER TABLE [dbo].[Abonos] ADD  CONSTRAINT [DF_Abonos_SFeriasNGoz]  DEFAULT ((0)) FOR [SFeriasNGoz]
GO
ALTER TABLE [dbo].[Abonos] ADD  CONSTRAINT [DF_Abonos_CompEmp]  DEFAULT ((0)) FOR [CompEmp]
GO
ALTER TABLE [dbo].[AbonosFormulasCalculo] ADD  DEFAULT ((0)) FOR [PorFormula]
GO
ALTER TABLE [dbo].[AbonosTributacao] ADD  DEFAULT ((0)) FOR [ValorMaximoNTributavel]
GO
ALTER TABLE [dbo].[AbonosTributacao] ADD  DEFAULT ((0)) FOR [PorValorUnitario]
GO
ALTER TABLE [dbo].[AbonosTributacao] ADD  DEFAULT ((0)) FOR [PorFormula]
GO
ALTER TABLE [dbo].[Adiantamentos] ADD  CONSTRAINT [DF_Adiantamentos_Pago]  DEFAULT ((0)) FOR [Pago]
GO
ALTER TABLE [dbo].[Adiantamentos] ADD  CONSTRAINT [DF__Adiantame__Conta__2F650636]  DEFAULT ((0)) FOR [ContabilizadoPAG]
GO
ALTER TABLE [dbo].[CartaExtractoServiceLog] ADD  CONSTRAINT [DF_CartaExtractoServiceLog_KeyCartaExtractoServiceLog]  DEFAULT (newid()) FOR [KeyCartaExtractoServiceLog]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_EstadoCE]  DEFAULT ((1)) FOR [EstadoCE]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_BloqCE]  DEFAULT ((0)) FOR [BloqCE]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_FHHorasNeg]  DEFAULT ((0)) FOR [FHHorasNeg]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_ExportaIBRIDGE]  DEFAULT ((0)) FOR [ExportaIBRIDGE]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_SF_Parcial]  DEFAULT ((0)) FOR [SF_Parcial]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_SN_Parcial]  DEFAULT ((0)) FOR [SN_Parcial]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_SFNG_Parcial]  DEFAULT ((0)) FOR [SFNG_Parcial]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_CPE_Parcial]  DEFAULT ((0)) FOR [CPE_Parcial]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_MPSF]  DEFAULT ((0)) FOR [MPSF]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_MPSN]  DEFAULT ((0)) FOR [MPSN]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_MPFN]  DEFAULT ((0)) FOR [MPFN]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_MPCPE]  DEFAULT ((0)) FOR [MPCPE]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_FHPropUnlock]  DEFAULT ((0)) FOR [FHPropUnlock]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_FHPropCPE]  DEFAULT ((0)) FOR [FHPropCPE]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_PropFaltasSF]  DEFAULT ((0)) FOR [PropFaltasSF]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_PropFaltasSN]  DEFAULT ((0)) FOR [PropFaltasSN]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_PropFaltasSFNG]  DEFAULT ((0)) FOR [PropFaltasSFNG]
GO
ALTER TABLE [dbo].[CE] ADD  CONSTRAINT [DF_CE_FHAtribuiCPE]  DEFAULT ((0)) FOR [FHAtribuiCPE]
GO
ALTER TABLE [dbo].[CE_ContCorr] ADD  CONSTRAINT [DF_CE_ContCorr_Regularizado]  DEFAULT ((0)) FOR [Regularizado]
GO
ALTER TABLE [dbo].[CE_Projectos] ADD  DEFAULT ((0)) FOR [HorasAprovadas]
GO
ALTER TABLE [dbo].[CE_Projectos] ADD  DEFAULT ((0)) FOR [HorasEfectuadas]
GO
ALTER TABLE [dbo].[CE_ProjectosAltMensais] ADD  DEFAULT ((0)) FOR [ValorUnitarioPag]
GO
ALTER TABLE [dbo].[CE_ProjectosAltMensais] ADD  DEFAULT ((0)) FOR [QuantidadePag]
GO
ALTER TABLE [dbo].[CE_ProjectosAltMensais] ADD  DEFAULT ((0)) FOR [ValorTotalPag]
GO
ALTER TABLE [dbo].[CE_ProjectosAltMensais] ADD  DEFAULT ((0)) FOR [ValorUnitarioFact]
GO
ALTER TABLE [dbo].[CE_ProjectosAltMensais] ADD  DEFAULT ((0)) FOR [QuantidadeFact]
GO
ALTER TABLE [dbo].[CE_ProjectosAltMensais] ADD  DEFAULT ((0)) FOR [ValorTotalFact]
GO
ALTER TABLE [dbo].[CE_ProjectosEscalasDetalhe] ADD  DEFAULT ((0)) FOR [IsEmailEnviado]
GO
ALTER TABLE [dbo].[CE_ProjectosValores] ADD  DEFAULT ((0)) FOR [ValorUnitarioPag]
GO
ALTER TABLE [dbo].[CE_ProjectosValores] ADD  DEFAULT ((0)) FOR [QuantidadePag]
GO
ALTER TABLE [dbo].[CE_ProjectosValores] ADD  DEFAULT ((0)) FOR [ValorTotalPag]
GO
ALTER TABLE [dbo].[CE_ProjectosValores] ADD  DEFAULT ((0)) FOR [ValorUnitarioFact]
GO
ALTER TABLE [dbo].[CE_ProjectosValores] ADD  DEFAULT ((0)) FOR [QuantidadeFact]
GO
ALTER TABLE [dbo].[CE_ProjectosValores] ADD  DEFAULT ((0)) FOR [ValorTotalFact]
GO
ALTER TABLE [dbo].[CE_ProjectosValoresRH] ADD  DEFAULT ((0)) FOR [ValorUnitarioPag]
GO
ALTER TABLE [dbo].[CE_ProjectosValoresRH] ADD  DEFAULT ((0)) FOR [QuantidadePag]
GO
ALTER TABLE [dbo].[CE_ProjectosValoresRH] ADD  DEFAULT ((0)) FOR [ValorTotalPag]
GO
ALTER TABLE [dbo].[CE_ProjectosValoresRH] ADD  DEFAULT ((0)) FOR [ValorUnitarioFact]
GO
ALTER TABLE [dbo].[CE_ProjectosValoresRH] ADD  DEFAULT ((0)) FOR [QuantidadeFact]
GO
ALTER TABLE [dbo].[CE_ProjectosValoresRH] ADD  DEFAULT ((0)) FOR [ValorTotalFact]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR0]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR1]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR2]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR3]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR4]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR5]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR6]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR7]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR8]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR9]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR10]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR11]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR12]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR13]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR14]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR15]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB0]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB1]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB2]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB3]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB4]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB5]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB6]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB7]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB8]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB9]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB10]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB11]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB12]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB13]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB14]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB15]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR0_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR1_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR2_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR3_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR4_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR5_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR6_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR7_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR8_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR9_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR10_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR11_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR12_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR13_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR14_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MCR15_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB0_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB1_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB2_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB3_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB4_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB5_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB6_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB7_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB8_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB9_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB10_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB11_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB12_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB13_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB14_BM]
GO
ALTER TABLE [dbo].[CentroCusto] ADD  DEFAULT ((0)) FOR [MDB15_BM]
GO
ALTER TABLE [dbo].[Contractos] ADD  CONSTRAINT [DF_Contractos_IndicaMoeda]  DEFAULT ((0)) FOR [IndicaMoeda]
GO
ALTER TABLE [dbo].[ContractosAltMensais] ADD  DEFAULT ((0)) FOR [Tipo]
GO
ALTER TABLE [dbo].[ContractosAltMensais] ADD  DEFAULT ((0)) FOR [ValorUnitario]
GO
ALTER TABLE [dbo].[ContractosAltMensais] ADD  DEFAULT ((0)) FOR [Quantidade]
GO
ALTER TABLE [dbo].[ContractosAltMensais] ADD  DEFAULT ((0)) FOR [ValorTotal]
GO
ALTER TABLE [dbo].[ContractosAltMensais] ADD  DEFAULT ((0)) FOR [DiasSS]
GO
ALTER TABLE [dbo].[ContractosAltMensais] ADD  DEFAULT ((0)) FOR [ProcessadoSal]
GO
ALTER TABLE [dbo].[ContractosAltMensais] ADD  DEFAULT ((0)) FOR [NaoProcessa]
GO
ALTER TABLE [dbo].[ContractosUTTCatFun] ADD  CONSTRAINT [DF_guidContractosUTTCatFun]  DEFAULT (newid()) FOR [guidContractosUTTCatFun]
GO
ALTER TABLE [dbo].[ContractosUTTHistorico] ADD  CONSTRAINT [DF_guidContractosUTTHistorico]  DEFAULT (newid()) FOR [guidContractosUTTHistorico]
GO
ALTER TABLE [dbo].[CvC_Disp] ADD  CONSTRAINT [DF_CvC_Disp_DispoDom]  DEFAULT ((0)) FOR [DispoDom]
GO
ALTER TABLE [dbo].[CvC_Disp] ADD  CONSTRAINT [DF_CvC_Disp_DispoSeg]  DEFAULT ((0)) FOR [DispoSeg]
GO
ALTER TABLE [dbo].[CvC_Disp] ADD  CONSTRAINT [DF_CvC_Disp_DispoTer]  DEFAULT ((0)) FOR [DispoTer]
GO
ALTER TABLE [dbo].[CvC_Disp] ADD  CONSTRAINT [DF_CvC_Disp_DispoQua]  DEFAULT ((0)) FOR [DispoQua]
GO
ALTER TABLE [dbo].[CvC_Disp] ADD  CONSTRAINT [DF_CvC_Disp_DispoQui]  DEFAULT ((0)) FOR [DispoQui]
GO
ALTER TABLE [dbo].[CvC_Disp] ADD  CONSTRAINT [DF_CvC_Disp_DispoSex]  DEFAULT ((0)) FOR [DispoSex]
GO
ALTER TABLE [dbo].[CvC_Disp] ADD  CONSTRAINT [DF_CvC_Disp_DispoSab]  DEFAULT ((0)) FOR [DispoSab]
GO
ALTER TABLE [dbo].[CvC_DP] ADD  CONSTRAINT [DF_CvC_DP_TipoF]  DEFAULT ((0)) FOR [TipoF]
GO
ALTER TABLE [dbo].[CvC_DP] ADD  CONSTRAINT [DF_CvC_DP_EstadoF]  DEFAULT ((0)) FOR [EstadoF]
GO
ALTER TABLE [dbo].[CvC_DP] ADD  CONSTRAINT [DF_CvC_DP_EstrangF]  DEFAULT ((0)) FOR [EstrangF]
GO
ALTER TABLE [dbo].[CvC_ForCur] ADD  CONSTRAINT [DF_CvC_ForCur_CopiaCert]  DEFAULT ((0)) FOR [CopiaCert]
GO
ALTER TABLE [dbo].[CvC_ForHl] ADD  CONSTRAINT [DF_CvC_ForHl_CopiaD]  DEFAULT ((0)) FOR [CopiaD]
GO
ALTER TABLE [dbo].[CvC_Idioma] ADD  CONSTRAINT [DF_CvC_Idioma_Copia]  DEFAULT ((0)) FOR [Copia]
GO
ALTER TABLE [dbo].[CvC_Independentes] ADD  DEFAULT ((0)) FOR [EstadoIndependente]
GO
ALTER TABLE [dbo].[CvC_Independentes] ADD  DEFAULT ((0)) FOR [ValorUnitarioPag]
GO
ALTER TABLE [dbo].[CvC_Independentes] ADD  DEFAULT ((0)) FOR [QuantidadePag]
GO
ALTER TABLE [dbo].[CvC_Independentes] ADD  DEFAULT ((0)) FOR [ValorTotalPag]
GO
ALTER TABLE [dbo].[CvC_Info] ADD  CONSTRAINT [DF_CvC_Info_CopiaDiploma]  DEFAULT ((0)) FOR [CopiaDiploma]
GO
ALTER TABLE [dbo].[CvC_Outros] ADD  CONSTRAINT [DF_CvC_Outros_RetencaoIRS]  DEFAULT ((0)) FOR [RetencaoIRS]
GO
ALTER TABLE [dbo].[CvC_Outros] ADD  CONSTRAINT [DF_CvC_Outros_AcresceIVA]  DEFAULT ((0)) FOR [AcresceIVA]
GO
ALTER TABLE [dbo].[CvC_Outros] ADD  CONSTRAINT [DF_CvC_Outros_Recibos]  DEFAULT ((0)) FOR [Recibos]
GO
ALTER TABLE [dbo].[CvC_Outros] ADD  CONSTRAINT [DF_CvC_Outros_SMilitar]  DEFAULT ((0)) FOR [SMilitar]
GO
ALTER TABLE [dbo].[FacReciboCab] ADD  CONSTRAINT [DF_FacReciboCab_Processado]  DEFAULT ((0)) FOR [Processado]
GO
ALTER TABLE [dbo].[FacReciboCab] ADD  CONSTRAINT [DF__FacRecibo__Conta__2D7CBDC4]  DEFAULT ((0)) FOR [Contabilizado]
GO
ALTER TABLE [dbo].[FacturaCab] ADD  CONSTRAINT [DF_FacturaCab_Regularizado]  DEFAULT ((0)) FOR [Regularizado]
GO
ALTER TABLE [dbo].[FacturaCab] ADD  CONSTRAINT [DF_FacturaCab_IndicaMoeda]  DEFAULT ((0)) FOR [IndicaMoeda]
GO
ALTER TABLE [dbo].[FacturaCab] ADD  CONSTRAINT [DF__FacturaCa__Conta__2C88998B]  DEFAULT ((0)) FOR [Contabilizado]
GO
ALTER TABLE [dbo].[Ferias] ADD  CONSTRAINT [DF_Ferias_Gozadas]  DEFAULT ((0)) FOR [Gozadas]
GO
ALTER TABLE [dbo].[FHAbonos] ADD  CONSTRAINT [DF_FHAbonos_SSocial]  DEFAULT ((0)) FOR [SSocial]
GO
ALTER TABLE [dbo].[FHAbonos] ADD  CONSTRAINT [DF_FHAbonos_IRS]  DEFAULT ((0)) FOR [IRS]
GO
ALTER TABLE [dbo].[FHAbonos] ADD  CONSTRAINT [DF_FHAbonos_SFerias]  DEFAULT ((0)) FOR [SFerias]
GO
ALTER TABLE [dbo].[FHAbonos] ADD  CONSTRAINT [DF_FHAbonos_SNatal]  DEFAULT ((0)) FOR [SNatal]
GO
ALTER TABLE [dbo].[FHAbonos] ADD  CONSTRAINT [DF_FHAbonos_SFeriasNGoz]  DEFAULT ((0)) FOR [SFeriasNGoz]
GO
ALTER TABLE [dbo].[FHAbonos] ADD  CONSTRAINT [DF_FHAbonos_CompEmp]  DEFAULT ((0)) FOR [CompEmp]
GO
ALTER TABLE [dbo].[FHAbonos] ADD  CONSTRAINT [DF__FHAbonos__Sind__2AA05119]  DEFAULT ((0)) FOR [Sind]
GO
ALTER TABLE [dbo].[FHC_FHoras] ADD  CONSTRAINT [DF_FHC_FHoras_Verificadas]  DEFAULT ((0)) FOR [Verificadas]
GO
ALTER TABLE [dbo].[FHContracto] ADD  CONSTRAINT [DF_FHContracto_PreFacturado]  DEFAULT ((0)) FOR [PreFacturado]
GO
ALTER TABLE [dbo].[FHContracto] ADD  CONSTRAINT [DF_FHContracto_FACT_FIXO]  DEFAULT ((0)) FOR [FACT_FIXO]
GO
ALTER TABLE [dbo].[FHContracto] ADD  CONSTRAINT [DF_FHContracto_EXPORTADO]  DEFAULT ((0)) FOR [EXPORTADO]
GO
ALTER TABLE [dbo].[HorarioCE] ADD  CONSTRAINT [DF_HorarioCE_HorarioAuto]  DEFAULT ((0)) FOR [HorarioAuto]
GO
ALTER TABLE [dbo].[Pedido] ADD  CONSTRAINT [DF_Pedido_Satisfeito]  DEFAULT ((0)) FOR [Satisfeito]
GO
ALTER TABLE [dbo].[PedidoCat] ADD  CONSTRAINT [DF_PedidoCat_EntrevistaCli]  DEFAULT ((0)) FOR [EntrevistaCli]
GO
ALTER TABLE [dbo].[PedidoRH] ADD  CONSTRAINT [DF_PedidoRH_ContractoGerado]  DEFAULT ((0)) FOR [ContractoGerado]
GO
ALTER TABLE [dbo].[PedidoRH] ADD  CONSTRAINT [DF_PedidoRH_Verifica1Dia]  DEFAULT ((0)) FOR [Verifica1Dia]
GO
ALTER TABLE [dbo].[PedidoRH] ADD  CONSTRAINT [DF_PedidoRH_Verifica1Semana]  DEFAULT ((0)) FOR [Verifica1Semana]
GO
ALTER TABLE [dbo].[RecibosCabecalhos] ADD  CONSTRAINT [DF__RecibosCa__Conta__2B947552]  DEFAULT ((0)) FOR [ContabilizadoSAL]
GO
ALTER TABLE [dbo].[RecibosCabecalhos] ADD  CONSTRAINT [DF__RecibosCa__Conta__2E70E1FD]  DEFAULT ((0)) FOR [ContabilizadoPag]
GO
ALTER TABLE [dbo].[Sindicatos] ADD  CONSTRAINT [DF_Sindicatos_Percentual]  DEFAULT ((0)) FOR [Percentual]
GO
ALTER TABLE [dbo].[Projectos]  WITH CHECK ADD  CONSTRAINT [Projectos_Projectos_FK02] FOREIGN KEY([ConcursoID])
REFERENCES [dbo].[Projectos] ([ID])
GO
ALTER TABLE [dbo].[Projectos] CHECK CONSTRAINT [Projectos_Projectos_FK02]
GO
USE [master]
GO
ALTER DATABASE [DBG3T] SET  READ_WRITE 
GO
