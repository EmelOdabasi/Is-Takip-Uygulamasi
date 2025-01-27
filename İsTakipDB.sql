USE [master]
GO
/****** Object:  Database [İsTakipDB]    Script Date: 15.01.2025 22:09:38 ******/
CREATE DATABASE [İsTakipDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'İsTakipDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\İsTakipDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'İsTakipDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\İsTakipDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [İsTakipDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [İsTakipDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [İsTakipDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [İsTakipDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [İsTakipDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [İsTakipDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [İsTakipDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [İsTakipDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [İsTakipDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [İsTakipDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [İsTakipDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [İsTakipDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [İsTakipDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [İsTakipDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [İsTakipDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [İsTakipDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [İsTakipDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [İsTakipDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [İsTakipDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [İsTakipDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [İsTakipDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [İsTakipDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [İsTakipDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [İsTakipDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [İsTakipDB] SET RECOVERY FULL 
GO
ALTER DATABASE [İsTakipDB] SET  MULTI_USER 
GO
ALTER DATABASE [İsTakipDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [İsTakipDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [İsTakipDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [İsTakipDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [İsTakipDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [İsTakipDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'İsTakipDB', N'ON'
GO
ALTER DATABASE [İsTakipDB] SET QUERY_STORE = OFF
GO
USE [İsTakipDB]
GO
/****** Object:  Table [dbo].[Birimler]    Script Date: 15.01.2025 22:09:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Birimler](
	[birimId] [int] IDENTITY(1,1) NOT NULL,
	[birimAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_Birimler] PRIMARY KEY CLUSTERED 
(
	[birimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Durumlar]    Script Date: 15.01.2025 22:09:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Durumlar](
	[durumId] [int] IDENTITY(1,1) NOT NULL,
	[durumAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_Durumlar] PRIMARY KEY CLUSTERED 
(
	[durumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Isler]    Script Date: 15.01.2025 22:09:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Isler](
	[isId] [int] IDENTITY(1,1) NOT NULL,
	[isBaslik] [nvarchar](max) NULL,
	[isAciklama] [nvarchar](max) NULL,
	[isPersonelId] [int] NULL,
	[iletilenTarih] [datetime] NULL,
	[yapilanTarih] [datetime] NULL,
	[isDurumId] [int] NULL,
	[isYorum] [nvarchar](max) NULL,
	[isOkunma] [bit] NULL,
 CONSTRAINT [PK_Isler] PRIMARY KEY CLUSTERED 
(
	[isId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 15.01.2025 22:09:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[personelId] [int] IDENTITY(1,1) NOT NULL,
	[personelAdSoyad] [nvarchar](50) NULL,
	[personelKullaniciAd] [nvarchar](50) NULL,
	[personelParola] [nvarchar](50) NULL,
	[personelBirimId] [int] NULL,
	[personelYetkiTurId] [int] NULL,
 CONSTRAINT [PK_Personeller] PRIMARY KEY CLUSTERED 
(
	[personelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YetkiTurler]    Script Date: 15.01.2025 22:09:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YetkiTurler](
	[yetkiTurId] [int] IDENTITY(1,1) NOT NULL,
	[yetkiTurAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_YetkiTurler] PRIMARY KEY CLUSTERED 
(
	[yetkiTurId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Birimler] ON 

INSERT [dbo].[Birimler] ([birimId], [birimAd]) VALUES (1, N'Muhasebe')
INSERT [dbo].[Birimler] ([birimId], [birimAd]) VALUES (2, N'Bilgi İşlem')
SET IDENTITY_INSERT [dbo].[Birimler] OFF
GO
SET IDENTITY_INSERT [dbo].[Durumlar] ON 

INSERT [dbo].[Durumlar] ([durumId], [durumAd]) VALUES (1, N'Yapılıyor')
INSERT [dbo].[Durumlar] ([durumId], [durumAd]) VALUES (2, N'Yapıldı')
SET IDENTITY_INSERT [dbo].[Durumlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Isler] ON 

INSERT [dbo].[Isler] ([isId], [isBaslik], [isAciklama], [isPersonelId], [iletilenTarih], [yapilanTarih], [isDurumId], [isYorum], [isOkunma]) VALUES (7, N'Aylık Kapanış İşlemleri', N'Cari ayın muhasebe kayıtlarının tamamlanması ve kapanış işlemlerinin yapılması gerekmektedir. Bu iş kapsamında banka mutabakatlarının yapılması, faturaların işlenmesi, raporların hazırlanması ve genel muhasebe kayıtlarının kontrol edilmesi yer almaktadır', 7, CAST(N'2025-01-11T19:40:30.713' AS DateTime), NULL, 1, NULL, 0)
INSERT [dbo].[Isler] ([isId], [isBaslik], [isAciklama], [isPersonelId], [iletilenTarih], [yapilanTarih], [isDurumId], [isYorum], [isOkunma]) VALUES (8, N'Tedarikçi Ödemelerinin Hazırlanması', N'Bu ayki tedarikçi ödemelerinin listesinin hazırlanması ve ödemelerin gerçekleştirilmesi gerekmektedir. Ödemelerin doğruluğundan ve zamanında yapılmasından sorumlu olacaksınız. Lütfen ilgili dosyasını inceleyiniz ve [11.01.2025]''e kadar tamamlayınız.', 7, CAST(N'2025-01-11T19:41:28.047' AS DateTime), NULL, 1, NULL, 0)
INSERT [dbo].[Isler] ([isId], [isBaslik], [isAciklama], [isPersonelId], [iletilenTarih], [yapilanTarih], [isDurumId], [isYorum], [isOkunma]) VALUES (9, N'Kullanıcı Hesaplarının Oluşturulması', N'Yeni işe başlayan personel için ilgili dosyasında belirtilen kullanıcı hesaplarının oluşturulması ve gerekli yetkilerin atanması gerekmektedir. Hesaplar 11.01.2025''e kadar aktif hale getirilmelidir.', 9, CAST(N'2025-01-11T19:45:38.887' AS DateTime), CAST(N'2025-01-11T19:47:14.913' AS DateTime), 2, N'DENEME', 1)
SET IDENTITY_INSERT [dbo].[Isler] OFF
GO
SET IDENTITY_INSERT [dbo].[Personeller] ON 

INSERT [dbo].[Personeller] ([personelId], [personelAdSoyad], [personelKullaniciAd], [personelParola], [personelBirimId], [personelYetkiTurId]) VALUES (7, N'efe', N'efe', N'test1234', 1, 2)
INSERT [dbo].[Personeller] ([personelId], [personelAdSoyad], [personelKullaniciAd], [personelParola], [personelBirimId], [personelYetkiTurId]) VALUES (8, N'defne', N'defne', N'test1234', 1, 1)
INSERT [dbo].[Personeller] ([personelId], [personelAdSoyad], [personelKullaniciAd], [personelParola], [personelBirimId], [personelYetkiTurId]) VALUES (9, N'elif', N'elif', N'test1234', 2, 2)
INSERT [dbo].[Personeller] ([personelId], [personelAdSoyad], [personelKullaniciAd], [personelParola], [personelBirimId], [personelYetkiTurId]) VALUES (10, N'deniz', N'deniz', N'test1234', 2, 1)
SET IDENTITY_INSERT [dbo].[Personeller] OFF
GO
SET IDENTITY_INSERT [dbo].[YetkiTurler] ON 

INSERT [dbo].[YetkiTurler] ([yetkiTurId], [yetkiTurAd]) VALUES (1, N'Yönetici')
INSERT [dbo].[YetkiTurler] ([yetkiTurId], [yetkiTurAd]) VALUES (2, N'Çalışan')
SET IDENTITY_INSERT [dbo].[YetkiTurler] OFF
GO
ALTER TABLE [dbo].[Isler]  WITH CHECK ADD  CONSTRAINT [FK_Isler_Durumlar] FOREIGN KEY([isDurumId])
REFERENCES [dbo].[Durumlar] ([durumId])
GO
ALTER TABLE [dbo].[Isler] CHECK CONSTRAINT [FK_Isler_Durumlar]
GO
ALTER TABLE [dbo].[Isler]  WITH CHECK ADD  CONSTRAINT [FK_Isler_Personeller] FOREIGN KEY([isPersonelId])
REFERENCES [dbo].[Personeller] ([personelId])
GO
ALTER TABLE [dbo].[Isler] CHECK CONSTRAINT [FK_Isler_Personeller]
GO
ALTER TABLE [dbo].[Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Personeller_Birimler] FOREIGN KEY([personelBirimId])
REFERENCES [dbo].[Birimler] ([birimId])
GO
ALTER TABLE [dbo].[Personeller] CHECK CONSTRAINT [FK_Personeller_Birimler]
GO
ALTER TABLE [dbo].[Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Personeller_YetkiTurler] FOREIGN KEY([personelYetkiTurId])
REFERENCES [dbo].[YetkiTurler] ([yetkiTurId])
GO
ALTER TABLE [dbo].[Personeller] CHECK CONSTRAINT [FK_Personeller_YetkiTurler]
GO
USE [master]
GO
ALTER DATABASE [İsTakipDB] SET  READ_WRITE 
GO
