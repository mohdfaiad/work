USE [a0000748__2014-03-30]
GO
/****** Object:  Table [dbo].[PO]    Script Date: 04/16/2014 10:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PO](
	[IDPO] [int] NOT NULL,
	[IDFornecedor] [int] NOT NULL,
	[IDStore] [int] NULL,
	[DataPedido] [smalldatetime] NOT NULL,
	[Aberto] [bit] NULL,
	[Freight] [money] NOT NULL,
	[Charges] [money] NOT NULL,
	[SubTotal] [money] NOT NULL,
	[Atendido] [bit] NULL,
	[PaymenteType] [int] NULL,
	[EstArrival] [datetime] NULL,
	[PayDays] [int] NULL,
	[OBS] [varchar](750) NULL,
	[ReplLastChange] [datetime] NULL,
 CONSTRAINT [PK_PO_1__12] PRIMARY KEY CLUSTERED 
(
	[IDPO] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[PO]  WITH NOCHECK ADD  CONSTRAINT [FK_Pessoa_PO_IDFornecedor] FOREIGN KEY([IDFornecedor])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[PO] CHECK CONSTRAINT [FK_Pessoa_PO_IDFornecedor]
GO
ALTER TABLE [dbo].[PO]  WITH NOCHECK ADD  CONSTRAINT [FK_Store_PO_IDStore] FOREIGN KEY([IDStore])
REFERENCES [dbo].[Store] ([IDStore])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[PO] CHECK CONSTRAINT [FK_Store_PO_IDStore]
GO
ALTER TABLE [dbo].[PO] ADD  CONSTRAINT [DF_Zero148]  DEFAULT (0) FOR [Aberto]
GO
ALTER TABLE [dbo].[PO] ADD  CONSTRAINT [DF_Zero149]  DEFAULT (0) FOR [Freight]
GO
ALTER TABLE [dbo].[PO] ADD  CONSTRAINT [DF_Zero150]  DEFAULT (0) FOR [Charges]
GO
ALTER TABLE [dbo].[PO] ADD  CONSTRAINT [DF_Zero151]  DEFAULT (0) FOR [SubTotal]
GO
ALTER TABLE [dbo].[PO] ADD  CONSTRAINT [DF_Zero152]  DEFAULT (0) FOR [Atendido]
GO
