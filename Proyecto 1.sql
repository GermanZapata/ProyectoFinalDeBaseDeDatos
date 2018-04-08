
/* Nombre: German Junior Zapata Fuerte  Matricula: 16-SIIN-1-061 Sección: 0541 */

/* Nombre: Noriely Rodrigez Nivar       Matricula: 16-SIIN-1-158 Seccion: 0541 */

/* Nombre: Bladimir Osvaldo Martinez    Matricula: 16-SIIN-1-116 Sección: 0541 */


CREATE DATABASE [Proyecto 1]
GO
USE [Proyecto 1]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 06/04/2018 9:06:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[ClienteID] [int] NOT NULL,
	[Cliente] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 06/04/2018 9:06:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fabricante](
	[FabricanteID] [int] NOT NULL,
	[Fabricante] [varchar](50) NULL,
	[ProductoID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 06/04/2018 9:06:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[ProductoID] [int] NOT NULL,
	[Producto] [varchar](50) NULL,
	[Precio] [int] NULL,
	[FabricanteID] [int] NULL,
	[ClienteID] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (111, N'Pablo')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (112, N'Álvaro')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (113, N'David')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (114, N'Diego')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (115, N'Javier')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (116, N'Sergio')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (117, N'Martín')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (118, N'Sofía')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (119, N'Claudia')
INSERT [dbo].[Cliente] ([ClienteID], [Cliente]) VALUES (120, N'Sara')
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (10, N'Samsung', 1111)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (11, N'Apple', 1112)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (12, N'ZTE', 1113)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (13, N'Huawei', 1114)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (14, N'Lenovo', 1115)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (15, N'LG', 1116)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (16, N'Sony', 1117)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (17, N'Motorola', 1118)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (18, N'HTC', 1119)
INSERT [dbo].[Fabricante] ([FabricanteID], [Fabricante], [ProductoID]) VALUES (19, N'Black Berry', 1120)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1111, N'Samsung Galaxy S7', 15000, 10, 111)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1112, N'Iphone 6S', 25000, 11, 112)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1113, N'ZTE Nubia Z17', 12000, 12, 113)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1114, N'Huawei Mate 10 Pro', 10000, 13, 114)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1115, N'Lenovo K6', 19000, 14, 115)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1116, N'LG G5', 22000, 15, 116)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1117, N'Sony Xperia', 23000, 16, 117)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1118, N'Motorola Moto X Force', 17500, 17, 118)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1119, N'HTC DEsire 830', 14800, 18, 119)
INSERT [dbo].[Producto] ([ProductoID], [Producto], [Precio], [FabricanteID], [ClienteID]) VALUES (1120, N'Black Berry Keyone', 16000, 19, 120)
ALTER TABLE [dbo].[Fabricante]  WITH CHECK ADD  CONSTRAINT [FK_Fabricante_Producto1] FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Producto] ([ProductoID])
GO
ALTER TABLE [dbo].[Fabricante] CHECK CONSTRAINT [FK_Fabricante_Producto1]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Cliente1] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Cliente] ([ClienteID])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Cliente1]
GO
USE [master]
GO
ALTER DATABASE [Proyecto 1] SET  READ_WRITE 
GO
