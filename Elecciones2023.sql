USE [Elecciones2023]
GO
/****** Object:  User [alumno]    Script Date: 10/7/2023 09:32:53 ******/
/****** Object:  Table [dbo].[Candidato]    Script Date: 10/7/2023 09:32:53 ******/
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
/****** Object:  Table [dbo].[Partido]    Script Date: 10/7/2023 09:32:53 ******/
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
INSERT [dbo].[Candidato] ([idCandidato], [idPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (1, 1, N'Zurbano', N'Pablo', CAST(N'2006-11-04' AS Date), NULL, N'Presidente')
INSERT [dbo].[Candidato] ([idCandidato], [idPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (2, 1, N'Reifut', N'Nico', CAST(N'2006-07-01' AS Date), NULL, N'Vicepresidente')
INSERT [dbo].[Candidato] ([idCandidato], [idPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (3, 2, N'Binker', N'Ezequiel', CAST(N'1994-12-04' AS Date), NULL, N'Presidente')
INSERT [dbo].[Candidato] ([idCandidato], [idPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (4, 2, N'Ceriana', N'Mauricio', CAST(N'1998-07-09' AS Date), NULL, N'Vicepresidente')
INSERT [dbo].[Candidato] ([idCandidato], [idPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (5, 3, N'Cañete', N'Santiago', CAST(N'2006-07-25' AS Date), NULL, N'Presidente')
INSERT [dbo].[Candidato] ([idCandidato], [idPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (6, 3, N'Sedam', N'Martin', CAST(N'2007-04-15' AS Date), NULL, N'Vicepresidente')
INSERT [dbo].[Candidato] ([idCandidato], [idPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (7, 4, N'Ostrovsky', N'Federico', CAST(N'2006-09-28' AS Date), NULL, N'Presidente')
INSERT [dbo].[Candidato] ([idCandidato], [idPartido], [Apellido], [Nombre], [FechaNacimiento], [Foto], [Postulacion]) VALUES (8, 4, N'Suken', N'Simon', CAST(N'2006-08-15' AS Date), NULL, N'Vicepresidente')
GO
INSERT [dbo].[Partido] ([idPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (1, N'Zurbanismo', N'zur.jpg', N'https://es.wikipedia.org/wiki/Aldo_Rico', CAST(N'2006-11-04' AS Date), 1, 1)
INSERT [dbo].[Partido] ([idPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (2, N'Binkerismo Populista ', N'bink.jpg', N'https://ezebinker.github.io/#about', CAST(N'1994-12-04' AS Date), 1, 1)
INSERT [dbo].[Partido] ([idPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (3, N'Juntos por Cañete', N'canee.jpg', N'https://es.wikipedia.org/wiki/Nicol%C3%A1s_Maduro', CAST(N'2006-07-25' AS Date), 1, 1)
INSERT [dbo].[Partido] ([idPartido], [Nombre], [Logo], [SitioWeb], [FechaFundacion], [CantidadDiputados], [CantidadSenadores]) VALUES (4, N'Federalistas Ostrovistas', N'ostro.jpg', N'https://es.wikipedia.org/wiki/Mark_Zuckerberg', CAST(N'2006-09-28' AS Date), 1, 1)
GO
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Partido] FOREIGN KEY([idPartido])
REFERENCES [dbo].[Partido] ([idPartido])
GO
ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Candidato_Partido]
GO
