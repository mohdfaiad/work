USE [a0000748__2014-03-30]
GO
/****** Object:  Table [dbo].[TagQtyPriceBreak]    Script Date: 04/16/2014 10:08:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagQtyPriceBreak](
	[IDTag] [int] NOT NULL,
	[MinQuantity] [int] NOT NULL,
	[Discount] [money] NOT NULL,
 CONSTRAINT [PK_IDTagQtyPriceBreak] PRIMARY KEY CLUSTERED 
(
	[IDTag] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TagQtyPriceBreak] ADD  DEFAULT ((0)) FOR [Discount]
GO
