USE [a0000748__2014-03-30]
GO
/****** Object:  Table [dbo].[Ser_SOStatus]    Script Date: 04/16/2014 10:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ser_SOStatus](
	[IDSOStatus] [int] NOT NULL,
	[SOStatus] [varchar](50) NULL,
	[Color] [varchar](20) NULL,
	[System] [bit] NOT NULL,
	[Hidden] [bit] NOT NULL,
	[Desativado] [bit] NULL,
	[ReplLastChange] [datetime] NULL,
 CONSTRAINT [XPKSer_SOStatus] PRIMARY KEY CLUSTERED 
(
	[IDSOStatus] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Ser_SOStatus] ADD  CONSTRAINT [DF_Zero3603]  DEFAULT (0) FOR [System]
GO
ALTER TABLE [dbo].[Ser_SOStatus] ADD  CONSTRAINT [DF_Zero3604]  DEFAULT (0) FOR [Hidden]
GO
ALTER TABLE [dbo].[Ser_SOStatus] ADD  CONSTRAINT [DF_Zero3605]  DEFAULT (0) FOR [Desativado]
GO
