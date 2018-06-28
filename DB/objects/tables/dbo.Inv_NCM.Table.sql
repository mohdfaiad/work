USE [a0000748__2014-03-30]
GO
/****** Object:  Table [dbo].[Inv_NCM]    Script Date: 04/16/2014 10:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Inv_NCM](
	[IDNCM] [int] NOT NULL,
	[Codigo] [varchar](20) NULL,
	[Descricao] [varchar](255) NULL,
	[MVAInterno] [decimal](38, 4) NULL,
	[MVAInterestadual] [decimal](38, 4) NULL,
	[Incide] [bit] NULL,
	[System] [bit] NULL,
	[Desativado] [bit] NULL,
	[Hidden] [bit] NULL,
	[ReplLastChange] [datetime] NULL,
 CONSTRAINT [XPKInv_NCM] PRIMARY KEY CLUSTERED 
(
	[IDNCM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Inv_NCM] ADD  CONSTRAINT [DF_SystemNCM]  DEFAULT ((0)) FOR [System]
GO
ALTER TABLE [dbo].[Inv_NCM] ADD  CONSTRAINT [DF_DesatNCM]  DEFAULT ((0)) FOR [Desativado]
GO
ALTER TABLE [dbo].[Inv_NCM] ADD  CONSTRAINT [DF_HiddenNCM]  DEFAULT ((0)) FOR [Hidden]
GO
