--USE [master]
--GO
--CREATE DATABASE [Distribuidora_v3] 
--GO
USE [Distribuidora_v3]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perfiles](
	[id_Perfil] [int] NOT NULL,
	[descripcion] [varchar](30) NOT NULL,
	[borrado] [bit] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Perfiles] ([id_Perfil], [descripcion], [borrado]) VALUES (1, N'Administrador', 0)
INSERT [dbo].[Perfiles] ([id_Perfil], [descripcion], [borrado]) VALUES (2, N'Tester', 0)
INSERT [dbo].[Perfiles] ([id_Perfil], [descripcion], [borrado]) VALUES (3, N'Desarrollador', 0)
INSERT [dbo].[Perfiles] ([id_Perfil], [descripcion], [borrado]) VALUES (4, N'Responsable de Reportes', 0)
/****** Object:  Table [dbo].[EstadoProveedor]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoProveedor](
	[id_estadoP] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estadoP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoProveedor] ON
INSERT [dbo].[EstadoProveedor] ([id_estadoP], [descripcion], [borrado]) VALUES (1, N'En Alta', 0)
INSERT [dbo].[EstadoProveedor] ([id_estadoP], [descripcion], [borrado]) VALUES (2, N'De Baja', 0)
SET IDENTITY_INSERT [dbo].[EstadoProveedor] OFF
/****** Object:  Table [dbo].[EstadoCliente]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoCliente](
	[id_estadoC] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estadoC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoCliente] ON
INSERT [dbo].[EstadoCliente] ([id_estadoC], [descripcion], [borrado]) VALUES (1, N'En Alta', 0)
INSERT [dbo].[EstadoCliente] ([id_estadoC], [descripcion], [borrado]) VALUES (2, N'De Baja', 0)
SET IDENTITY_INSERT [dbo].[EstadoCliente] OFF
/****** Object:  Table [dbo].[Usuarios]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[n_Usuario] [varchar](30) NOT NULL,
	[password] [varchar](20) NULL,
	[email] [varchar](40) NULL,
	[id_Perfil] [int] NULL,
	[estado] [char](1) NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id_Usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON
INSERT [dbo].[Usuarios] ([id_Usuario], [n_Usuario], [password], [email], [id_Perfil], [estado], [borrado]) VALUES (1, N'Admin', N'123', N'admin@rf.com', 1, N'S', 0)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
/****** Object:  Table [dbo].[TipoProveedor]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoProveedor](
	[id_tipoP] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipoP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoProveedor] ON
INSERT [dbo].[TipoProveedor] ([id_tipoP], [descripcion], [borrado]) VALUES (1, N'Mayorista', 0)
INSERT [dbo].[TipoProveedor] ([id_tipoP], [descripcion], [borrado]) VALUES (2, N'Minorista', 0)
INSERT [dbo].[TipoProveedor] ([id_tipoP], [descripcion], [borrado]) VALUES (3, N'Productor', 0)
SET IDENTITY_INSERT [dbo].[TipoProveedor] OFF
/****** Object:  Table [dbo].[TipoFactura]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoFactura](
	[id_tipoFactura] [char](1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipoFactura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TipoFactura] ([id_tipoFactura], [descripcion], [borrado]) VALUES (N'A', N'Factura del tipo A', 0)
INSERT [dbo].[TipoFactura] ([id_tipoFactura], [descripcion], [borrado]) VALUES (N'B', N'Factura del tipo B', 0)
INSERT [dbo].[TipoFactura] ([id_tipoFactura], [descripcion], [borrado]) VALUES (N'C', N'Factura del tipo C', 0)
/****** Object:  Table [dbo].[TipoCliente]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoCliente](
	[id_tipoC] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipoC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoCliente] ON
INSERT [dbo].[TipoCliente] ([id_tipoC], [descripcion], [borrado]) VALUES (1, N'Mayorista', 0)
INSERT [dbo].[TipoCliente] ([id_tipoC], [descripcion], [borrado]) VALUES (2, N'Minorista', 0)
INSERT [dbo].[TipoCliente] ([id_tipoC], [descripcion], [borrado]) VALUES (3, N'Consumidor', 0)
SET IDENTITY_INSERT [dbo].[TipoCliente] OFF
/****** Object:  Table [dbo].[Ciudades]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciudades](
	[id_ciudad] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_ciudad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Ciudades] ON
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [borrado]) VALUES (1, N'Córdoba', 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [borrado]) VALUES (2, N'Jesús María', 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [borrado]) VALUES (3, N'Carlos Paz', 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [borrado]) VALUES (4, N'Cosquin', 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [borrado]) VALUES (5, N'Arroyito', 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [borrado]) VALUES (6, N'Río Cuarto', 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [borrado]) VALUES (7, N'Río Tercero', 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [borrado]) VALUES (8, N'Villa María', 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [borrado]) VALUES (9, N'Alta Gracia', 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [borrado]) VALUES (10, N'San Francisco', 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [borrado]) VALUES (11, N'Bell-Ville', 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [borrado]) VALUES (12, N'La Falda', 0)
INSERT [dbo].[Ciudades] ([id_ciudad], [nombre], [borrado]) VALUES (13, N'La Calera', 0)
SET IDENTITY_INSERT [dbo].[Ciudades] OFF
/****** Object:  Table [dbo].[Categorias]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categorias](
	[id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON
INSERT [dbo].[Categorias] ([id_categoria], [descripcion], [borrado]) VALUES (1, N'Suplementos dietarios', 0)
INSERT [dbo].[Categorias] ([id_categoria], [descripcion], [borrado]) VALUES (2, N'Alimentos para celíacos', 0)
INSERT [dbo].[Categorias] ([id_categoria], [descripcion], [borrado]) VALUES (3, N'Alimentos orgánicos', 0)
INSERT [dbo].[Categorias] ([id_categoria], [descripcion], [borrado]) VALUES (4, N'Hierbas Medicinales', 0)
INSERT [dbo].[Categorias] ([id_categoria], [descripcion], [borrado]) VALUES (5, N'Alimentos dietéticos', 0)
SET IDENTITY_INSERT [dbo].[Categorias] OFF
/****** Object:  Table [dbo].[Barrios]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Barrios](
	[id_barrio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ciudad] [int] NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Barrios] ON
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (1, N'Alberdi', 1, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (2, N'Nueva Cordoba', 1, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (3, N'Centro', 1, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (4, N'Junior', 1, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (5, N'Gral Paz', 1, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (6, N'Alta Córdoba', 1, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (7, N'Talleres Este', 1, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (8, N'Talleres Oeste', 1, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (9, N'Villa Esquiú', 1, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (10, N'Yofre Norte', 1, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (11, N'Centro', 2, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (12, N'Barrancas', 2, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (13, N'Pueblo Nuevo', 2, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (14, N'Centro', 3, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (15, N'La Cuesta', 3, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (16, N'Costa Azul Sur', 3, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (17, N'Altos de las Vertientes', 3, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (18, N'Villa del Lago', 3, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (19, N'Centro', 4, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (20, N'Cumbre Azul', 4, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (21, N'Pan de Azucar', 4, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (22, N'Alto Mieres', 4, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (23, N'Yacanto', 5, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (24, N'Centro', 5, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (25, N'Los Reartes', 5, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (26, N'San Javier', 5, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (27, N'Centro', 6, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (28, N'Banda Norte', 6, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (29, N'Abilene', 6, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (30, N'Centro', 7, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (31, N'Golf Club', 7, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (32, N'Las Quintas', 7, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (33, N'Centro', 8, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (34, N'Obrero', 8, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (35, N'Centro', 9, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (36, N'1° de Mayo', 9, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (37, N'Parque del Virrey', 9, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (38, N'Centro', 10, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (39, N'Las Rosas', 10, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (40, N'Maipú', 10, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (41, N'Centro', 11, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (42, N'El Prado', 11, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (43, N'Santa Rosa', 12, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (44, N'Valle Verde', 12, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (45, N'Centro', 13, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (46, N'Stoecklin', 13, 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [ciudad], [borrado]) VALUES (47, N'Villa Los Paraísos', 13, 0)
SET IDENTITY_INSERT [dbo].[Barrios] OFF
/****** Object:  Table [dbo].[Clientes]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[cuit] [varchar](13) NULL,
	[nombre_local] [varchar](50) NULL,
	[nombre_cliente] [varchar](50) NOT NULL,
	[domicilio_calle] [varchar](50) NOT NULL,
	[domicilio_numero] [int] NOT NULL,
	[telefono] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[fecha_registro] [date] NULL,
	[barrio] [int] NULL,
	[tipo_cliente] [int] NULL,
	[estado_cliente] [int] NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [nombre_local], [nombre_cliente], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_cliente], [estado_cliente], [borrado]) VALUES (1, N'30-50108624-6', N'Pato Azul', N'Arturo Viñas', N'San Martín', 788, N'0351-4514753', N'patoazul@gmail.com', CAST(0x18400B00 AS Date), 1, 1, 1, 0)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [nombre_local], [nombre_cliente], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_cliente], [estado_cliente], [borrado]) VALUES (2, N'30-66916066-2', N'Vida Sana', N'Maria Vegas', N'Oncativo', 1454, N'0351-4518013', N'vidasanaproductos@gmail.com', CAST(0x233F0B00 AS Date), 2, 1, 1, 0)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [nombre_local], [nombre_cliente], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_cliente], [estado_cliente], [borrado]) VALUES (3, N'30-67867622-1', N'Amanecer', N'Esmeralda Di Pietro', N'Santa Fé', 5120, N'0351-159913445', N'dipietroventa@gmail.com', CAST(0x293D0B00 AS Date), 3, 3, 1, 0)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [nombre_local], [nombre_cliente], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_cliente], [estado_cliente], [borrado]) VALUES (4, N'30-71070556-5', N'Dietetica Anahi', N'Anahi Sosa', N'Perón', 1157, N'0351-450598', N'psosaadietetica@gmail.com', CAST(0x343E0B00 AS Date), 5, 1, 1, 0)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [nombre_local], [nombre_cliente], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_cliente], [estado_cliente], [borrado]) VALUES (5, N'30-70908678-9', N'Holy Seed', N'Rosa Zabala', N'San Lorenzo', 510, N'0351-4587009', N'holyseedmoon@gmail.com', CAST(0x013F0B00 AS Date), 4, 2, 1, 0)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [nombre_local], [nombre_cliente], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_cliente], [estado_cliente], [borrado]) VALUES (6, N'30-68537634-9', N'Salud Hoy', N'Dario Brites', N'Av. Pueyrredón', 985, N'0351-15145805', N'vidasaanainsumos@gmail.com', CAST(0x013F0B00 AS Date), 21, 2, 1, 0)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [nombre_local], [nombre_cliente], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_cliente], [estado_cliente], [borrado]) VALUES (7, NULL, N'Dietetica San Lorenzo', N'Sofía Meinas', N'Perú', 320, N'0351-4519772', N'dieteticasanlorenzo@gmail.com', CAST(0x653F0B00 AS Date), 25, 2, 1, 0)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [nombre_local], [nombre_cliente], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_cliente], [estado_cliente], [borrado]) VALUES (8, NULL, N'Mundo Salud', N'Josefina Ariza', N'Independiente', 1828, N'0351-15360028', N'mundosalud_josef@gmail.com', CAST(0x793F0B00 AS Date), 4, 1, 1, 0)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [nombre_local], [nombre_cliente], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_cliente], [estado_cliente], [borrado]) VALUES (9, NULL, N'Comunidad Crecer', N'Thom Yorke', N'Obispo Trejo', 570, N'0351-4588755', N'saludcomunidad_crecer@gmail.com', CAST(0xFC3D0B00 AS Date), 10, 3, 1, 0)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [nombre_local], [nombre_cliente], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_cliente], [estado_cliente], [borrado]) VALUES (10, NULL, N'Patagonia', N'Camila Maldonado', N'Entre Rios', 386, N'0351-4598800', N'patagonia_dietetica@gmail.com', CAST(0xB63D0B00 AS Date), 7, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Clientes] OFF
/****** Object:  Table [dbo].[Proveedores]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[id_proveedor] [int] IDENTITY(1,1) NOT NULL,
	[cuit] [varchar](13) NULL,
	[nombre_local] [varchar](50) NULL,
	[nombre_proveedor] [varchar](50) NOT NULL,
	[domicilio_calle] [varchar](50) NOT NULL,
	[domicilio_numero] [int] NOT NULL,
	[telefono] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[fecha_registro] [date] NULL,
	[barrio] [int] NULL,
	[tipo_proveedor] [int] NULL,
	[estado_proveedor] [int] NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_proveedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedores] ON
INSERT [dbo].[Proveedores] ([id_proveedor], [cuit], [nombre_local], [nombre_proveedor], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_proveedor], [estado_proveedor], [borrado]) VALUES (1, N'32-25749163-6', N'Herboeste', N'Juan Muriega', N'Av. Juan B. Justo', 364, N'03532-42541', N'info@herboeste.com.ar', CAST(0x50400B00 AS Date), 13, 1, 1, 0)
INSERT [dbo].[Proveedores] ([id_proveedor], [cuit], [nombre_local], [nombre_proveedor], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_proveedor], [estado_proveedor], [borrado]) VALUES (2, N'35-24987632-1', N'Bio-Salud', N'Ernesto Suazo', N'Bv. Los Alemanes', 2345, N'3543-425147', N'ventas@bio-salud.com.ar', CAST(0x50400B00 AS Date), 7, 1, 1, 0)
INSERT [dbo].[Proveedores] ([id_proveedor], [cuit], [nombre_local], [nombre_proveedor], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_proveedor], [estado_proveedor], [borrado]) VALUES (3, N'34-85796424-5', N'Hierbas Guiral', N'Josefina Sábato', N'Bv. San Juan', 234, N'0351-4245588', N'ventas@guiral.com.ar', CAST(0x50400B00 AS Date), 2, 2, 1, 0)
INSERT [dbo].[Proveedores] ([id_proveedor], [cuit], [nombre_local], [nombre_proveedor], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_proveedor], [estado_proveedor], [borrado]) VALUES (4, N'36-24579654-4', N'Hierbas Suquia', N'Luis Herrera', N'Crisol', 1234, N'03543-425687', N'info@hierbassuquia.com.ar', CAST(0x50400B00 AS Date), 14, 3, 1, 0)
INSERT [dbo].[Proveedores] ([id_proveedor], [cuit], [nombre_local], [nombre_proveedor], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_proveedor], [estado_proveedor], [borrado]) VALUES (5, N'37-12587963-2', N'Verde Menta', N'Ezequiel Carrizo', N'Obispo Salguero', 456, N'0351-4268754', N'info@v-menta.com.ar', CAST(0x50400B00 AS Date), 5, 1, 1, 0)
INSERT [dbo].[Proveedores] ([id_proveedor], [cuit], [nombre_local], [nombre_proveedor], [domicilio_calle], [domicilio_numero], [telefono], [email], [fecha_registro], [barrio], [tipo_proveedor], [estado_proveedor], [borrado]) VALUES (6, N'31-21246635-7', N'Granja del Centro', N'Carla Ozán', N'Isabel La Católica', 345, N'0351-4578962', N'ventas@granjadelcentro.com.ar', CAST(0x50400B00 AS Date), 6, 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
/****** Object:  Table [dbo].[Productos]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[unidad] [varchar](10) NULL,
	[fecha_registro] [date] NULL,
	[categoria] [int] NULL,
	[proveedor] [int] NULL,
	[precio] [decimal](10, 2) NOT NULL,
	[stock] [int] NOT NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (1, N'Peperina', N'1 Kg', CAST(0x50400B00 AS Date), 4, 3, CAST(643.54 AS Decimal(10, 2)), 123, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (2, N'Poleo', N'1 Kg', CAST(0x50400B00 AS Date), 4, 5, CAST(339.93 AS Decimal(10, 2)), 223, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (3, N'Palo Amarillo', N'1 Kg', CAST(0x50400B00 AS Date), 4, 6, CAST(189.50 AS Decimal(10, 2)), 10, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (4, N'Jarilla', N'1 Kg', CAST(0x50400B00 AS Date), 4, 5, CAST(175.90 AS Decimal(10, 2)), 62, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (5, N'Incayuyo', N'1 Kg', CAST(0x50400B00 AS Date), 4, 6, CAST(542.57 AS Decimal(10, 2)), 100, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (6, N'Té de Burro', N'1 Kg', CAST(0x50400B00 AS Date), 4, 1, CAST(242.56 AS Decimal(10, 2)), 104, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (7, N'Vitamina C Sabor Naranja', N'Sobre', CAST(0x50400B00 AS Date), 1, 1, CAST(12.48 AS Decimal(10, 2)), 194, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (8, N'Herbaccion Ginkgo Forte', N'30 Comp.', CAST(0x50400B00 AS Date), 1, 4, CAST(167.06 AS Decimal(10, 2)), 0, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (9, N'Aceite de Hígado de Bacalo', N'150 cc.', CAST(0x50400B00 AS Date), 1, 2, CAST(290.20 AS Decimal(10, 2)), 12, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (10, N'Magnesio 400 Gold Fish', N'30 Comp.', CAST(0x50400B00 AS Date), 1, 6, CAST(114.81 AS Decimal(10, 2)), 192, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (11, N'Fideos Sin Gluten', N'500 gr.', CAST(0x50400B00 AS Date), 2, 2, CAST(68.44 AS Decimal(10, 2)), 85, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (13, N'Barra de Cereal', N'20 unid.', CAST(0x50400B00 AS Date), 2, 6, CAST(579.35 AS Decimal(10, 2)), 190, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (14, N'Azucar Rubia Orgánica', N'500 gr.', CAST(0x50400B00 AS Date), 3, 1, CAST(52.45 AS Decimal(10, 2)), 100, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (15, N'Polenta Orgánica', N'500 gr.', CAST(0x50400B00 AS Date), 3, 5, CAST(33.41 AS Decimal(10, 2)), 54, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (16, N'Dulce de Leche', N'460 gr.', CAST(0x50400B00 AS Date), 5, 1, CAST(117.83 AS Decimal(10, 2)), 79, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (17, N'Salsa de Soja', N'1 L.', CAST(0x50400B00 AS Date), 5, 3, CAST(110.40 AS Decimal(10, 2)), 62, 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [unidad], [fecha_registro], [categoria], [proveedor], [precio], [stock], [borrado]) VALUES (18, N'Stevia', N'50 sobres', CAST(0x50400B00 AS Date), 5, 2, CAST(74.52 AS Decimal(10, 2)), 84, 0)
SET IDENTITY_INSERT [dbo].[Productos] OFF
/****** Object:  Table [dbo].[Compras]    Script Date: 10/29/2019 21:10:16 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Compras](
	[nro_compra] [int] IDENTITY(1,1000) NOT NULL,
	[fecha] [date] NOT NULL,
	[proveedor] [int] NULL,
	[tipoFactura] [char](1) NOT NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nro_compra] ASC,
	[tipoFactura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
******/
/****** Object:  Table [dbo].[Ventas]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ventas](
	[tipoFactura] [char](1) NOT NULL,
	[nro_factura] [decimal](8, 0) NOT NULL,
	[fecha] [date] NOT NULL,
	[cliente] [int] NULL,
	[condiva] [varchar](40) NULL,
	[condventa] [varchar](20) NULL,
	[subtotal] [decimal](10, 2) NULL,
	[porc_descuento] [int] NULL,
	[importe_neto] [decimal](10, 2) NULL,
	[importe_iva] [decimal](10, 2) NULL,
	[importe_total] [decimal](10, 2) NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tipoFactura] ASC,
	[nro_factura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(1 AS Decimal(8, 0)), CAST(0x2F3F0B00 AS Date), 4, N'Responsable Inscripto', N'Contado', CAST(2338.82 AS Decimal(10, 2)), 0, CAST(2338.82 AS Decimal(10, 2)), CAST(491.15 AS Decimal(10, 2)), CAST(2829.97 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(2 AS Decimal(8, 0)), CAST(0x423F0B00 AS Date), 1, N'Responsable Inscripto', N'Cuenta Corriente', CAST(16015.20 AS Decimal(10, 2)), 10, CAST(14413.68 AS Decimal(10, 2)), CAST(3026.87 AS Decimal(10, 2)), CAST(17440.55 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(3 AS Decimal(8, 0)), CAST(0x763F0B00 AS Date), 6, N'Responsable Inscripto', N'Contado', CAST(2750.54 AS Decimal(10, 2)), 0, CAST(2750.54 AS Decimal(10, 2)), CAST(577.61 AS Decimal(10, 2)), CAST(3328.15 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(4 AS Decimal(8, 0)), CAST(0x8B3F0B00 AS Date), 3, N'Responsable Inscripto', N'Cuenta Corriente', CAST(2921.59 AS Decimal(10, 2)), 0, CAST(2921.59 AS Decimal(10, 2)), CAST(613.53 AS Decimal(10, 2)), CAST(3535.12 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(5 AS Decimal(8, 0)), CAST(0xA63F0B00 AS Date), 6, N'Responsable Inscripto', N'Contado', CAST(9296.60 AS Decimal(10, 2)), 5, CAST(8831.77 AS Decimal(10, 2)), CAST(1854.67 AS Decimal(10, 2)), CAST(10686.44 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(6 AS Decimal(8, 0)), CAST(0xBD3F0B00 AS Date), 2, N'Responsable Inscripto', N'Cuenta Corriente', CAST(4867.64 AS Decimal(10, 2)), 5, CAST(4624.26 AS Decimal(10, 2)), CAST(971.09 AS Decimal(10, 2)), CAST(5595.35 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(7 AS Decimal(8, 0)), CAST(0xF43F0B00 AS Date), 2, N'Responsable Inscripto', N'Cuenta Corriente', CAST(681.85 AS Decimal(10, 2)), 0, CAST(681.85 AS Decimal(10, 2)), CAST(143.19 AS Decimal(10, 2)), CAST(825.04 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(8 AS Decimal(8, 0)), CAST(0x0D400B00 AS Date), 2, N'Responsable Inscripto', N'Cuenta Corriente', CAST(4563.16 AS Decimal(10, 2)), 0, CAST(4563.16 AS Decimal(10, 2)), CAST(958.26 AS Decimal(10, 2)), CAST(5521.42 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(9 AS Decimal(8, 0)), CAST(0x21400B00 AS Date), 5, N'Responsable Inscripto', N'Contado', CAST(8641.23 AS Decimal(10, 2)), 5, CAST(8209.17 AS Decimal(10, 2)), CAST(1723.93 AS Decimal(10, 2)), CAST(9933.10 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(10 AS Decimal(8, 0)), CAST(0x50400B00 AS Date), 6, N'Responsable Inscripto', N'Contado', CAST(13580.17 AS Decimal(10, 2)), 0, CAST(13580.17 AS Decimal(10, 2)), CAST(2851.84 AS Decimal(10, 2)), CAST(16432.01 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(11 AS Decimal(8, 0)), CAST(0xEF3F0B00 AS Date), 1, N'Responsable Inscripto', N'Tarjeta', CAST(2472.90 AS Decimal(10, 2)), 0, CAST(2472.90 AS Decimal(10, 2)), CAST(519.31 AS Decimal(10, 2)), CAST(2992.21 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(12 AS Decimal(8, 0)), CAST(0x993F0B00 AS Date), 1, N'Responsable Inscripto', N'Contado', CAST(9854.20 AS Decimal(10, 2)), 0, CAST(9854.20 AS Decimal(10, 2)), CAST(2069.38 AS Decimal(10, 2)), CAST(11923.58 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(13 AS Decimal(8, 0)), CAST(0xEA3F0B00 AS Date), 5, N'Responsable Inscripto', N'Tarjeta', CAST(4749.24 AS Decimal(10, 2)), 0, CAST(4749.24 AS Decimal(10, 2)), CAST(997.34 AS Decimal(10, 2)), CAST(5746.58 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'A', CAST(14 AS Decimal(8, 0)), CAST(0xBB3F0B00 AS Date), 6, N'Responsable Inscripto', N'Contado', CAST(5187.36 AS Decimal(10, 2)), 0, CAST(5187.36 AS Decimal(10, 2)), CAST(1089.35 AS Decimal(10, 2)), CAST(6276.71 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'B', CAST(1 AS Decimal(8, 0)), CAST(0x263F0B00 AS Date), 9, N'Consumidor Final', N'Tarjeta', CAST(3746.02 AS Decimal(10, 2)), 0, CAST(3746.02 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(3746.02 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'B', CAST(2 AS Decimal(8, 0)), CAST(0x4D3F0B00 AS Date), 10, N'Consumidor Final', N'Contado', CAST(2351.40 AS Decimal(10, 2)), 0, CAST(2351.40 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(2351.40 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'B', CAST(3 AS Decimal(8, 0)), CAST(0x703F0B00 AS Date), 5, N'Consumidor Final', N'Cuenta Corriente', CAST(4323.30 AS Decimal(10, 2)), 0, CAST(4323.30 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(4323.30 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'B', CAST(4 AS Decimal(8, 0)), CAST(0x953F0B00 AS Date), 2, N'Consumidor Final', N'Tarjeta', CAST(6423.81 AS Decimal(10, 2)), 0, CAST(6423.81 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(6423.81 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'B', CAST(5 AS Decimal(8, 0)), CAST(0xA23F0B00 AS Date), 7, N'Consumidor Final', N'Contado', CAST(6057.16 AS Decimal(10, 2)), 0, CAST(6057.16 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(6057.16 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'B', CAST(6 AS Decimal(8, 0)), CAST(0xCA3F0B00 AS Date), 8, N'Consumidor Final', N'Contado', CAST(5083.59 AS Decimal(10, 2)), 0, CAST(5083.59 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(5083.59 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'B', CAST(7 AS Decimal(8, 0)), CAST(0xE63F0B00 AS Date), 8, N'Consumidor Final', N'Tarjeta', CAST(3019.20 AS Decimal(10, 2)), 5, CAST(2868.24 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(2868.24 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'B', CAST(8 AS Decimal(8, 0)), CAST(0xFB3F0B00 AS Date), 8, N'Consumidor Final', N'Contado', CAST(5306.54 AS Decimal(10, 2)), 0, CAST(5306.54 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(5306.54 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'B', CAST(9 AS Decimal(8, 0)), CAST(0x30400B00 AS Date), 7, N'Consumidor Final', N'Cuenta Corriente', CAST(1929.69 AS Decimal(10, 2)), 0, CAST(1929.69 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(1929.69 AS Decimal(10, 2)), 0)
INSERT [dbo].[Ventas] ([tipoFactura], [nro_factura], [fecha], [cliente], [condiva], [condventa], [subtotal], [porc_descuento], [importe_neto], [importe_iva], [importe_total], [borrado]) VALUES (N'B', CAST(10 AS Decimal(8, 0)), CAST(0x50400B00 AS Date), 2, N'Consumidor Final', N'Cuenta Corriente', CAST(1693.47 AS Decimal(10, 2)), 0, CAST(1693.47 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), CAST(1693.47 AS Decimal(10, 2)), 0)
/****** Object:  Table [dbo].[DetVentas]    Script Date: 10/29/2019 21:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetVentas](
	[tipo_factura] [char](1) NOT NULL,
	[nro_factura] [decimal](8, 0) NOT NULL,
	[id_producto] [int] NOT NULL,
	[precio] [decimal](10, 2) NULL,
	[cantidad] [int] NULL,
	[importe] [decimal](10, 2) NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tipo_factura] ASC,
	[nro_factura] ASC,
	[id_producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(1 AS Decimal(8, 0)), 8, CAST(167.06 AS Decimal(10, 2)), 12, CAST(2004.72 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(1 AS Decimal(8, 0)), 15, CAST(33.41 AS Decimal(10, 2)), 10, CAST(334.10 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(2 AS Decimal(8, 0)), 4, CAST(175.90 AS Decimal(10, 2)), 12, CAST(2110.80 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(2 AS Decimal(8, 0)), 13, CAST(579.35 AS Decimal(10, 2)), 24, CAST(13904.40 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(3 AS Decimal(8, 0)), 3, CAST(189.50 AS Decimal(10, 2)), 13, CAST(2463.50 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(3 AS Decimal(8, 0)), 7, CAST(12.48 AS Decimal(10, 2)), 23, CAST(287.04 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(4 AS Decimal(8, 0)), 10, CAST(114.81 AS Decimal(10, 2)), 8, CAST(918.48 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(4 AS Decimal(8, 0)), 16, CAST(117.83 AS Decimal(10, 2)), 17, CAST(2003.11 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(5 AS Decimal(8, 0)), 1, CAST(643.54 AS Decimal(10, 2)), 14, CAST(9009.56 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(5 AS Decimal(8, 0)), 7, CAST(12.48 AS Decimal(10, 2)), 23, CAST(287.04 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(6 AS Decimal(8, 0)), 9, CAST(290.20 AS Decimal(10, 2)), 13, CAST(3772.60 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(6 AS Decimal(8, 0)), 11, CAST(68.44 AS Decimal(10, 2)), 16, CAST(1095.04 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(7 AS Decimal(8, 0)), 14, CAST(52.45 AS Decimal(10, 2)), 13, CAST(681.85 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(8 AS Decimal(8, 0)), 3, CAST(189.50 AS Decimal(10, 2)), 10, CAST(1895.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(8 AS Decimal(8, 0)), 6, CAST(242.56 AS Decimal(10, 2)), 11, CAST(2668.16 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(9 AS Decimal(8, 0)), 5, CAST(542.57 AS Decimal(10, 2)), 11, CAST(5968.27 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(9 AS Decimal(8, 0)), 8, CAST(167.06 AS Decimal(10, 2)), 16, CAST(2672.96 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(10 AS Decimal(8, 0)), 1, CAST(643.54 AS Decimal(10, 2)), 13, CAST(8366.02 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(10 AS Decimal(8, 0)), 13, CAST(579.35 AS Decimal(10, 2)), 9, CAST(5214.15 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(11 AS Decimal(8, 0)), 10, CAST(114.81 AS Decimal(10, 2)), 10, CAST(1148.10 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(11 AS Decimal(8, 0)), 17, CAST(110.40 AS Decimal(10, 2)), 12, CAST(1324.80 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(12 AS Decimal(8, 0)), 9, CAST(290.20 AS Decimal(10, 2)), 10, CAST(2902.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(12 AS Decimal(8, 0)), 13, CAST(579.35 AS Decimal(10, 2)), 12, CAST(6952.20 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(13 AS Decimal(8, 0)), 9, CAST(290.20 AS Decimal(10, 2)), 12, CAST(3482.40 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(13 AS Decimal(8, 0)), 18, CAST(74.52 AS Decimal(10, 2)), 17, CAST(1266.84 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(14 AS Decimal(8, 0)), 6, CAST(242.56 AS Decimal(10, 2)), 18, CAST(4366.08 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'A', CAST(14 AS Decimal(8, 0)), 11, CAST(68.44 AS Decimal(10, 2)), 12, CAST(821.28 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(1 AS Decimal(8, 0)), 6, CAST(242.56 AS Decimal(10, 2)), 12, CAST(2910.72 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(1 AS Decimal(8, 0)), 8, CAST(167.06 AS Decimal(10, 2)), 5, CAST(835.30 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(2 AS Decimal(8, 0)), 11, CAST(68.44 AS Decimal(10, 2)), 15, CAST(1026.60 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(2 AS Decimal(8, 0)), 17, CAST(110.40 AS Decimal(10, 2)), 12, CAST(1324.80 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(3 AS Decimal(8, 0)), 4, CAST(175.90 AS Decimal(10, 2)), 21, CAST(3693.90 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(3 AS Decimal(8, 0)), 14, CAST(52.45 AS Decimal(10, 2)), 12, CAST(629.40 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(4 AS Decimal(8, 0)), 2, CAST(339.93 AS Decimal(10, 2)), 13, CAST(4419.09 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(4 AS Decimal(8, 0)), 8, CAST(167.06 AS Decimal(10, 2)), 12, CAST(2004.72 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(5 AS Decimal(8, 0)), 9, CAST(290.20 AS Decimal(10, 2)), 16, CAST(4643.20 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(5 AS Decimal(8, 0)), 16, CAST(117.83 AS Decimal(10, 2)), 12, CAST(1413.96 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(6 AS Decimal(8, 0)), 5, CAST(542.57 AS Decimal(10, 2)), 9, CAST(4883.13 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(6 AS Decimal(8, 0)), 15, CAST(33.41 AS Decimal(10, 2)), 6, CAST(200.46 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(7 AS Decimal(8, 0)), 3, CAST(189.50 AS Decimal(10, 2)), 12, CAST(2274.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(7 AS Decimal(8, 0)), 18, CAST(74.52 AS Decimal(10, 2)), 10, CAST(745.20 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(8 AS Decimal(8, 0)), 2, CAST(339.93 AS Decimal(10, 2)), 14, CAST(4759.02 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(8 AS Decimal(8, 0)), 11, CAST(68.44 AS Decimal(10, 2)), 8, CAST(547.52 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(9 AS Decimal(8, 0)), 7, CAST(12.48 AS Decimal(10, 2)), 13, CAST(162.24 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(9 AS Decimal(8, 0)), 16, CAST(117.83 AS Decimal(10, 2)), 15, CAST(1767.45 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(10 AS Decimal(8, 0)), 15, CAST(33.41 AS Decimal(10, 2)), 15, CAST(501.15 AS Decimal(10, 2)), 0)
INSERT [dbo].[DetVentas] ([tipo_factura], [nro_factura], [id_producto], [precio], [cantidad], [importe], [borrado]) VALUES (N'B', CAST(10 AS Decimal(8, 0)), 18, CAST(74.52 AS Decimal(10, 2)), 16, CAST(1192.32 AS Decimal(10, 2)), 0)
/****** Object:  Table [dbo].[DetCompras]    Script Date: 10/29/2019 21:10:16 *****
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetCompras](
	[nro_compra] [int] NOT NULL,
	[tipo_factura] [char](1) NOT NULL,
	[id_producto] [int] NOT NULL,
	[borrado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nro_compra] ASC,
	[tipo_factura] ASC,
	[id_producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
*/
/****** Object:  Default [DF__Perfiles__borrad__5BE2A6F2]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Perfiles] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__EstadoPro__borra__108B795B]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[EstadoProveedor] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__EstadoCli__borra__15502E78]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[EstadoCliente] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__Usuarios__estado__59063A47]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ('S') FOR [estado]
GO
/****** Object:  Default [DF__Usuarios__borrad__59FA5E80]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Usuarios] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__TipoProve__borra__1A14E395]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[TipoProveedor] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__TipoFactu__borra__239E4DCF]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[TipoFactura] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__TipoClien__borra__1ED998B2]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[TipoCliente] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__Ciudades__borrad__014935CB]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Ciudades] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__Categoria__borra__0BC6C43E]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Categorias] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__Barrios__borrado__07020F21]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Barrios] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__Clientes__borrad__2B3F6F97]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__Proveedor__borra__32E0915F]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Proveedores] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__Productos__stock__398D8EEE]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Productos] ADD  DEFAULT ((0)) FOR [stock]
GO
/****** Object:  Default [DF__Productos__borra__3A81B327]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Productos] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__Compras__borrado__4F7CD00D]    Script Date: 10/29/2019 21:10:16 
ALTER TABLE [dbo].[Compras] ADD  DEFAULT ((0)) FOR [borrado]
GO
******/
/****** Object:  Default [DF__Ventas__importe___412EB0B6]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Ventas] ADD  DEFAULT ((0)) FOR [importe_iva]
GO
/****** Object:  Default [DF__Ventas__borrado__4222D4EF]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Ventas] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__DetVentas__borra__48CFD27E]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[DetVentas] ADD  DEFAULT ((0)) FOR [borrado]
GO
/****** Object:  Default [DF__DetCompra__borra__5629CD9C]    Script Date: 10/29/2019 21:10:16 
ALTER TABLE [dbo].[DetCompras] ADD  DEFAULT ((0)) FOR [borrado]
GO
******/
/****** Object:  ForeignKey [FK_Ciudad]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Barrios]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad] FOREIGN KEY([ciudad])
REFERENCES [dbo].[Ciudades] ([id_ciudad])
GO
ALTER TABLE [dbo].[Barrios] CHECK CONSTRAINT [FK_Ciudad]
GO
/****** Object:  ForeignKey [FK_barrioC]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_barrioC] FOREIGN KEY([barrio])
REFERENCES [dbo].[Barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_barrioC]
GO
/****** Object:  ForeignKey [FK_estado_cliente]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_estado_cliente] FOREIGN KEY([estado_cliente])
REFERENCES [dbo].[EstadoCliente] ([id_estadoC])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_estado_cliente]
GO
/****** Object:  ForeignKey [FK_tipo_cliente]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_tipo_cliente] FOREIGN KEY([tipo_cliente])
REFERENCES [dbo].[TipoCliente] ([id_tipoC])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_tipo_cliente]
GO
/****** Object:  ForeignKey [FK_barrioP]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_barrioP] FOREIGN KEY([barrio])
REFERENCES [dbo].[Barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_barrioP]
GO
/****** Object:  ForeignKey [FK_estado_proveedor]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_estado_proveedor] FOREIGN KEY([estado_proveedor])
REFERENCES [dbo].[EstadoProveedor] ([id_estadoP])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_estado_proveedor]
GO
/****** Object:  ForeignKey [FK_tipo_proveedor]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_tipo_proveedor] FOREIGN KEY([tipo_proveedor])
REFERENCES [dbo].[TipoProveedor] ([id_tipoP])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_tipo_proveedor]
GO
/****** Object:  ForeignKey [FK_categoria]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_categoria] FOREIGN KEY([categoria])
REFERENCES [dbo].[Categorias] ([id_categoria])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_categoria]
GO
/****** Object:  ForeignKey [FK_proveedor_productos]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_proveedor_productos] FOREIGN KEY([proveedor])
REFERENCES [dbo].[Proveedores] ([id_proveedor])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_proveedor_productos]
GO
/****** Object:  ForeignKey [FK_proveedor_compras]    Script Date: 10/29/2019 21:10:16 
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_proveedor_compras] FOREIGN KEY([proveedor])
REFERENCES [dbo].[Proveedores] ([id_proveedor])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_proveedor_compras]
GO
******/
/****** Object:  ForeignKey [FK_tipoFactura_compras]    Script Date: 10/29/2019 21:10:16 
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_tipoFactura_compras] FOREIGN KEY([tipoFactura])
REFERENCES [dbo].[TipoFactura] ([id_tipoFactura])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_tipoFactura_compras]
GO
******/
/****** Object:  ForeignKey [FK_cliente_ventas]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_cliente_ventas] FOREIGN KEY([cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_cliente_ventas]
GO
/****** Object:  ForeignKey [FK_tipoFactura_ventas]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_tipoFactura_ventas] FOREIGN KEY([tipoFactura])
REFERENCES [dbo].[TipoFactura] ([id_tipoFactura])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_tipoFactura_ventas]
GO
/****** Object:  ForeignKey [FK__DetVentas__47DBAE45]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[DetVentas]  WITH CHECK ADD FOREIGN KEY([tipo_factura], [nro_factura])
REFERENCES [dbo].[Ventas] ([tipoFactura], [nro_factura])
GO
/****** Object:  ForeignKey [FK_producto_detVenta]    Script Date: 10/29/2019 21:10:16 ******/
ALTER TABLE [dbo].[DetVentas]  WITH CHECK ADD  CONSTRAINT [FK_producto_detVenta] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[DetVentas] CHECK CONSTRAINT [FK_producto_detVenta]
GO
/****** Object:  ForeignKey [FK__DetCompras__5535A963]    Script Date: 10/29/2019 21:10:16 
ALTER TABLE [dbo].[DetCompras]  WITH CHECK ADD FOREIGN KEY([nro_compra], [tipo_factura])
REFERENCES [dbo].[Compras] ([nro_compra], [tipoFactura])
GO
******/
/****** Object:  ForeignKey [FK_producto_detCompras]    Script Date: 10/29/2019 21:10:16 
ALTER TABLE [dbo].[DetCompras]  WITH CHECK ADD  CONSTRAINT [FK_producto_detCompras] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[DetCompras] CHECK CONSTRAINT [FK_producto_detCompras]
GO
******/
