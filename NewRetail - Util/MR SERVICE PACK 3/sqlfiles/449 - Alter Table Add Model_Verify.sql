ALTER TABLE Model ADD
	Verify Boolean NOT NULL CONSTRAINT DF_Model_Verify_Zero DEFAULT 0
GO
