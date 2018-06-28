USE [a0000748__2014-03-30]
GO
/****** Object:  Table [dbo].[InvoiceCommission]    Script Date: 04/16/2014 10:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InvoiceCommission](
	[IDPessoa] [int] NOT NULL,
	[IDInvoice] [int] NOT NULL,
	[Commission] [money] NOT NULL,
	[Tipo] [char](1) NULL,
	[ReplLastChange] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPessoa] ASC,
	[IDInvoice] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[InvoiceCommission]  WITH NOCHECK ADD  CONSTRAINT [FK_Pessoa_InvoiceCommission_IDPessoa] FOREIGN KEY([IDPessoa])
REFERENCES [dbo].[Pessoa] ([IDPessoa])
NOT FOR REPLICATION
GO
ALTER TABLE [dbo].[InvoiceCommission] CHECK CONSTRAINT [FK_Pessoa_InvoiceCommission_IDPessoa]
GO
ALTER TABLE [dbo].[InvoiceCommission] ADD  CONSTRAINT [DF_Zero147]  DEFAULT (0) FOR [Commission]
GO
