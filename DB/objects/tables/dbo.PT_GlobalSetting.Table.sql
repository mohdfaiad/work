USE [a0000748__2014-03-30]
GO
/****** Object:  Table [dbo].[PT_GlobalSetting]    Script Date: 04/16/2014 10:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PT_GlobalSetting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPetCategory] [int] NULL,
	[IdServiceCategory] [int] NULL,
	[IdKitCategory] [int] NULL,
	[ReplLastChange] [datetime] NULL,
 CONSTRAINT [PT_GlobalSetting_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
