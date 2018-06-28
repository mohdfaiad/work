CREATE TABLE Mnt_CFOP (
	IDCFOP int NOT NULL,
	Number varchar(15) NOT NULL,
	[Description] varchar(30) NOT NULL
)
GO

ALTER TABLE Mnt_CFOP ADD CONSTRAINT
	XPKMnt_CFOP PRIMARY KEY (IDCFOP)
GO

ALTER TABLE Pur_Purchase ADD
	IDCFOP int NULL
GO

ALTER TABLE Pur_Purchase ADD CONSTRAINT
	FK_MntCFOP_PurPurchase_IDCFOP FOREIGN KEY (IDCFOP) REFERENCES Mnt_CFOP
GO

ALTER TABLE Invoice ADD
	IDCFOP int NULL
GO

ALTER TABLE Invoice ADD CONSTRAINT
	FK_MntCFOP_Invoice_IDCFOP FOREIGN KEY (IDCFOP) REFERENCES Mnt_CFOP
GO

ALTER TABLE ModelTransf ADD
	IDCFOP int NULL
GO

ALTER TABLE ModelTransf ADD CONSTRAINT
	FK_MntCFOP_ModelTransf_IDCFOP FOREIGN KEY (IDCFOP) REFERENCES Mnt_CFOP
GO
