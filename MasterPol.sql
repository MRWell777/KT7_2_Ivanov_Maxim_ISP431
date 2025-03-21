USE [master]
GO
/****** Object:  Database [MasterPol]    Script Date: 10.03.2025 14:35:43 ******/
CREATE DATABASE [MasterPol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MasterPol', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterPol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MasterPol_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterPol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MasterPol] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MasterPol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MasterPol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasterPol] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasterPol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasterPol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MasterPol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasterPol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasterPol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasterPol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasterPol] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MasterPol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasterPol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MasterPol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MasterPol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MasterPol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasterPol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MasterPol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MasterPol] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MasterPol] SET  MULTI_USER 
GO
ALTER DATABASE [MasterPol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MasterPol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MasterPol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MasterPol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MasterPol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MasterPol] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MasterPol] SET QUERY_STORE = OFF
GO
USE [MasterPol]
GO
/****** Object:  Table [dbo].[Adres]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adres](
	[ID] [int] NOT NULL,
	[IndexID] [int] NOT NULL,
	[AreaID] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[StreetID] [int] NOT NULL,
	[House] [int] NOT NULL,
 CONSTRAINT [PK_Adres] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[ID] [int] NOT NULL,
	[Num] [float] NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[ID] [int] NOT NULL,
	[TypeMaterial] [nvarchar](50) NOT NULL,
	[ProsentProductTrash] [float] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProductImport]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProductImport](
	[ID] [int] NOT NULL,
	[NameProductID] [int] NOT NULL,
	[PartnerID] [int] NOT NULL,
	[Quantity] [float] NOT NULL,
	[DateSale] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProductImport] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnersImport]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnersImport](
	[ID] [int] NOT NULL,
	[TypePartnerID] [int] NOT NULL,
	[PartnerID] [int] NOT NULL,
	[Director] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[NumPhone] [nvarchar](50) NOT NULL,
	[AdresID] [int] NOT NULL,
	[INN] [float] NOT NULL,
	[Reiting] [int] NOT NULL,
 CONSTRAINT [PK_PartnersImport] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImport]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImport](
	[ID] [int] NULL,
	[TypeProductID] [int] NULL,
	[NameProductID] [int] NULL,
	[Articule] [float] NULL,
	[MinSalePartner] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypeImport]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypeImport](
	[ID] [int] NULL,
	[TypeProductID] [int] NULL,
	[ProsentTypeProduct] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypePartner]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypePartner](
	[ID] [int] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypePartner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 10.03.2025 14:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[ID] [int] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Adres] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (1, 5, 3, 5, 1, 15)
INSERT [dbo].[Adres] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (2, 2, 1, 3, 5, 18)
INSERT [dbo].[Adres] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (3, 3, 4, 1, 2, 21)
INSERT [dbo].[Adres] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (4, 1, 5, 2, 4, 51)
INSERT [dbo].[Adres] ([ID], [IndexID], [AreaID], [CityID], [StreetID], [House]) VALUES (5, 4, 2, 4, 3, 122)
GO
INSERT [dbo].[Area] ([ID], [Name]) VALUES (1, N' Архангельская область')
INSERT [dbo].[Area] ([ID], [Name]) VALUES (2, N' Белгородская область')
INSERT [dbo].[Area] ([ID], [Name]) VALUES (3, N' Кемеровская область')
INSERT [dbo].[Area] ([ID], [Name]) VALUES (4, N' Ленинградская область')
INSERT [dbo].[Area] ([ID], [Name]) VALUES (5, N' Московская область')
GO
INSERT [dbo].[City] ([ID], [Name]) VALUES (1, N' город Приморск')
INSERT [dbo].[City] ([ID], [Name]) VALUES (2, N' город Реутов')
INSERT [dbo].[City] ([ID], [Name]) VALUES (3, N' город Северодвинск')
INSERT [dbo].[City] ([ID], [Name]) VALUES (4, N' город Старый Оскол')
INSERT [dbo].[City] ([ID], [Name]) VALUES (5, N' город Юрга')
GO
INSERT [dbo].[Index] ([ID], [Num]) VALUES (1, 143960)
INSERT [dbo].[Index] ([ID], [Num]) VALUES (2, 164500)
INSERT [dbo].[Index] ([ID], [Num]) VALUES (3, 188910)
INSERT [dbo].[Index] ([ID], [Num]) VALUES (4, 309500)
INSERT [dbo].[Index] ([ID], [Num]) VALUES (5, 652050)
GO
INSERT [dbo].[Material] ([ID], [TypeMaterial], [ProsentProductTrash]) VALUES (1, N'Тип материала 1', 0.001)
INSERT [dbo].[Material] ([ID], [TypeMaterial], [ProsentProductTrash]) VALUES (2, N'Тип материала 2', 0.01)
INSERT [dbo].[Material] ([ID], [TypeMaterial], [ProsentProductTrash]) VALUES (3, N'Тип материала 3', 0.003)
INSERT [dbo].[Material] ([ID], [TypeMaterial], [ProsentProductTrash]) VALUES (4, N'Тип материала 4', 0.006)
INSERT [dbo].[Material] ([ID], [TypeMaterial], [ProsentProductTrash]) VALUES (5, N'Тип материала 5', 0.003)
GO
INSERT [dbo].[Partner] ([ID], [Name]) VALUES (1, N'База Строитель')
INSERT [dbo].[Partner] ([ID], [Name]) VALUES (2, N'МонтажПро')
INSERT [dbo].[Partner] ([ID], [Name]) VALUES (3, N'Паркет 29')
INSERT [dbo].[Partner] ([ID], [Name]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[Partner] ([ID], [Name]) VALUES (5, N'Стройсервис')
GO
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProductImport] ([ID], [NameProductID], [PartnerID], [Quantity], [DateSale]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
GO
INSERT [dbo].[PartnersImport] ([ID], [TypePartnerID], [PartnerID], [Director], [Email], [NumPhone], [AdresID], [INN], [Reiting]) VALUES (1, 1, 1, N'Иванова Александра Ивановна', N'aleksandraivanova@ml.ru', N'+7 493 123 45 67', 1, 2222455179, 7)
INSERT [dbo].[PartnersImport] ([ID], [TypePartnerID], [PartnerID], [Director], [Email], [NumPhone], [AdresID], [INN], [Reiting]) VALUES (2, 3, 3, N'Петров Василий Петрович', N'vppetrov@vl.ru', N'+7 987 123 56 78', 2, 3333888520, 7)
INSERT [dbo].[PartnersImport] ([ID], [TypePartnerID], [PartnerID], [Director], [Email], [NumPhone], [AdresID], [INN], [Reiting]) VALUES (3, 4, 5, N'Соловьев Андрей Николаевич', N'ansolovev@st.ru', N'+7 812 223 32 00', 3, 4440391035, 7)
INSERT [dbo].[PartnersImport] ([ID], [TypePartnerID], [PartnerID], [Director], [Email], [NumPhone], [AdresID], [INN], [Reiting]) VALUES (4, 2, 4, N'Воробьева Екатерина Валерьевна', N'ekaterina.vorobeva@ml.ru', N'+7 444 222 33 11', 4, 1111520857, 5)
INSERT [dbo].[PartnersImport] ([ID], [TypePartnerID], [PartnerID], [Director], [Email], [NumPhone], [AdresID], [INN], [Reiting]) VALUES (5, 1, 2, N'Степанов Степан Сергеевич', N'stepanov@stepan.ru', N'+7 912 888 33 33', 5, 5552431140, 10)
GO
INSERT [dbo].[ProductImport] ([ID], [TypeProductID], [NameProductID], [Articule], [MinSalePartner]) VALUES (1, 3, 4, 8758385, 4456.9)
INSERT [dbo].[ProductImport] ([ID], [TypeProductID], [NameProductID], [Articule], [MinSalePartner]) VALUES (2, 3, 1, 8858958, 7330.99)
INSERT [dbo].[ProductImport] ([ID], [TypeProductID], [NameProductID], [Articule], [MinSalePartner]) VALUES (3, 1, 2, 7750282, 1799.33)
INSERT [dbo].[ProductImport] ([ID], [TypeProductID], [NameProductID], [Articule], [MinSalePartner]) VALUES (4, 1, 3, 7028748, 3890.41)
INSERT [dbo].[ProductImport] ([ID], [TypeProductID], [NameProductID], [Articule], [MinSalePartner]) VALUES (5, 4, 5, 5012543, 5450.59)
GO
INSERT [dbo].[ProductName] ([ID], [Name]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[ProductName] ([ID], [Name]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[ProductName] ([ID], [Name]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[ProductName] ([ID], [Name]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[ProductName] ([ID], [Name]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
GO
INSERT [dbo].[ProductTypeImport] ([ID], [TypeProductID], [ProsentTypeProduct]) VALUES (1, 1, 2.35)
INSERT [dbo].[ProductTypeImport] ([ID], [TypeProductID], [ProsentTypeProduct]) VALUES (2, 2, 5.15)
INSERT [dbo].[ProductTypeImport] ([ID], [TypeProductID], [ProsentTypeProduct]) VALUES (3, 3, 4.34)
INSERT [dbo].[ProductTypeImport] ([ID], [TypeProductID], [ProsentTypeProduct]) VALUES (4, 4, 1.5)
GO
INSERT [dbo].[Street] ([ID], [Name]) VALUES (1, N' ул. Лесная')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (2, N' ул. Парковая')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (3, N' ул. Рабочая')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (4, N' ул. Свободы')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (5, N' ул. Строителей')
GO
INSERT [dbo].[TypePartner] ([ID], [Type]) VALUES (1, N'ЗАО')
INSERT [dbo].[TypePartner] ([ID], [Type]) VALUES (2, N'ОАО')
INSERT [dbo].[TypePartner] ([ID], [Type]) VALUES (3, N'ООО')
INSERT [dbo].[TypePartner] ([ID], [Type]) VALUES (4, N'ПАО')
GO
INSERT [dbo].[TypeProduct] ([ID], [Type]) VALUES (1, N'Ламинат')
INSERT [dbo].[TypeProduct] ([ID], [Type]) VALUES (2, N'Массивная доска')
INSERT [dbo].[TypeProduct] ([ID], [Type]) VALUES (3, N'Паркетная доска')
INSERT [dbo].[TypeProduct] ([ID], [Type]) VALUES (4, N'Пробковое покрытие')
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [FK_Adres_Area] FOREIGN KEY([AreaID])
REFERENCES [dbo].[Area] ([ID])
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [FK_Adres_Area]
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [FK_Adres_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [FK_Adres_City]
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [FK_Adres_Index] FOREIGN KEY([IndexID])
REFERENCES [dbo].[Index] ([ID])
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [FK_Adres_Index]
GO
ALTER TABLE [dbo].[Adres]  WITH CHECK ADD  CONSTRAINT [FK_Adres_Street] FOREIGN KEY([StreetID])
REFERENCES [dbo].[Street] ([ID])
GO
ALTER TABLE [dbo].[Adres] CHECK CONSTRAINT [FK_Adres_Street]
GO
ALTER TABLE [dbo].[PartnerProductImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProductImport_Partner] FOREIGN KEY([PartnerID])
REFERENCES [dbo].[Partner] ([ID])
GO
ALTER TABLE [dbo].[PartnerProductImport] CHECK CONSTRAINT [FK_PartnerProductImport_Partner]
GO
ALTER TABLE [dbo].[PartnerProductImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProductImport_ProductName] FOREIGN KEY([NameProductID])
REFERENCES [dbo].[ProductName] ([ID])
GO
ALTER TABLE [dbo].[PartnerProductImport] CHECK CONSTRAINT [FK_PartnerProductImport_ProductName]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_Adres] FOREIGN KEY([AdresID])
REFERENCES [dbo].[Adres] ([ID])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_Adres]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_Partner] FOREIGN KEY([PartnerID])
REFERENCES [dbo].[Partner] ([ID])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_Partner]
GO
ALTER TABLE [dbo].[PartnersImport]  WITH CHECK ADD  CONSTRAINT [FK_PartnersImport_TypePartner] FOREIGN KEY([TypePartnerID])
REFERENCES [dbo].[TypePartner] ([ID])
GO
ALTER TABLE [dbo].[PartnersImport] CHECK CONSTRAINT [FK_PartnersImport_TypePartner]
GO
ALTER TABLE [dbo].[ProductImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductImport_ProductName] FOREIGN KEY([NameProductID])
REFERENCES [dbo].[ProductName] ([ID])
GO
ALTER TABLE [dbo].[ProductImport] CHECK CONSTRAINT [FK_ProductImport_ProductName]
GO
ALTER TABLE [dbo].[ProductImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductImport_TypeProduct] FOREIGN KEY([TypeProductID])
REFERENCES [dbo].[TypeProduct] ([ID])
GO
ALTER TABLE [dbo].[ProductImport] CHECK CONSTRAINT [FK_ProductImport_TypeProduct]
GO
ALTER TABLE [dbo].[ProductTypeImport]  WITH CHECK ADD  CONSTRAINT [FK_ProductTypeImport_TypeProduct] FOREIGN KEY([TypeProductID])
REFERENCES [dbo].[TypeProduct] ([ID])
GO
ALTER TABLE [dbo].[ProductTypeImport] CHECK CONSTRAINT [FK_ProductTypeImport_TypeProduct]
GO
USE [master]
GO
ALTER DATABASE [MasterPol] SET  READ_WRITE 
GO
