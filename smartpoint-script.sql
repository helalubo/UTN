USE [smartpoint-db]
GO
/****** Object:  User [smartpoint]    Script Date: 9/4/2022 15:16:20 ******/
CREATE USER [smartpoint] FOR LOGIN [smartpoint] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [smartpoint]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [smartpoint]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [smartpoint]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [smartpoint]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [smartpoint]
GO
ALTER ROLE [db_datareader] ADD MEMBER [smartpoint]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [smartpoint]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [smartpoint]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [smartpoint]
GO
/****** Object:  Table [dbo].[facturaciones]    Script Date: 9/4/2022 15:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facturaciones](
	[id_facturacion] [bigint] IDENTITY(1,1) NOT NULL,
	[detalle] [varchar](1200) NULL,
	[id_tipoFacturacion] [int] NULL,
	[fecha] [date] NULL,
	[id_puntoVenta] [int] NULL,
	[id_tipoPago] [int] NULL,
	[total] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_facturacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 9/4/2022 15:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](255) NULL,
	[nombre] [varchar](255) NULL,
	[precioCompra] [float] NULL,
	[precioVenta] [float] NULL,
	[fecha] [date] NULL,
	[imagen] [varchar](255) NULL,
	[stock] [int] NULL,
	[id_proveedor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 9/4/2022 15:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](60) NOT NULL,
	[direccion] [varchar](120) NULL,
	[telefono] [varchar](50) NULL,
	[fecha] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 9/4/2022 15:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 9/4/2022 15:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[enabled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_roles]    Script Date: 9/4/2022 15:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_roles](
	[user_id] [int] NULL,
	[rol_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 9/4/2022 15:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[id_venta] [bigint] IDENTITY(1,1) NOT NULL,
	[id_producto] [int] NULL,
	[precioVenta] [float] NULL,
	[precioCompra] [float] NULL,
	[id_facturacion] [bigint] NULL,
	[fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[facturaciones] ON 

INSERT [dbo].[facturaciones] ([id_facturacion], [detalle], [id_tipoFacturacion], [fecha], [id_puntoVenta], [id_tipoPago], [total]) VALUES (1, N'prueba de obtencion de id factura generado desde DB', 0, CAST(N'2022-03-24' AS Date), 1, 0, 283000)
INSERT [dbo].[facturaciones] ([id_facturacion], [detalle], [id_tipoFacturacion], [fecha], [id_puntoVenta], [id_tipoPago], [total]) VALUES (2, N'prueba de obtencion de id factura generado desde DB', 0, CAST(N'2022-03-24' AS Date), 1, 0, 283000)
INSERT [dbo].[facturaciones] ([id_facturacion], [detalle], [id_tipoFacturacion], [fecha], [id_puntoVenta], [id_tipoPago], [total]) VALUES (3, N'prueba de obtencion de id factura generado desde DB', 0, CAST(N'2022-03-24' AS Date), 1, 0, 283000)
INSERT [dbo].[facturaciones] ([id_facturacion], [detalle], [id_tipoFacturacion], [fecha], [id_puntoVenta], [id_tipoPago], [total]) VALUES (4, N'prueba de obtencion de id factura generado desde DB', 0, CAST(N'2022-03-24' AS Date), 1, 0, 283000)
INSERT [dbo].[facturaciones] ([id_facturacion], [detalle], [id_tipoFacturacion], [fecha], [id_puntoVenta], [id_tipoPago], [total]) VALUES (5, N'prueba de obtencion de id factura generado desde DB', 0, CAST(N'2022-03-24' AS Date), 1, 0, 283000)
INSERT [dbo].[facturaciones] ([id_facturacion], [detalle], [id_tipoFacturacion], [fecha], [id_puntoVenta], [id_tipoPago], [total]) VALUES (6, N'prueba de obtencion de id factura generado desde DB', 0, CAST(N'2022-03-24' AS Date), 1, 0, 91000)
INSERT [dbo].[facturaciones] ([id_facturacion], [detalle], [id_tipoFacturacion], [fecha], [id_puntoVenta], [id_tipoPago], [total]) VALUES (7, N'prueba de obtencion de id factura generado desde DB', 0, CAST(N'2022-03-24' AS Date), 1, 0, 91000)
SET IDENTITY_INSERT [dbo].[facturaciones] OFF
GO
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([id_producto], [codigo], [nombre], [precioCompra], [precioVenta], [fecha], [imagen], [stock], [id_proveedor]) VALUES (1, N'xxxx', N'iphone 7', 99000, 190000, CAST(N'2022-02-08' AS Date), N'1-xxxx-iphone 7.png', 5, NULL)
INSERT [dbo].[productos] ([id_producto], [codigo], [nombre], [precioCompra], [precioVenta], [fecha], [imagen], [stock], [id_proveedor]) VALUES (2, N'nnnn', N'samsung galaxy 12', 99000, 195000, CAST(N'2022-02-08' AS Date), N'modificado.png', 2, 1)
INSERT [dbo].[productos] ([id_producto], [codigo], [nombre], [precioCompra], [precioVenta], [fecha], [imagen], [stock], [id_proveedor]) VALUES (1002, N'nnnn', N'nokia 1100', 990, 9999, CAST(N'2022-01-01' AS Date), N'sinImagen.png', 1, NULL)
INSERT [dbo].[productos] ([id_producto], [codigo], [nombre], [precioCompra], [precioVenta], [fecha], [imagen], [stock], [id_proveedor]) VALUES (1003, N'nnnn', N'motorola g5', 990, 9999, CAST(N'2022-01-01' AS Date), N'1003-nnnn-motorola g5.png', 1, NULL)
INSERT [dbo].[productos] ([id_producto], [codigo], [nombre], [precioCompra], [precioVenta], [fecha], [imagen], [stock], [id_proveedor]) VALUES (1004, N'nnnn', N'motorola g77', 990, 9999, CAST(N'2022-01-01' AS Date), N'sinImagen.png', 1, NULL)
INSERT [dbo].[productos] ([id_producto], [codigo], [nombre], [precioCompra], [precioVenta], [fecha], [imagen], [stock], [id_proveedor]) VALUES (1005, N'nnnn', N'motorola g88', 990, 9999, CAST(N'2022-01-01' AS Date), N'sinImagen.png', 1, NULL)
INSERT [dbo].[productos] ([id_producto], [codigo], [nombre], [precioCompra], [precioVenta], [fecha], [imagen], [stock], [id_proveedor]) VALUES (1006, N'nnnn', N'motorola g2222', 990, 9999, CAST(N'2022-01-01' AS Date), N'sinImagen.png', 1, NULL)
INSERT [dbo].[productos] ([id_producto], [codigo], [nombre], [precioCompra], [precioVenta], [fecha], [imagen], [stock], [id_proveedor]) VALUES (1007, N'nnnn', N'motorola mH', 990, 9999, CAST(N'2022-01-01' AS Date), N'sinImagen.png', 1, NULL)
INSERT [dbo].[productos] ([id_producto], [codigo], [nombre], [precioCompra], [precioVenta], [fecha], [imagen], [stock], [id_proveedor]) VALUES (3002, N'nnnn', N'samsung galaxy 1', 100, 1000, CAST(N'2022-03-12' AS Date), N'sinImagen.png', 1, 1)
INSERT [dbo].[productos] ([id_producto], [codigo], [nombre], [precioCompra], [precioVenta], [fecha], [imagen], [stock], [id_proveedor]) VALUES (3003, N'nnnn', N'motorola mH', 990, 9999, CAST(N'2022-01-01' AS Date), N'sinImagen.png', 1, NULL)
SET IDENTITY_INSERT [dbo].[productos] OFF
GO
SET IDENTITY_INSERT [dbo].[proveedores] ON 

INSERT [dbo].[proveedores] ([id_proveedor], [nombre], [direccion], [telefono], [fecha]) VALUES (1, N'Samsung', N'calle falsa 123', N'43033913', CAST(N'2022-03-12' AS Date))
SET IDENTITY_INSERT [dbo].[proveedores] OFF
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([id_rol], [nombre]) VALUES (1, N'admin')
INSERT [dbo].[roles] ([id_rol], [nombre]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([id_usuario], [username], [password], [enabled]) VALUES (1, N'helalubo', N'helalubo', 1)
INSERT [dbo].[usuarios] ([id_usuario], [username], [password], [enabled]) VALUES (2, N'maite', N'maite', 1)
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
INSERT [dbo].[usuarios_roles] ([user_id], [rol_id]) VALUES (1, 1)
INSERT [dbo].[usuarios_roles] ([user_id], [rol_id]) VALUES (2, 2)
GO
SET IDENTITY_INSERT [dbo].[ventas] ON 

INSERT [dbo].[ventas] ([id_venta], [id_producto], [precioVenta], [precioCompra], [id_facturacion], [fecha]) VALUES (1, 1, 999, 998, 1, CAST(N'2022-03-24' AS Date))
INSERT [dbo].[ventas] ([id_venta], [id_producto], [precioVenta], [precioCompra], [id_facturacion], [fecha]) VALUES (2, 1, 190000, 99000, 3, CAST(N'2022-03-24' AS Date))
INSERT [dbo].[ventas] ([id_venta], [id_producto], [precioVenta], [precioCompra], [id_facturacion], [fecha]) VALUES (3, 2, 195000, 99000, 3, CAST(N'2022-03-24' AS Date))
INSERT [dbo].[ventas] ([id_venta], [id_producto], [precioVenta], [precioCompra], [id_facturacion], [fecha]) VALUES (4, 2, 195000, 99000, 3, CAST(N'2022-03-24' AS Date))
INSERT [dbo].[ventas] ([id_venta], [id_producto], [precioVenta], [precioCompra], [id_facturacion], [fecha]) VALUES (5, 1, 190000, 99000, 4, CAST(N'2022-03-24' AS Date))
INSERT [dbo].[ventas] ([id_venta], [id_producto], [precioVenta], [precioCompra], [id_facturacion], [fecha]) VALUES (6, 2, 195000, 99000, 4, CAST(N'2022-03-24' AS Date))
INSERT [dbo].[ventas] ([id_venta], [id_producto], [precioVenta], [precioCompra], [id_facturacion], [fecha]) VALUES (7, 2, 195000, 99000, 4, CAST(N'2022-03-24' AS Date))
INSERT [dbo].[ventas] ([id_venta], [id_producto], [precioVenta], [precioCompra], [id_facturacion], [fecha]) VALUES (8, 1, 190000, 99000, 5, CAST(N'2022-03-24' AS Date))
INSERT [dbo].[ventas] ([id_venta], [id_producto], [precioVenta], [precioCompra], [id_facturacion], [fecha]) VALUES (9, 2, 195000, 99000, 5, CAST(N'2022-03-24' AS Date))
INSERT [dbo].[ventas] ([id_venta], [id_producto], [precioVenta], [precioCompra], [id_facturacion], [fecha]) VALUES (10, 2, 195000, 99000, 5, CAST(N'2022-03-24' AS Date))
INSERT [dbo].[ventas] ([id_venta], [id_producto], [precioVenta], [precioCompra], [id_facturacion], [fecha]) VALUES (11, 1, 190000, 99000, 6, CAST(N'2022-03-24' AS Date))
INSERT [dbo].[ventas] ([id_venta], [id_producto], [precioVenta], [precioCompra], [id_facturacion], [fecha]) VALUES (12, 1, 190000, 99000, 7, CAST(N'2022-03-24' AS Date))
SET IDENTITY_INSERT [dbo].[ventas] OFF
GO
