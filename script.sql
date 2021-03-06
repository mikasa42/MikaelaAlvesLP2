USE [master]
GO
/****** Object:  Database [loja_de_cosmeticos]    Script Date: 05/02/2018 19:14:17 ******/
CREATE DATABASE [loja_de_cosmeticos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'loja_de_cosmeticos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\loja_de_cosmeticos.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'loja_de_cosmeticos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\loja_de_cosmeticos_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [loja_de_cosmeticos] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [loja_de_cosmeticos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [loja_de_cosmeticos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET ARITHABORT OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [loja_de_cosmeticos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [loja_de_cosmeticos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [loja_de_cosmeticos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [loja_de_cosmeticos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [loja_de_cosmeticos] SET  MULTI_USER 
GO
ALTER DATABASE [loja_de_cosmeticos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [loja_de_cosmeticos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [loja_de_cosmeticos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [loja_de_cosmeticos] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [loja_de_cosmeticos] SET DELAYED_DURABILITY = DISABLED 
GO
USE [loja_de_cosmeticos]
GO
/****** Object:  Table [dbo].[Bijuteria]    Script Date: 05/02/2018 19:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bijuteria](
	[Id] [int] NOT NULL,
	[Nome] [nvarchar](50) NULL,
	[Quantidade] [int] NULL,
	[Preço] [float] NULL,
	[Linha] [nvarchar](50) NULL,
	[Categoria] [nvarchar](50) NULL,
	[Empresa] [nvarchar](50) NULL,
	[Id_Fornecedor] [int] NOT NULL,
	[Seguro] [nchar](10) NULL,
 CONSTRAINT [PK_Bijuteria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[Id_Fornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cadastro]    Script Date: 05/02/2018 19:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cadastro](
	[Cpf_Cliente] [int] NOT NULL,
	[Nome] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cadastrp] PRIMARY KEY CLUSTERED 
(
	[Cpf_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 05/02/2018 19:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cpf] [nvarchar](max) NOT NULL,
	[Qtd_Compras] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Desconto]    Script Date: 05/02/2018 19:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Desconto](
	[Cpf_Cliente] [int] NOT NULL,
	[Cliente_Qtd_Compras] [int] NULL,
 CONSTRAINT [PK_Desconto] PRIMARY KEY CLUSTERED 
(
	[Cpf_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 05/02/2018 19:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedor](
	[Id] [int] NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[Endereco] [nvarchar](max) NULL,
 CONSTRAINT [PK_Fornecedor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fornecimento]    Script Date: 05/02/2018 19:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecimento](
	[Id] [int] NOT NULL,
	[Id_fornecedor] [int] NOT NULL,
	[Id_Localização] [int] NOT NULL,
 CONSTRAINT [PK_Fornecimento_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Localização]    Script Date: 05/02/2018 19:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localização](
	[Id] [int] NOT NULL,
	[Cidade] [nvarchar](max) NULL,
	[Uf] [nvarchar](max) NULL,
	[País] [nvarchar](max) NULL,
 CONSTRAINT [PK_Localização] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 05/02/2018 19:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[Quantidade] [int] NULL,
	[Preço] [int] NULL,
	[Categoria] [nvarchar](max) NULL,
	[Linha] [nvarchar](max) NULL,
	[Id_Fornecedor] [int] NOT NULL,
	[Empresa] [nvarchar](max) NULL,
	[Id_Fornecimento] [int] NULL,
 CONSTRAINT [PK_Maquiagem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[Id_Fornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 05/02/2018 19:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Cpf_Revendedor] [nvarchar](max) NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[Senha] [nvarchar](12) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venda]    Script Date: 05/02/2018 19:14:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venda](
	[Descrição] [nvarchar](max) NULL,
	[Cpf_Cliente] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Bijuteria] ([Id], [Nome], [Quantidade], [Preço], [Linha], [Categoria], [Empresa], [Id_Fornecedor], [Seguro]) VALUES (1, N'colar', 7, 10, N'Romanel', N'Pescoço', N'Romanel', 9000, N'N         ')
INSERT [dbo].[Cliente] ([Cpf], [Qtd_Compras]) VALUES (N'1', 4)
INSERT [dbo].[Cliente] ([Cpf], [Qtd_Compras]) VALUES (N'12', NULL)
INSERT [dbo].[Fornecedor] ([Id], [Nome], [Endereco]) VALUES (1234, N'Nivea', N'RioDeJaneiro')
INSERT [dbo].[Fornecedor] ([Id], [Nome], [Endereco]) VALUES (2345, N'Natura', N'RioDeJaneiro')
INSERT [dbo].[Fornecedor] ([Id], [Nome], [Endereco]) VALUES (3456, N'Avon', N'RioDeJaneiro')
INSERT [dbo].[Fornecedor] ([Id], [Nome], [Endereco]) VALUES (4567, N'Mac', N'RioDeJaneiro')
INSERT [dbo].[Fornecedor] ([Id], [Nome], [Endereco]) VALUES (5678, N'Boticario', N'RioDeJaneiro')
INSERT [dbo].[Fornecedor] ([Id], [Nome], [Endereco]) VALUES (6789, N'MaryKay', N'NewYork')
INSERT [dbo].[Fornecedor] ([Id], [Nome], [Endereco]) VALUES (7890, N'MaybeLine', N'NewYork')
INSERT [dbo].[Fornecedor] ([Id], [Nome], [Endereco]) VALUES (8900, N'Eudora', N'NewYork')
INSERT [dbo].[Fornecedor] ([Id], [Nome], [Endereco]) VALUES (9000, N'DiversasMarcas', N'RioDeJaneiro')
SET IDENTITY_INSERT [dbo].[Produtos] ON 

INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (1, N'Batom', 16, 24, N'Labios', N'Bibelo', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (3, N'Batom', 12, 30, N'Labios', N'SunProtect', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (5, N'Batom', 15, 20, N'Labios', N'Matific', 2345, N'Natureza', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (7, N'Batom', 20, 30, N'Labios', N'Aquarela', 2345, N'Natureza', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (9, N'Batom', 20, 40, N'Labios', N'UltraMatte', 2345, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (10, N'Batom', 14, 23, N'Labios', N'MegaLuminuosMark', 2345, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (11, N'Batom', 13, 50, N'Labios', N'FlatOutFabulous', 3456, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (12, N'Batom', 24, 55, N'Labios', N'Shadescent', 3456, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (13, N'Batom', 20, 30, N'Labios', N'Comfort', 4567, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (16, N'Batom', 34, 50, N'Labios', N'MakeB', 4567, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (17, N'Batom', 21, 40, N'Labios', N'AtPlay', 5678, N'MarryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (19, N'Batom', 25, 56, N'Labios', N'Matte', 5678, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (20, N'LapisBatom', 10, 20, N'Labios', N'Face', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (21, N'LapisBatom', 8, 20, N'Labios', N'Aquarela', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (22, N'LapisBatom', 10, 14, N'Labios', N'UltraColor', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (24, N'LapisBatom', 16, 13, N'Labios', N'ColorTrend', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (25, N'LapisBatom', 8, 20, N'Labios', N'VelveTease', 4567, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (27, N'LabisBatom', 17, 34, N'Labios', N'CrayonALevres', 4567, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (29, N'LapisBatom', 7, 30, N'Labios', N'Sephora', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (30, N'LapisBatom', 8, 32, N'Labios', N'Intense', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (31, N'LapisBatom', 6, 40, N'Labios', N'LipCrayon', 5678, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (32, N'LapisOlho', 30, 27, N'Olhos', N'Aquarela', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (34, N'LapisOlho', 24, 27, N'Olhos', N'Una', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (35, N'LapisOlho', 20, 12, N'Olhos', N'MegaImpact', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (36, N'LapisOlho', 20, 15, N'Olhos', N'UltraColor', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (39, N'LapisOlho', 35, 8, N'Olhos', N'CrayonKhon', 4567, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (41, N'LapisOlho', 24, 9, N'Olhos', N'Intense', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (42, N'LapisOlho', 4, 32, N'Olhos', N'MakeB', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (43, N'LapisOlho', 6, 40, N'Olhos', N'MaryKay', 6789, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (44, N'LapisOlho', 8, 45, N'Olhos', N'Colossal', 7890, N'MaybeLine', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (46, N'LapisOlho', 14, 36, N'Olhos', N'ColorShow', 7890, N'MaybeLine', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (47, N'LapisOlho', 12, 40, N'Olhos', N'Soul', 8900, N'Eudora', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (50, N'LapisOlho', 4, 50, N'Olhos', N'Kajal', 8900, N'Eudora', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (52, N'CremeEspinhas', 10, 35, N'Rosto', N'EyeShadow', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (53, N'Sombra', 13, 35, N'Olhos', N'Una', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (56, N'Sombra', 18, 40, N'Olhos', N'Aquarela', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (58, N'Sombra', 5, 30, N'Olhos', N'TrueColor', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (59, N'Sombra', 10, 17, N'Olhos', N'ColorTrend', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (60, N'Sombra', 8, 70, N'Olhos', N'SatinTaupe', 4567, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (61, N'Sombra', 5, 150, N'Olhos', N'EyeShadowX9AmberTimesNine', 4567, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (62, N'Sombra', 17, 40, N'Olhos', N'Intense', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (63, N'Sombra', 19, 40, N'Olhos', N'MakeB', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (65, N'Sombra', 17, 25, N'Olhos', N'Mineral', 6789, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (66, N'Sombra', 5, 50, N'Olhos', N'AtPlay', 6789, N'MayKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (67, N'Sombra', 7, 34, N'Olhos', N'TheNudes', 7890, N'Maybelline', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (68, N'Sombra', 3, 48, N'Olhos', N'The24Nudes', 7890, N'Maybelline', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (70, N'Sombra', 6, 80, N'Olhos', N'Soul', 8900, N'Eudora', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (72, N'Delineador', 9, 27, N'Olhos', N'Aquarela', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (73, N'Delineador', 20, 40, N'Olhos', N'Una', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (74, N'Delineador', 30, 19, N'Olhos', N'Faces', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (76, N'Delineador', 12, 12, N'Olhos', N'ColorTrend', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (78, N'Delineador', 4, 19, N'Olhos', N'Mark', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (80, N'Delineador', 5, 19, N'Olhos', N'GlimmerStricK', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (81, N'Delineador', 6, 80, N'Olhos', N'FluidLine', 4567, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (83, N'Delineador', 20, 40, N'Olhos', N'MakeB', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (84, N'Delineador', 5, 50, N'Olhos', N'Roller', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (85, N'Delineador', 15, 60, N'Olhos', N'', 6789, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (86, N'Delineador', 7, 70, N'Olhos', N'MasterGraphic', 7890, N'Maybelline', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (88, N'Delineador', 9, 22, N'Olhos', N'Soul', 8900, N'Eudora', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (90, N'Delineador', 8, 19, N'Olhos', N'Diva', 8900, N'Eudora', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (91, N'Iluminador', 10, 34, N'Rosto', N'Aquarela', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (92, N'Iluminador', 12, 30, N'Rosto', N'Una', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (93, N'Iluminador', 30, 31, N'Rosto', N'Mark', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (94, N'Iluminador', 3, 140, N'Rosto', N'Mineralize', 4567, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (98, N'Iluminador', 6, 32, N'Rosto', N'Intense', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (100, N'Iluminador', 3, 53, N'Rosto', N'', 6789, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (104, N'Iluminador', 5, 70, N'Rosto', N'BrowDrama', 7890, N'Maybelline', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (105, N'Iluminador', 4, 17, N'Rosto', N'Diva', 8900, N'Eudora', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (106, N'Base', 5, 17, N'Rosto', N'BBCream', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (107, N'Base', 7, 75, N'Rosto', N'Una', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (111, N'Base', 9, 44, N'Rosto', N'aquarela', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (117, N'Base', 19, 34, N'Rosto ', N'Mark', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (118, N'Base', 24, 35, N'Rosto', N'ColorTrend', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (120, N'Base', 12, 145, N'Rosto', N'NextToNothingFaceColor', 4567, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (122, N'Base', 5, 47, N'Rosto', N'MakeB', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (123, N'Base', 4, 145, N'Rosto', N'TimeWise', 6789, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (124, N'Base', 4, 54, N'Rosto', N'SuperStay', 7890, N'Maybelline', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (126, N'Base', 8, 55, N'Rosto', N'SkinPerfection', 8900, N'Eudora', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (127, N'Corretivo ', 16, 40, N'Rosto', N'Aclarado', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (128, N'Corretivo', 6, 31, N'Rosto', N'Una', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (129, N'Corretivo', 23, 20, N'Rosto', N'Aquarela', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (131, N'Corretivo', 17, 10, N'Rosto', N'ColorTrend', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (132, N'Corretivo ', 16, 16, N'Rosto', N'Mark', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (133, N'Corretivo', 3, 18, N'Rosto', N'', 4567, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (135, N'Corretivo', 4, 46, N'Rosto', N'MakeB', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (136, N'Corretivo', 8, 28, N'Rosto', N'Intense', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (137, N'Corretivo', 7, 60, N'Rosto', N'PerfectingConcealer', 6789, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (139, N'Corretivo', 7, 70, N'Rosto', N'FitMe', 7890, N'Maybelline', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (140, N'Corretivo', 9, 18, N'Rosto', N'SkinPerfection', 8900, N'Eudora', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (142, N'PoArroz', 30, 20, N'Rosto', N'Creme', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (143, N'PoArroz', 12, 20, N'Rosto', N'Una', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (145, N'PoArroz', 14, 20, N'Rosto', N'Aquarela', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (147, N'PoArroz', 11, 20, N'Rosto', N'ColorTrend', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (149, N'PoArroz', 11, 40, N'Rosto ', N'Mark', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (151, N'PoArroz', 10, 70, N'Rosto', N'StudioFixPerfectPowder', 4567, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (153, N'PoArroz', 6, 140, N'Rosto', N'ExtraDimension', 4567, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (154, N'PoArroz', 3, 80, N'Rosto', N'MakeB', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (155, N'PoArroz', 8, 85, N'Rosto', N'intense', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (158, N'PoArroz', 5, 145, N'Rosto', N'Mineral', 6789, N'MaryKay', NULL)
GO
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (159, N'PoArroz', 9, 50, N'Rosto', N'FitMe', 7890, N'Maybelline', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (160, N'PoArroz', 5, 50, N'Rosto', N'SkinPerfection', 8900, N'Eudora', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (161, N'MascaraDeCilios', 4, 30, N'Cilios', N'Aquarela', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (162, N'MascaraDeCilios', 5, 40, N'Cilios', N'Faces', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (164, N'MascaraDeCilios', 7, 35, N'Cilios', N'Una', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (165, N'MascaraDeCilios', 4, 40, N'Cilios', N'SuperShockMax', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (167, N'MascaraDeCilios', 5, 37, N'Cilios', N'Mark', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (168, N'MascaraDeCilios', 6, 45, N'Cilios', N'SuperExtreme', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (169, N'MascaraDeCilios', 8, 70, N'Cilios', N'FalseLashEfect', 3456, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (170, N'MascaraDeCilios', 5, 50, N'Cilios', N'Intense', 4567, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (171, N'MascaraDeCilios', 9, 40, N'Cilios', N'MakeB', 4567, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (172, N'MascaraDeCilios', 3, 55, N'Cilios', N'LashIntensity', 5678, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (175, N'MascaraDeCilios', 10, 40, N'Cilios', N'Colossal', 6789, N'Maybelline', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (177, N'MascaraDeCilios', 10, 40, N'Cilios', N'OneByOne', 7890, N'Maybelline', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (178, N'MascaraDeCilios', 10, 40, N'Cilios', N'MegaPlus', 7890, N'Maybelline', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (179, N'MascaraDeCilios', 10, 40, N'Cilios', N'Thefalsies', 7890, N'Maybelline', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (180, N'MascaraDeCilios', 10, 40, N'Cilios', N'TheRocket', 7890, N'Maybelline', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (181, N'MascaraDeCilios', 10, 40, N'Cilios', N'DefineALash', 7890, N'Maybelline', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (183, N'MascaraDeCilios', 4, 50, N'Cilios', N'Divas', 8900, N'Eudora', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (184, N'MascaraDeCilios', 7, 50, N'Cilios', N'Soul', 8900, N'Eudora', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (185, N'Hidratante', 6, 40, N'Corpo', N'TodoDia', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (188, N'Hidratante', 6, 40, N'Corpo', N'Sentidos', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (189, N'Hidratante', 9, 40, N'Corpo', N'Soft', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (190, N'Hidratante', 8, 30, N'Corpo', N'Milk', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (191, N'Hidratante', 7, 36, N'Corpo', N'Soul', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (193, N'Hidratante', 5, 34, N'Corpo', N'Ekos', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (194, N'Hidratante', 4, 35, N'Corpo', N'Care', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (195, N'Hidratante', 3, 36, N'Corpo', N'Encanto', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (196, N'Hidratante', 8, 37, N'Corpo', N'Floratta', 4567, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (197, N'Hidratante', 5, 38, N'Corpo', N'NativaSPA', 4567, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (198, N'Hidratante', 8, 38, N'Corpo', N'Strobe', 5678, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (199, N'Hidratante', 9, 39, N'Corpo', N'Mineralize', 5678, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (200, N'Hidratante', 3, 40, N'Corpo', N'TimeWise', 6789, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (202, N'Sabonete', 10, 15, N'Corpo', N'TodoDia', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (203, N'Sabonete', 11, 16, N'Corpo', N'Ekos', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (205, N'Sabonete', 19, 17, N'Corpo', N'CremeCare', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (206, N'Sabonete', 12, 13, N'Corpo', N'SoftMilk', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (208, N'Sabonete', 15, 15, N'Corpo', N'Encanto', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (209, N'Sabonete', 16, 16, N'Corpo', N'Naturals', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (210, N'Sabonete', 14, 15, N'Corpo', N'NativaSPA', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (211, N'Sabonete', 17, 4, N'Corpo', N'Capricho', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (212, N'Sabonete', 13, 11, N'Corpo', N'SantinBody', 6789, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (216, N'Desodorante', 30, 14, N'Axilas', N'ProtectCare', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (219, N'Desodorante', 30, 15, N'Axilas', N'DoubleEffect', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (220, N'Desodorante', 30, 15, N'Axilas', N'DryImpact', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (221, N'Desodorante', 30, 15, N'Axilas', N'InvisibleBlackAndWhite', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (222, N'Desodorante', 30, 15, N'Axilas', N'StressProtect', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (223, N'Desodorante', 30, 15, N'Axilas', N'Pearl&Beauty', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (225, N'Perfume', 4, 90, N'Corpo', N'EauDeToilette', 1234, N'Nivea', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (226, N'Perfume', 6, 80, N'Corpo', N'KaiaK', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (227, N'Perfume', 8, 98, N'Corpo', N'Ekos', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (229, N'Perfume', 5, 96, N'Corpo', N'BemBom', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (230, N'Perfume', 7, 45, N'Corpo', N'Aguas', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (231, N'Perfume', 6, 64, N'Corpo', N'Biografia', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (232, N'Perfume', 5, 89, N'Corpo', N'TodoDia', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (233, N'Perfume', 8, 69, N'Corpo', N'Humor', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (234, N'Perfume', 9, 69, N'Corpo', N'Una', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (235, N'Perfume', 5, 40, N'Corpo', N'Humor', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (237, N'Perfume', 8, 99, N'Corpo', N'VôVó', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (239, N'Perfume', 6, 120, N'Corpo', N'Luna', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (240, N'Perfume', 5, 112, N'Corpo', N'EstaFlor', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (241, N'Perfume', 6, 113, N'Corpo', N'MamaeBebe', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (242, N'Perfume', 7, 119, N'Corpo', N'Krisca', 2345, N'Natura', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (244, N'Perfume', 6, 40, N'Corpo', N'FarWay', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (246, N'Perfume', 2, 50, N'Corpo', N'Luminata', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (247, N'Perfume', 4, 60, N'Corpo', N'Scent', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (248, N'Perfume', 5, 70, N'Corpo', N'PurBlanca', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (249, N'Perfume', 2, 40, N'Corpo', N'Atitude', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (250, N'Perfume', 6, 30, N'Corpo', N'Musk', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (251, N'Perfume', 4, 27, N'Corpo', N'Spirit', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (252, N'Perfume', 3, 19, N'Corpo', N'SurrealSky', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (253, N'Perfume', 5, 123, N'Corpo', N'AirOfStyle', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (254, N'Perfume', 6, 124, N'Corpo', N'Monogram', 4567, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (255, N'Perfume', 7, 123, N'Corpo', N'Turquatic', 4567, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (256, N'Perfume', 8, 153, N'Corpo', N'Shadescents', 4567, N'Mac', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (257, N'Perfume', 9, 90, N'Corpo', N'Floratta', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (258, N'Perfume', 7, 199, N'Corpo', N'MyLily', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (259, N'Perfume', 6, 60, N'Corpo', N'Quasar', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (260, N'Perfume', 4, 90, N'Corpo', N'Egeo', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (261, N'Perfume', 5, 80, N'Corpo', N'GlamourSecrets', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (262, N'Perfume', 5, 70, N'Corpo', N'Anni', 5678, N'Boticario', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (264, N'Perfume', 9, 110, N'Corpo', N'CleverDare', 6789, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (265, N'Perfume', 8, 80, N'Corpo', N'BlackDiamonds', 6789, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (266, N'Perfume', 5, 90, N'Corpo', N'HeartFelt', 6789, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (267, N'Perfume', 6, 90, N'Corpo', N'AuthenticHero', 6789, N'MaryKay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (268, N'Perfume', 7, 290, N'Corpo', N'CityScape', 6789, N'Marykay', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (272, N'Perfume', 2, 109, N'Corpo', N'212', 9000, N'CarolinaHerrera', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (276, N'Perfume', 3, 370, N'Corpo', N'L`eau', 9000, N'CarolinaHerrera', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (277, N'Perfume', 4, 260, N'Corpo', N'212Vip', 9000, N'CarolinaHerrera', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (278, N'Perfume', 1, 270, N'Corpo', N'Eternity', 9000, N'CarolinaHerrera', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (279, N'Perfume', 2, 117, N'Corpo', N'Scuderia', 9000, N'Ferrari', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (280, N'Perfume', 3, 250, N'Corpo', N'BlackXForHer', 9000, N'PacoRabanne', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (281, N'Perfume', 7, 250, N'Corpo', N'Olympéa', 9000, N'Pacorabanne', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (282, N'Perfume', 3, 390, N'Corpo', N'Calandre', 9000, N'Pacorabanne', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (283, N'Perfume', 2, 200, N'Corpo', N'Mademoiselle', 9000, N'Azzaro', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (284, N'Perfume', 1, 480, N'Corpo', N'Miracle', 9000, N'Lancôme', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (285, N'Perfume', 2, 100, N'Corpo', N'HerGoldeSsecret', 9000, N'AntonioBandeiras', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (286, N'Perfume', 3, 109, N'Corpo', N'QueenOfSeduction', 9000, N'AntobioBandeiras', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (287, N'Perfume', 4, 150, N'Corpo', N'HerSecretTemptantion', 9000, N'AntonioBandeira', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (288, N'Perfume', 5, 498, N'Corpo', N'Romance', 9000, N'RaphLauren', NULL)
GO
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (289, N'Perfume', 6, 498, N'Corpo', N'Sí', 9000, N'GiorgioArmani', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (290, N'Perfume', 7, 538, N'Corpo', N'AcquaDiGioia', 9000, N'GiorgioArmani', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (291, N'Perfume', 6, 300, N'Corpo', N'BlackOpium', 9000, N'YvesSaintLaurent', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (292, N'Perfume', 4, 48, N'Corpo', N'It´sLife', 9000, N'ParisElysees', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (293, N'Perfume', 5, 89, N'Corpo', N'Billion', 9000, N'ParisElysees', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (294, N'Perfume', 7, 90, N'Corpo', N'SexyWoman', 9000, N'ParisElysees', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (295, N'Perfume', 5, 250, NULL, N'TommySummer', 9000, N'TommyHilfiger', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (1227, N'Batom', 2, 20, N'Labios', N'EpicLipMark', 3456, N'Avon', NULL)
INSERT [dbo].[Produtos] ([Id], [Nome], [Quantidade], [Preço], [Categoria], [Linha], [Id_Fornecedor], [Empresa], [Id_Fornecimento]) VALUES (1228, N'MascaraDeCilios', 2, 70, N'Cilios', N'RoseLetMeBe', 9000, N'Vult', NULL)
SET IDENTITY_INSERT [dbo].[Produtos] OFF
INSERT [dbo].[Usuario] ([Cpf_Revendedor], [Nome], [Senha]) VALUES (N'1', N'mika', N'123')
INSERT [dbo].[Venda] ([Descrição], [Cpf_Cliente]) VALUES (N'blablabla', 1)
INSERT [dbo].[Venda] ([Descrição], [Cpf_Cliente]) VALUES (N'2ed', 1)
INSERT [dbo].[Venda] ([Descrição], [Cpf_Cliente]) VALUES (N'de', 1)
INSERT [dbo].[Venda] ([Descrição], [Cpf_Cliente]) VALUES (N'ef', 1)
INSERT [dbo].[Venda] ([Descrição], [Cpf_Cliente]) VALUES (N'eg', 1)
ALTER TABLE [dbo].[Bijuteria]  WITH CHECK ADD  CONSTRAINT [FK_Bijuteria_Fornecedor] FOREIGN KEY([Id_Fornecedor])
REFERENCES [dbo].[Fornecedor] ([Id])
GO
ALTER TABLE [dbo].[Bijuteria] CHECK CONSTRAINT [FK_Bijuteria_Fornecedor]
GO
ALTER TABLE [dbo].[Fornecimento]  WITH CHECK ADD  CONSTRAINT [FK_Fornecimento_Fornecedor] FOREIGN KEY([Id_fornecedor])
REFERENCES [dbo].[Fornecedor] ([Id])
GO
ALTER TABLE [dbo].[Fornecimento] CHECK CONSTRAINT [FK_Fornecimento_Fornecedor]
GO
ALTER TABLE [dbo].[Fornecimento]  WITH CHECK ADD  CONSTRAINT [FK_Fornecimento_Localização] FOREIGN KEY([Id_Localização])
REFERENCES [dbo].[Localização] ([Id])
GO
ALTER TABLE [dbo].[Fornecimento] CHECK CONSTRAINT [FK_Fornecimento_Localização]
GO
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_Maquiagem_Fornecedor] FOREIGN KEY([Id_Fornecedor])
REFERENCES [dbo].[Fornecedor] ([Id])
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_Maquiagem_Fornecedor]
GO
ALTER TABLE [dbo].[Produtos]  WITH CHECK ADD  CONSTRAINT [FK_Produtos_Fornecimento] FOREIGN KEY([Id_Fornecimento])
REFERENCES [dbo].[Fornecimento] ([Id])
GO
ALTER TABLE [dbo].[Produtos] CHECK CONSTRAINT [FK_Produtos_Fornecimento]
GO
USE [master]
GO
ALTER DATABASE [loja_de_cosmeticos] SET  READ_WRITE 
GO
