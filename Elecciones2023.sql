USE [Elecciones2023]
GO
/****** Object:  User [alumno]    Script Date: 28/6/2023 09:06:31 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 28/6/2023 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[idCandidato] [int] NOT NULL,
	[idPartido] [int] NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Foto] [nvarchar](50) NULL,
	[Postulacion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Candidato] PRIMARY KEY CLUSTERED 
(
	[idCandidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 28/6/2023 09:06:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partido](
	[idPartido] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Logo] [nvarchar](50) NULL,
	[SitioWeb] [nvarchar](50) NULL,
	[FechaFundacion] [date] NOT NULL,
	[CantidadDiputados] [int] NOT NULL,
	[CantidadSenadores] [int] NOT NULL,
 CONSTRAINT [PK_Partido] PRIMARY KEY CLUSTERED 
(
	[idPartido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Partido] ([idPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (1, N'Zurbanismo', N'p1.jpg', N'https://es.wikipedia.org/wiki/Aldo_Rico', CAST(N'2006-11-04' AS Date), 3, 3)
INSERT [dbo].[Partido] ([idPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (2, N'Binkerismo Populista ', N'p2.jpg', N'https://ezebinker.github.io/#about', CAST(N'1994-12-04' AS Date), 4, 1)
INSERT [dbo].[Partido] ([idPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (3, N'Juntos por Cañete', N'p3.jpg', N'https://es.wikipedia.org/wiki/Nicol%C3%A1s_Maduro', CAST(N'2006-07-25' AS Date), 54, 92)
GO
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Partido] FOREIGN KEY([idPartido])
REFERENCES [dbo].[Partido] ([idPartido])
GO
ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Candidato_Partido]
GO
