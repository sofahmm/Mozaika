USE [master]
GO
/****** Object:  Database [variant1Db]    Script Date: 04.06.2025 22:31:47 ******/
CREATE DATABASE [variant1Db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'variant1Db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\variant1Db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'variant1Db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\variant1Db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [variant1Db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [variant1Db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [variant1Db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [variant1Db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [variant1Db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [variant1Db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [variant1Db] SET ARITHABORT OFF 
GO
ALTER DATABASE [variant1Db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [variant1Db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [variant1Db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [variant1Db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [variant1Db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [variant1Db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [variant1Db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [variant1Db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [variant1Db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [variant1Db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [variant1Db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [variant1Db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [variant1Db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [variant1Db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [variant1Db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [variant1Db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [variant1Db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [variant1Db] SET RECOVERY FULL 
GO
ALTER DATABASE [variant1Db] SET  MULTI_USER 
GO
ALTER DATABASE [variant1Db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [variant1Db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [variant1Db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [variant1Db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [variant1Db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [variant1Db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'variant1Db', N'ON'
GO
ALTER DATABASE [variant1Db] SET QUERY_STORE = OFF
GO
USE [variant1Db]
GO
/****** Object:  Table [dbo].[Mateerial_suppliers_import]    Script Date: 04.06.2025 22:31:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mateerial_suppliers_import](
	[Номер] [float] NOT NULL,
	[Намиенование_материала] [nvarchar](255) NULL,
	[Поставщик] [nvarchar](255) NULL,
 CONSTRAINT [PK_Mateerial_suppliers_import] PRIMARY KEY CLUSTERED 
(
	[Номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material_product]    Script Date: 04.06.2025 22:31:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_product](
	[Номер_продукции] [float] NULL,
	[Номер_материала] [float] NOT NULL,
 CONSTRAINT [PK_Material_product] PRIMARY KEY CLUSTERED 
(
	[Номер_материала] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material_type_import]    Script Date: 04.06.2025 22:31:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_type_import](
	[Номер_материала] [float] NULL,
	[Тип_материала] [nvarchar](255) NOT NULL,
	[Процент_потери_сырья] [float] NULL,
 CONSTRAINT [PK_Material_type_import] PRIMARY KEY CLUSTERED 
(
	[Тип_материала] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials_import]    Script Date: 04.06.2025 22:31:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials_import](
	[Наименование_материала] [nvarchar](255) NOT NULL,
	[Тип_материала] [nvarchar](255) NULL,
	[Цена_единицы_материала] [float] NULL,
	[Количество_на_складе] [float] NULL,
	[Минимальное_количество] [float] NULL,
	[Количество_в_упаковке] [float] NULL,
	[Единица_измерения] [nvarchar](255) NULL,
 CONSTRAINT [PK_Materials_import] PRIMARY KEY CLUSTERED 
(
	[Наименование_материала] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_type_import]    Script Date: 04.06.2025 22:31:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_type_import](
	[Номер_продукта] [float] NOT NULL,
	[Тип_продукции] [nvarchar](255) NOT NULL,
	[Коэффициент_типпа_продукции] [float] NULL,
 CONSTRAINT [PK_Product_type_import] PRIMARY KEY CLUSTERED 
(
	[Номер_продукта] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers_import]    Script Date: 04.06.2025 22:31:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers_import](
	[Наименование_поставщика] [nvarchar](255) NOT NULL,
	[Тип_поставщика] [nvarchar](255) NULL,
	[ИНН] [float] NULL,
	[Рейтинг] [float] NULL,
	[Дата_начала_работы_с_поставщиком] [date] NULL,
 CONSTRAINT [PK_Suppliers_import] PRIMARY KEY CLUSTERED 
(
	[Наименование_поставщика] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (1, N'Краска-раствор', N'Арсенал')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (2, N'Каолин', N'Железногорская руда')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (3, N'Каолин', N'ВоронежРудоКомбинат')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (4, N'Стекло', N'Арсенал')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (5, N'Кварцевый песок', N'БрянскСтройресурс')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (6, N'Перлит', N'ГорТехРазработка')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (7, N'Глина', N'Белая гора')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (8, N'Кварцевый песок', N'КамчаткаСтройМинералы')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (9, N'Дегидратированная глина', N'ВоронежРудоКомбинат')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (10, N'Полевой шпат', N'Белая гора')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (11, N'Глина', N'БрянскСтройресурс')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (12, N'Порошок цветной', N'Арсенал')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (13, N'Жильный кварц', N'Горная компания')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (14, N'Полевой шпат', N'БрянскСтройресурс')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (15, N'Гидрослюда', N'ВоронежРудоКомбинат')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (16, N'Стекло', N'КамчаткаСтройМинералы')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (17, N'Полевой шпат', N'КурскРесурс')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (18, N'Монтмориллонит', N'ВоронежРудоКомбинат')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (19, N'Кварц', N'МосКарьер')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (20, N'Барий углекислый', N'Горная компания')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (21, N'Жидкое стекло', N'КурскРесурс')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (22, N'Шамот', N'Горная компания')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (23, N'Глина', N'ГорТехРазработка')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (24, N'Кварц', N'Карелия добыча')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (25, N'Гидрослюда', N'Железногорская руда')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (26, N'Перлит', N'ВоронежРудоКомбинат')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (27, N'Шамот', N'Арсенал')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (28, N'Барий углекислый', N'КамчаткаСтройМинералы')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (29, N'Бура техническая', N'КамчаткаСтройМинералы')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (30, N'Техническая сода', N'Минерал Ресурс')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (31, N'Пирофосфат натрия', N'КамчаткаСтройМинералы')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (32, N'Гидрослюда', N'Белая гора')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (33, N'Жильный кварц', N'Карелия добыча')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (34, N'Перлит', N'Смоленский добывающий комбинат')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (35, N'Кварцевый песок', N'Карелия добыча')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (36, N'Монтмориллонит', N'Белая гора')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (37, N'Краска-раствор', N'КурскРесурс')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (38, N'Стекло', N'Сапфир')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (39, N'Порошок цветной', N'КурскРесурс')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (40, N'Каолин', N'БрянскСтройресурс')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (41, N'Жидкое стекло', N'Минерал Ресурс')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (42, N'Бура техническая', N'Сапфир')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (43, N'Дегидратированная глина', N'МосКарьер')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (44, N'Бура техническая', N'Нижегородская разработка')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (45, N'Монтмориллонит', N'Железногорская руда')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (46, N'Жидкое стекло', N'Московский ХимЗавод')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (47, N'Жидкое стекло', N'Сапфир')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (48, N'Порошок цветной', N'Московский ХимЗавод')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (49, N'Порошок цветной', N'ХимБытСервис')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (50, N'Углещелочной реагент', N'Московский ХимЗавод')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (51, N'Кварц', N'Речная долина')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (52, N'Жильный кварц', N'Нижегородская разработка')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (53, N'Краска-раствор', N'Московский ХимЗавод')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (54, N'Кварц', N'Нижегородская разработка')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (55, N'Дегидратированная глина', N'Стройкомплект')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (56, N'Кварцевый песок', N'Речная долина')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (57, N'Барий углекислый', N'Сапфир')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (58, N'Шамот', N'Стройкомплект')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (59, N'Дегидратированная глина', N'Сапфир')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (60, N'Гидрослюда', N'Тульский обрабатывающий завод ')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (61, N'Пирофосфат натрия', N'Сапфир')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (62, N'Перлит', N'Тульский обрабатывающий завод ')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (63, N'Техническая сода', N'Сапфир')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (64, N'Глина', N'Смоленский добывающий комбинат')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (65, N'Техническая сода', N'Московский ХимЗавод')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (66, N'Монтмориллонит', N'Смоленский добывающий комбинат')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (67, N'Углещелочной реагент', N'КурскРесурс')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (68, N'Техническая сода', N'ХимБытСервис')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (69, N'Бура техническая', N'Стройкомплект')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (70, N'Пирофосфат натрия', N'Тульский обрабатывающий завод ')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (71, N'Жильный кварц', N'Смоленский добывающий комбинат')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (72, N'Стекло', N'Стройкомплект')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (73, N'Углещелочной реагент', N'ХимБытСервис')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (74, N'Барий углекислый', N'Тульский обрабатывающий завод ')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (75, N'Пирофосфат натрия', N'ХимБытСервис')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (76, N'Каолин', N'Тульский обрабатывающий завод ')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (77, N'Шамот', N'МосКарьер')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (78, N'Углещелочной реагент', N'Тульский обрабатывающий завод ')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (79, N'Краска-раствор', N'ХимБытСервис')
INSERT [dbo].[Mateerial_suppliers_import] ([Номер], [Намиенование_материала], [Поставщик]) VALUES (80, N'Полевой шпат', N'Смоленский добывающий комбинат')
GO
INSERT [dbo].[Material_product] ([Номер_продукции], [Номер_материала]) VALUES (1, 1)
INSERT [dbo].[Material_product] ([Номер_продукции], [Номер_материала]) VALUES (2, 2)
INSERT [dbo].[Material_product] ([Номер_продукции], [Номер_материала]) VALUES (3, 3)
INSERT [dbo].[Material_product] ([Номер_продукции], [Номер_материала]) VALUES (4, 4)
INSERT [dbo].[Material_product] ([Номер_продукции], [Номер_материала]) VALUES (1, 5)
GO
INSERT [dbo].[Material_type_import] ([Номер_материала], [Тип_материала], [Процент_потери_сырья]) VALUES (4, N'Глазурь', 0.3)
INSERT [dbo].[Material_type_import] ([Номер_материала], [Тип_материала], [Процент_потери_сырья]) VALUES (2, N'Добавка', 0.2)
INSERT [dbo].[Material_type_import] ([Номер_материала], [Тип_материала], [Процент_потери_сырья]) VALUES (5, N'Пигмент', 0.25)
INSERT [dbo].[Material_type_import] ([Номер_материала], [Тип_материала], [Процент_потери_сырья]) VALUES (1, N'Пластичные материалы', 0.12)
INSERT [dbo].[Material_type_import] ([Номер_материала], [Тип_материала], [Процент_потери_сырья]) VALUES (3, N'Электролит', 0.15)
GO
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'eeeee', N'Добавка', 2, 2, 2, 2, N'eeeeeeeeeeeeeeee')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Барий углекислый', N'Глазурь', 303.64, 340, 1500, 25, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Бура техническая', N'Глазурь', 125.99, 165, 1300, 25, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Гидрослюда', N'Пластичные материалы', 17.2, 2147, 3500, 25, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Глина', N'Пластичные материалы', 15.29, 1570, 5500, 30, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Дегидратированная глина', N'Добавка', 21.95, 3000, 2500, 20, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Жидкое стекло', N'Электролит', 76.59, 500, 1500, 15, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Жильный кварц', N'Добавка', 18.6, 2556, 1600, 25, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Каолин', N'Пластичные материалы', 18.2, 1030, 3500, 25, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Кварц', N'Глазурь', 375.96, 1500, 2500, 10, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Кварцевый песок', N'Добавка', 4.29, 3000, 1600, 50, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Краска-раствор', N'Пигмент', 200.9, 1496, 2500, 5, N'л')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Монтмориллонит', N'Пластичные материалы', 17.67, 3000, 3000, 30, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Перлит', N'Добавка', 13.99, 150, 1000, 50, N'л')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Пирофосфат натрия', N'Электролит', 700.99, 356, 1200, 25, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Полевой шпат', N'Глазурь', 15.99, 750, 1500, 100, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Порошок цветной', N'Пигмент', 84.39, 511, 1750, 25, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Стекло', N'Добавка', 2.4, 3000, 1500, 500, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Техническая сода', N'Электролит', 54.55, 1200, 1500, 25, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Углещелочной реагент', N'Электролит', 3.45, 450, 1100, 25, N'кг')
INSERT [dbo].[Materials_import] ([Наименование_материала], [Тип_материала], [Цена_единицы_материала], [Количество_на_складе], [Минимальное_количество], [Количество_в_упаковке], [Единица_измерения]) VALUES (N'Шамот', N'Добавка', 27.5, 2300, 1960, 20, N'кг')
GO
INSERT [dbo].[Product_type_import] ([Номер_продукта], [Тип_продукции], [Коэффициент_типпа_продукции]) VALUES (1, N'Тип продукции 1', 1.2)
INSERT [dbo].[Product_type_import] ([Номер_продукта], [Тип_продукции], [Коэффициент_типпа_продукции]) VALUES (2, N'Тип продукции 2', 8.59)
INSERT [dbo].[Product_type_import] ([Номер_продукта], [Тип_продукции], [Коэффициент_типпа_продукции]) VALUES (3, N'Тип продукции 3', 3.45)
INSERT [dbo].[Product_type_import] ([Номер_продукта], [Тип_продукции], [Коэффициент_типпа_продукции]) VALUES (4, N'Тип продукции 4', 5.6)
GO
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'Арсенал', N'ЗАО', 3961234561, 5, CAST(N'2010-11-25' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'Белая гора', N'ООО', 4318170454, 8, CAST(N'2019-05-27' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'БрянскСтройресурс', N'ЗАО', 9432455179, 8, CAST(N'2015-12-20' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'ВоронежРудоКомбинат', N'ОАО', 3532367439, 8, CAST(N'2023-11-11' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'Горная компания', N'ЗАО', 2262431140, 3, CAST(N'2020-12-22' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'ГорТехРазработка', N'ПАО', 6119144874, 9, CAST(N'2021-12-27' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'Железногорская руда', N'ООО', 8430391035, 7, CAST(N'2016-12-23' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'КамчаткаСтройМинералы', N'ЗАО', 9600275878, 7, CAST(N'2016-12-20' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'Карелия добыча', N'ПАО', 9037040523, 6, CAST(N'2017-03-09' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'КурскРесурс', N'ЗАО', 9032455179, 4, CAST(N'2021-07-23' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'Минерал Ресурс', N'ООО', 4155215346, 7, CAST(N'2015-05-22' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'МосКарьер', N'ПАО', 4159215346, 2, CAST(N'2012-07-07' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'Московский ХимЗавод', N'ПАО', 6221520857, 4, CAST(N'2015-05-07' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'Нижегородская разработка', N'ОАО', 3776671267, 9, CAST(N'2016-05-23' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'Речная долина', N'ОАО', 7447864518, 8, CAST(N'2015-06-25' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'Сапфир', N'ОАО', 1122170258, 3, CAST(N'2022-04-10' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'Смоленский добывающий комбинат', N'ОАО', 2362431140, 3, CAST(N'2018-11-23' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'Стройкомплект', N'ЗАО', 7803888520, 7, CAST(N'2017-09-13' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'Тульский обрабатывающий завод ', N'ООО', 7687851800, 7, CAST(N'2015-06-16' AS Date))
INSERT [dbo].[Suppliers_import] ([Наименование_поставщика], [Тип_поставщика], [ИНН], [Рейтинг], [Дата_начала_работы_с_поставщиком]) VALUES (N'ХимБытСервис', N'ПАО', 8355114917, 5, CAST(N'2022-03-13' AS Date))
GO
ALTER TABLE [dbo].[Mateerial_suppliers_import]  WITH CHECK ADD  CONSTRAINT [FK_Mateerial_suppliers_import_Materials_import] FOREIGN KEY([Намиенование_материала])
REFERENCES [dbo].[Materials_import] ([Наименование_материала])
GO
ALTER TABLE [dbo].[Mateerial_suppliers_import] CHECK CONSTRAINT [FK_Mateerial_suppliers_import_Materials_import]
GO
ALTER TABLE [dbo].[Mateerial_suppliers_import]  WITH CHECK ADD  CONSTRAINT [FK_Mateerial_suppliers_import_Suppliers_import] FOREIGN KEY([Поставщик])
REFERENCES [dbo].[Suppliers_import] ([Наименование_поставщика])
GO
ALTER TABLE [dbo].[Mateerial_suppliers_import] CHECK CONSTRAINT [FK_Mateerial_suppliers_import_Suppliers_import]
GO
ALTER TABLE [dbo].[Material_product]  WITH CHECK ADD  CONSTRAINT [FK_Material_product_Product_type_import] FOREIGN KEY([Номер_продукции])
REFERENCES [dbo].[Product_type_import] ([Номер_продукта])
GO
ALTER TABLE [dbo].[Material_product] CHECK CONSTRAINT [FK_Material_product_Product_type_import]
GO
ALTER TABLE [dbo].[Material_type_import]  WITH CHECK ADD  CONSTRAINT [FK_Material_type_import_Material_product] FOREIGN KEY([Номер_материала])
REFERENCES [dbo].[Material_product] ([Номер_материала])
GO
ALTER TABLE [dbo].[Material_type_import] CHECK CONSTRAINT [FK_Material_type_import_Material_product]
GO
ALTER TABLE [dbo].[Materials_import]  WITH CHECK ADD  CONSTRAINT [FK_Materials_import_Material_type_import] FOREIGN KEY([Тип_материала])
REFERENCES [dbo].[Material_type_import] ([Тип_материала])
GO
ALTER TABLE [dbo].[Materials_import] CHECK CONSTRAINT [FK_Materials_import_Material_type_import]
GO
USE [master]
GO
ALTER DATABASE [variant1Db] SET  READ_WRITE 
GO
