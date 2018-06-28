USE [a0000748__2014-03-30]
GO
/****** Object:  Table [dbo].[InvoiceGen]    Script Date: 04/16/2014 10:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceGen](
	[IDInvoice] [int] NOT NULL,
	[BitGen] [bit] NULL,
	[ReplLastChange] [datetime] NULL,
 CONSTRAINT [PK__InvoiceGen__0E04126B] PRIMARY KEY CLUSTERED 
(
	[IDInvoice] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
