USE [RF]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[tipo_Factura] [nchar](1) NOT NULL,
	[nro_Sucursal] [nchar](4) NOT NULL,
	[nro_Factura] [nchar](8) NOT NULL,
	[fecha_Factura] [date] NOT NULL,
	[id_Cliente] [int] NOT NULL,
	[total] [real] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[tipo_Factura] ASC,
	[nro_Sucursal] ASC,
	[nro_Factura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ventas] ([tipo_Factura], [nro_Sucursal], [nro_Factura], [fecha_Factura], [id_Cliente], [total]) VALUES (N'A', N'0001', N'00000125', CAST(0x233F0B00 AS Date), 1, 2750)
INSERT [dbo].[Ventas] ([tipo_Factura], [nro_Sucursal], [nro_Factura], [fecha_Factura], [id_Cliente], [total]) VALUES (N'A', N'0001', N'00000126', CAST(0x233F0B00 AS Date), 2, 1050)
INSERT [dbo].[Ventas] ([tipo_Factura], [nro_Sucursal], [nro_Factura], [fecha_Factura], [id_Cliente], [total]) VALUES (N'A', N'0001', N'00000127', CAST(0x233F0B00 AS Date), 3, 3000)
/****** Object:  Table [dbo].[Usuarios]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[n_Usuario] [varchar](30) NULL,
	[password] [varchar](30) NULL,
	[email] [varchar](50) NULL,
	[id_Perfil] [int] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id_Usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON
INSERT [dbo].[Usuarios] ([id_Usuario], [n_Usuario], [password], [email], [id_Perfil]) VALUES (1, N'Admin                         ', N'123                 ', N'admin@rf.com                            ', 1)
INSERT [dbo].[Usuarios] ([id_Usuario], [n_Usuario], [password], [email], [id_Perfil]) VALUES (2, N'Bill', N'noteladigo', N'bill@microsoft.com', 2)
INSERT [dbo].[Usuarios] ([id_Usuario], [n_Usuario], [password], [email], [id_Perfil]) VALUES (3, N'Teresita', N'tere', N'teresa@parodi.com', 3)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
/****** Object:  Table [dbo].[TipoProveedor]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoProveedor](
	[id_Tipo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_TipoProveedor] PRIMARY KEY CLUSTERED 
(
	[id_Tipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TipoProveedor] ON
INSERT [dbo].[TipoProveedor] ([id_Tipo], [descripcion]) VALUES (1, N'Activo')
INSERT [dbo].[TipoProveedor] ([id_Tipo], [descripcion]) VALUES (2, N'No Activo')
SET IDENTITY_INSERT [dbo].[TipoProveedor] OFF
/****** Object:  Table [dbo].[TipoFactura]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoFactura](
	[id_TipoFactura] [nchar](1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_TipoFactura] PRIMARY KEY CLUSTERED 
(
	[id_TipoFactura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TipoFactura] ([id_TipoFactura], [descripcion]) VALUES (N'A', N'Responsable Inscripto')
INSERT [dbo].[TipoFactura] ([id_TipoFactura], [descripcion]) VALUES (N'B', N'Consumidor Final')
INSERT [dbo].[TipoFactura] ([id_TipoFactura], [descripcion]) VALUES (N'C', N'Monotributista')
/****** Object:  Table [dbo].[Proveedores]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[id_Proveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre_Proveedor] [varchar](50) NULL,
	[nombre_Dueño] [varchar](50) NULL,
	[tipo_Proveedor] [int] NULL,
	[direccion] [varchar](50) NULL,
	[cod_Postal] [varchar](10) NULL,
	[barrio] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[estado_Proveedor] [int] NULL,
	[fecha_Registración] [date] NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[id_Proveedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedores] ON
INSERT [dbo].[Proveedores] ([id_Proveedor], [nombre_Proveedor], [nombre_Dueño], [tipo_Proveedor], [direccion], [cod_Postal], [barrio], [email], [estado_Proveedor], [fecha_Registración]) VALUES (1, N'Herboeste', N'Juan', 1, N'Vivaldi 234', N'5000', N'1', N'info@herboeste.com', 1, CAST(0x233F0B00 AS Date))
INSERT [dbo].[Proveedores] ([id_Proveedor], [nombre_Proveedor], [nombre_Dueño], [tipo_Proveedor], [direccion], [cod_Postal], [barrio], [email], [estado_Proveedor], [fecha_Registración]) VALUES (2, N'Arevalo', N'Pedro', 1, N'Chopin 456', N'5008', N'2', N'info@arevalo.com', 2, CAST(0x233F0B00 AS Date))
INSERT [dbo].[Proveedores] ([id_Proveedor], [nombre_Proveedor], [nombre_Dueño], [tipo_Proveedor], [direccion], [cod_Postal], [barrio], [email], [estado_Proveedor], [fecha_Registración]) VALUES (3, N'Hierbas Suquía', N'Carlos', 2, N'Bethoven 678', N'5008', N'3', N'info@hierbassuquia.com', 1, CAST(0x233F0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
/****** Object:  Table [dbo].[Productos]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[id_Producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[id_Proveedor] [int] NULL,
	[id_Marca] [int] NULL,
	[unidad] [varchar](10) NULL,
	[cantidad_Stock] [int] NULL,
	[precio_Unitario] [real] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[id_Producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON
INSERT [dbo].[Productos] ([id_Producto], [nombre], [id_Proveedor], [id_Marca], [unidad], [cantidad_Stock], [precio_Unitario]) VALUES (1, N'Peperina Hojas x 1K', 1, 1, N'Kilogramo', 150, 634.56)
INSERT [dbo].[Productos] ([id_Producto], [nombre], [id_Proveedor], [id_Marca], [unidad], [cantidad_Stock], [precio_Unitario]) VALUES (2, N'Poleo Hojas x 1K', 2, 2, N'Kilogramo', 250, 356.58)
INSERT [dbo].[Productos] ([id_Producto], [nombre], [id_Proveedor], [id_Marca], [unidad], [cantidad_Stock], [precio_Unitario]) VALUES (3, N'Jarilla Hojas x 1K', 3, 3, N'Kilogramo', 120, 287.59)
INSERT [dbo].[Productos] ([id_Producto], [nombre], [id_Proveedor], [id_Marca], [unidad], [cantidad_Stock], [precio_Unitario]) VALUES (4, N'Incayuyo x 1K', 1, 1, N'Kilogramo', 100, 369.48)
INSERT [dbo].[Productos] ([id_Producto], [nombre], [id_Proveedor], [id_Marca], [unidad], [cantidad_Stock], [precio_Unitario]) VALUES (5, N'Palo Amarillo Hojas x 1K', 1, 1, N'Kilogramo', 235, 249.87)
SET IDENTITY_INSERT [dbo].[Productos] OFF
/****** Object:  Table [dbo].[Perfiles]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perfiles](
	[id_Perfil] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[id_Perfil] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Perfiles] ON
INSERT [dbo].[Perfiles] ([id_Perfil], [descripcion]) VALUES (1, N'Administradores')
INSERT [dbo].[Perfiles] ([id_Perfil], [descripcion]) VALUES (2, N'Gerente')
INSERT [dbo].[Perfiles] ([id_Perfil], [descripcion]) VALUES (3, N'Data Entrys')
SET IDENTITY_INSERT [dbo].[Perfiles] OFF
/****** Object:  Table [dbo].[Marcas]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marcas](
	[id_Marca] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED 
(
	[id_Marca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Marcas] ON
INSERT [dbo].[Marcas] ([id_Marca], [descripcion]) VALUES (1, N'Herbo')
INSERT [dbo].[Marcas] ([id_Marca], [descripcion]) VALUES (2, N'Suquia')
INSERT [dbo].[Marcas] ([id_Marca], [descripcion]) VALUES (3, N'Arevalo')
SET IDENTITY_INSERT [dbo].[Marcas] OFF
/****** Object:  Table [dbo].[MarcaProveedor]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MarcaProveedor](
	[id_Proveedor] [int] NOT NULL,
	[id_Marca] [int] NOT NULL,
	[nombre_Marca] [varchar](50) NULL,
 CONSTRAINT [PK_MarcaProveedor] PRIMARY KEY CLUSTERED 
(
	[id_Proveedor] ASC,
	[id_Marca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MarcaProveedor] ([id_Proveedor], [id_Marca], [nombre_Marca]) VALUES (1, 1, N'Herboeste')
INSERT [dbo].[MarcaProveedor] ([id_Proveedor], [id_Marca], [nombre_Marca]) VALUES (1, 2, N'Arevalo')
INSERT [dbo].[MarcaProveedor] ([id_Proveedor], [id_Marca], [nombre_Marca]) VALUES (1, 3, N'Hierbas Suquia')
/****** Object:  Table [dbo].[EstadoProveedor]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoProveedor](
	[id_Estado] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_EstadoProveedor] PRIMARY KEY CLUSTERED 
(
	[id_Estado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoProveedor] ON
INSERT [dbo].[EstadoProveedor] ([id_Estado], [descripcion]) VALUES (1, N'Activo')
INSERT [dbo].[EstadoProveedor] ([id_Estado], [descripcion]) VALUES (2, N'No Activo')
SET IDENTITY_INSERT [dbo].[EstadoProveedor] OFF
/****** Object:  Table [dbo].[EstadoCliente]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoCliente](
	[id_Estado] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_EstadoCliente] PRIMARY KEY CLUSTERED 
(
	[id_Estado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[EstadoCliente] ON
INSERT [dbo].[EstadoCliente] ([id_Estado], [descripcion]) VALUES (1, N'Activo')
INSERT [dbo].[EstadoCliente] ([id_Estado], [descripcion]) VALUES (2, N'No Activo')
SET IDENTITY_INSERT [dbo].[EstadoCliente] OFF
/****** Object:  Table [dbo].[DetalleVentas]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVentas](
	[tipo_Factura] [nchar](1) NOT NULL,
	[nro_Sucursal] [nchar](4) NOT NULL,
	[nro_Factura] [nchar](8) NOT NULL,
	[id_Producto] [int] NOT NULL,
	[precio_Unitario] [real] NOT NULL,
	[cantidad] [int] NOT NULL,
	[subtotal] [real] NULL,
 CONSTRAINT [PK_DetalleVentas] PRIMARY KEY CLUSTERED 
(
	[tipo_Factura] ASC,
	[nro_Sucursal] ASC,
	[nro_Factura] ASC,
	[id_Producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DetalleVentas] ([tipo_Factura], [nro_Sucursal], [nro_Factura], [id_Producto], [precio_Unitario], [cantidad], [subtotal]) VALUES (N'A', N'0001', N'00000125', 1, 550, 5, 2750)
INSERT [dbo].[DetalleVentas] ([tipo_Factura], [nro_Sucursal], [nro_Factura], [id_Producto], [precio_Unitario], [cantidad], [subtotal]) VALUES (N'A', N'0001', N'00000126', 2, 350, 3, 1050)
INSERT [dbo].[DetalleVentas] ([tipo_Factura], [nro_Sucursal], [nro_Factura], [id_Producto], [precio_Unitario], [cantidad], [subtotal]) VALUES (N'A', N'0001', N'00000127', 3, 250, 12, 3000)
/****** Object:  Table [dbo].[DetalleCompras]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleCompras](
	[nro_Compra] [int] NOT NULL,
	[factura] [nchar](13) NOT NULL,
	[id_Producto] [int] NOT NULL,
	[precio_Unitario] [real] NULL,
	[cantidad] [int] NULL,
	[subtotal] [real] NULL,
 CONSTRAINT [PK_DetalleCompras] PRIMARY KEY CLUSTERED 
(
	[nro_Compra] ASC,
	[factura] ASC,
	[id_Producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DetalleCompras] ([nro_Compra], [factura], [id_Producto], [precio_Unitario], [cantidad], [subtotal]) VALUES (1, N'A000100000025', 1, 525, 15, 7825)
INSERT [dbo].[DetalleCompras] ([nro_Compra], [factura], [id_Producto], [precio_Unitario], [cantidad], [subtotal]) VALUES (2, N'A000100000852', 2, 325, 25, 8125)
INSERT [dbo].[DetalleCompras] ([nro_Compra], [factura], [id_Producto], [precio_Unitario], [cantidad], [subtotal]) VALUES (3, N'A000100042854', 3, 256, 25, 6400)
/****** Object:  Table [dbo].[Compras]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[nro_Compra] [int] NOT NULL,
	[factura] [nchar](13) NOT NULL,
	[fecha_Compra] [date] NULL,
	[id_Proveedor] [int] NOT NULL,
	[total] [real] NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[nro_Compra] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Compras] ([nro_Compra], [factura], [fecha_Compra], [id_Proveedor], [total]) VALUES (1, N'A000100000025', CAST(0x233F0B00 AS Date), 1, NULL)
INSERT [dbo].[Compras] ([nro_Compra], [factura], [fecha_Compra], [id_Proveedor], [total]) VALUES (2, N'A000100000852', CAST(0x233F0B00 AS Date), 2, NULL)
INSERT [dbo].[Compras] ([nro_Compra], [factura], [fecha_Compra], [id_Proveedor], [total]) VALUES (3, N'A000100042584', CAST(0x233F0B00 AS Date), 3, NULL)
/****** Object:  Table [dbo].[CodigoPostal]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CodigoPostal](
	[cod_Postal] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_CodigoPostal] PRIMARY KEY CLUSTERED 
(
	[cod_Postal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CodigoPostal] ([cod_Postal], [descripcion]) VALUES (5000, N'Centro Córdoba')
INSERT [dbo].[CodigoPostal] ([cod_Postal], [descripcion]) VALUES (5008, N'Periferia Córdoba')
/****** Object:  Table [dbo].[Clientes]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre_Local] [varchar](50) NULL,
	[nombre_Dueño] [varchar](50) NULL,
	[direccion] [varchar](50) NULL,
	[telefono] [varchar](30) NULL,
	[cod_Postal] [varchar](10) NULL,
	[barrio] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[estado_Cliente] [int] NULL,
	[fecha_Registracion] [date] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[id_Cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON
INSERT [dbo].[Clientes] ([id_Cliente], [nombre_Local], [nombre_Dueño], [direccion], [telefono], [cod_Postal], [barrio], [email], [estado_Cliente], [fecha_Registracion]) VALUES (1, N'El Dragón', N'Claudia', N'Pueyrredón 1011', N'035115245785', N'5000', N'3', N'claudia@gmail.com', 1, CAST(0x233F0B00 AS Date))
INSERT [dbo].[Clientes] ([id_Cliente], [nombre_Local], [nombre_Dueño], [direccion], [telefono], [cod_Postal], [barrio], [email], [estado_Cliente], [fecha_Registracion]) VALUES (2, N'El Duende', N'César', N'Maestro Vidal 1455', N'035124578955', N'5008', N'1', N'cesar@gmail.com', 1, CAST(0x233F0B00 AS Date))
INSERT [dbo].[Clientes] ([id_Cliente], [nombre_Local], [nombre_Dueño], [direccion], [telefono], [cod_Postal], [barrio], [email], [estado_Cliente], [fecha_Registracion]) VALUES (3, NULL, N'Yanet', N'Monseñor de Andrea 123', N'035145879565', N'5000', N'2', N'yanet@hotmail.com', 1, CAST(0x233F0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Clientes] OFF
/****** Object:  Table [dbo].[Ciudades]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciudades](
	[id_Ciudad] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Ciudades] PRIMARY KEY CLUSTERED 
(
	[id_Ciudad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Ciudades] ON
INSERT [dbo].[Ciudades] ([id_Ciudad], [nombre]) VALUES (1, N'Córdoba')
INSERT [dbo].[Ciudades] ([id_Ciudad], [nombre]) VALUES (2, N'Jesús María')
SET IDENTITY_INSERT [dbo].[Ciudades] OFF
/****** Object:  Table [dbo].[Categoria]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[id_Categoria] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[id_Categoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 09/01/2019 19:46:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Barrios](
	[id_Barrio] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[id_Ciudad] [int] NULL,
 CONSTRAINT [PK_Barrios] PRIMARY KEY CLUSTERED 
(
	[id_Barrio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Barrios] ON
INSERT [dbo].[Barrios] ([id_Barrio], [descripcion], [id_Ciudad]) VALUES (1, N'Las Margaritas', 1)
INSERT [dbo].[Barrios] ([id_Barrio], [descripcion], [id_Ciudad]) VALUES (2, N'Nueva Córdoba', 1)
INSERT [dbo].[Barrios] ([id_Barrio], [descripcion], [id_Ciudad]) VALUES (3, N'Centro', 1)
SET IDENTITY_INSERT [dbo].[Barrios] OFF
/****** Object:  ForeignKey [FK_Usuarios_Usuarios]    Script Date: 09/01/2019 19:46:29 ******/
ALTER TABLE [dbo].[Usuarios]  WITH NOCHECK ADD  CONSTRAINT [FK_Usuarios_Usuarios] FOREIGN KEY([id_Usuario])
REFERENCES [dbo].[Usuarios] ([id_Usuario])
GO
ALTER TABLE [dbo].[Usuarios] NOCHECK CONSTRAINT [FK_Usuarios_Usuarios]
GO
/****** Object:  ForeignKey [FK_Perfiles_Perfiles]    Script Date: 09/01/2019 19:46:29 ******/
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD  CONSTRAINT [FK_Perfiles_Perfiles] FOREIGN KEY([id_Perfil])
REFERENCES [dbo].[Perfiles] ([id_Perfil])
GO
ALTER TABLE [dbo].[Perfiles] CHECK CONSTRAINT [FK_Perfiles_Perfiles]
GO
