USE [bibliotecaTP]
GO
ALTER TABLE [dbo].[libros] DROP CONSTRAINT [FK_libros_genero]
GO
ALTER TABLE [dbo].[libros] DROP CONSTRAINT [FK_libros_editorial]
GO
ALTER TABLE [dbo].[libros] DROP CONSTRAINT [FK_libros_autor]
GO
/****** Object:  Table [dbo].[libros]    Script Date: 20/03/2019 10:38:06 ******/
DROP TABLE [dbo].[libros]
GO
/****** Object:  Table [dbo].[genero]    Script Date: 20/03/2019 10:38:06 ******/
DROP TABLE [dbo].[genero]
GO
/****** Object:  Table [dbo].[editorial]    Script Date: 20/03/2019 10:38:06 ******/
DROP TABLE [dbo].[editorial]
GO
/****** Object:  Table [dbo].[autor]    Script Date: 20/03/2019 10:38:06 ******/
DROP TABLE [dbo].[autor]
GO
/****** Object:  Table [dbo].[autor]    Script Date: 20/03/2019 10:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[autor](
	[autorid] [int] IDENTITY(1,1) NOT NULL,
	[nombreAutor] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[pais] [varchar](50) NULL,
 CONSTRAINT [PK_autor] PRIMARY KEY CLUSTERED 
(
	[autorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[editorial]    Script Date: 20/03/2019 10:38:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[editorial](
	[editorialid] [int] IDENTITY(1,1) NOT NULL,
	[nombreEditorial] [varchar](50) NULL,
	[pais] [varchar](50) NULL,
 CONSTRAINT [PK_editorial] PRIMARY KEY CLUSTERED 
(
	[editorialid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genero]    Script Date: 20/03/2019 10:38:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genero](
	[generoid] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_genero] PRIMARY KEY CLUSTERED 
(
	[generoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[libros]    Script Date: 20/03/2019 10:38:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[libros](
	[libroid] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[generoid] [int] NULL,
	[editorialid] [int] NULL,
	[autorid] [int] NULL,
 CONSTRAINT [PK_libros_1] PRIMARY KEY CLUSTERED 
(
	[libroid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[autor] ON 

INSERT [dbo].[autor] ([autorid], [nombreAutor], [apellido], [pais]) VALUES (1, N'Tolkien', N'J. R. R', N'UK')
INSERT [dbo].[autor] ([autorid], [nombreAutor], [apellido], [pais]) VALUES (2, N'Martin', N'George', N'USA')
INSERT [dbo].[autor] ([autorid], [nombreAutor], [apellido], [pais]) VALUES (3, N'Gabriel', N'Garcia Marquez', N'Cuba')
INSERT [dbo].[autor] ([autorid], [nombreAutor], [apellido], [pais]) VALUES (4, N'Murakami', N'Haruki', N'Japón')
SET IDENTITY_INSERT [dbo].[autor] OFF
SET IDENTITY_INSERT [dbo].[editorial] ON 

INSERT [dbo].[editorial] ([editorialid], [nombreEditorial], [pais]) VALUES (3, N'Minotauro', N'España')
INSERT [dbo].[editorial] ([editorialid], [nombreEditorial], [pais]) VALUES (4, N'Plaza', N'España')
INSERT [dbo].[editorial] ([editorialid], [nombreEditorial], [pais]) VALUES (5, N'Debolsillo', N'Argentina')
INSERT [dbo].[editorial] ([editorialid], [nombreEditorial], [pais]) VALUES (6, N'Tusquets', N'Argentina')
SET IDENTITY_INSERT [dbo].[editorial] OFF
SET IDENTITY_INSERT [dbo].[genero] ON 

INSERT [dbo].[genero] ([generoid], [descripcion]) VALUES (1, N'fantasia')
INSERT [dbo].[genero] ([generoid], [descripcion]) VALUES (2, N'fantasia')
INSERT [dbo].[genero] ([generoid], [descripcion]) VALUES (3, N'novela')
INSERT [dbo].[genero] ([generoid], [descripcion]) VALUES (4, N'novela')
SET IDENTITY_INSERT [dbo].[genero] OFF
SET IDENTITY_INSERT [dbo].[libros] ON 

INSERT [dbo].[libros] ([libroid], [nombre], [generoid], [editorialid], [autorid]) VALUES (5, N'El Señor de los Anillos: El Retorno del Rey', 1, 3, 1)
INSERT [dbo].[libros] ([libroid], [nombre], [generoid], [editorialid], [autorid]) VALUES (6, N'Game of Thrones: Hielo y Fuego', 2, 4, 2)
INSERT [dbo].[libros] ([libroid], [nombre], [generoid], [editorialid], [autorid]) VALUES (9, N'Cien Años de Soledad', 3, 5, 3)
INSERT [dbo].[libros] ([libroid], [nombre], [generoid], [editorialid], [autorid]) VALUES (10, N'Los Años de Peregrinación Del Chico sin Color', 4, 6, 4)
INSERT [dbo].[libros] ([libroid], [nombre], [generoid], [editorialid], [autorid]) VALUES (11, N'El Señor de los Anillos: la comunidad del Anillo', 1, 3, 1)
SET IDENTITY_INSERT [dbo].[libros] OFF
ALTER TABLE [dbo].[libros]  WITH CHECK ADD  CONSTRAINT [FK_libros_autor] FOREIGN KEY([autorid])
REFERENCES [dbo].[autor] ([autorid])
GO
ALTER TABLE [dbo].[libros] CHECK CONSTRAINT [FK_libros_autor]
GO
ALTER TABLE [dbo].[libros]  WITH CHECK ADD  CONSTRAINT [FK_libros_editorial] FOREIGN KEY([editorialid])
REFERENCES [dbo].[editorial] ([editorialid])
GO
ALTER TABLE [dbo].[libros] CHECK CONSTRAINT [FK_libros_editorial]
GO
ALTER TABLE [dbo].[libros]  WITH CHECK ADD  CONSTRAINT [FK_libros_genero] FOREIGN KEY([generoid])
REFERENCES [dbo].[genero] ([generoid])
GO
ALTER TABLE [dbo].[libros] CHECK CONSTRAINT [FK_libros_genero]
GO
