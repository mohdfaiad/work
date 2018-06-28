USE [a0000748__2014-03-30]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 04/16/2014 10:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserType](
	[IDUserType] [int] NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Desativado] [bit] NULL,
	[System] [bit] NULL,
	[Hidden] [bit] NULL,
	[ReplLastChange] [datetime] NULL,
 CONSTRAINT [PK_UserType_IDUserType] PRIMARY KEY CLUSTERED 
(
	[IDUserType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF_Zero12]  DEFAULT (0) FOR [Desativado]
GO
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF_Zero13]  DEFAULT (0) FOR [System]
GO
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF_Zero14]  DEFAULT (0) FOR [Hidden]
GO
