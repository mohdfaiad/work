ALTER TABLE Model ADD
	UpdatePrice bit NULL CONSTRAINT DF_Zero3706 DEFAULT 0,
	UseScale bit NULL CONSTRAINT DF_Zero3707 DEFAULT 0
GO

UPDATE Model
SET UpdatePrice = 0, UseScale = 0
GO
