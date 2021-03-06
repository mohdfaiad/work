IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[tr_InventoryMov_All]') AND OBJECTPROPERTY(id, N'IsTrigger') = 1)
DROP TRIGGER [dbo].[tr_InventoryMov_All]
GO

CREATE TRIGGER tr_InventoryMov_All ON dbo.InventoryMov
FOR INSERT, UPDATE, DELETE
NOT FOR REPLICATION
AS

/* ----------------------------------------------------------------------------------------------------------------------
	SUMARIO

		- Teste da existencia de MODEL no Inventory
		- Teste existencia do MODEL  no Inventory MovTotals
		- Teste da existencia do MASTER no Inventory
		- Teste existencia do MASTER no Inventory MovTotals
		- Atualiza o LastMovDate no Model, se for Insert and Update
		- Atualiza o DateLastSellingPrice no Model, se for Insert and Update
		- INVENTORY e INVMASTER:  Atualiza QtyOnHand
		- MODEL e MODEL MASTER: Atualiza o Total no model
		- MODEL e MODEL MASTER: Atualiza o InventoryMovTotals
		- MODEL e MODEL MASTER: Manda para a lixeira se a quantidade zerar e o parametro do servidor for TRUE

	LOG DE MODIFICA��ES

	Data			Programador		Modifica��o
	-----------------------	-----------------------	-----------------------------------------------------------------
	15 May  2000		Eduardo Costa		Criacao;
	01 Aug  2001		Rodrigo Costa		Gravar o LastMovDate no Model;
	22 Aug  2001		Davi Gouveia		Gravar o DateLastSellingPrice no Model;
	30 Oct	2003		Andre Bogado		Inserido cursor Inventory_Cursor;
							Inserido cursor InventoryMaster_Cursor;
							Inserido nome dos campos de InventoryMovTotal;
	12 Dec	2006		Carlos Lima		C�lculo do custo m�dio ( AvgCost );
	09 Jun	2006		Maximiliano Muniz	Enviar item para lixeira;
	28 Jun	2006		Leonardo Riego		Vericar antes de enviar o item para lixeira se possui o campo
							SendToTrash para true;
	27 Aug	2007		Maximiliano Muniz	Substitui��o de cursores por selects;
	----------------------------------------------------------------------------------------------------------------- */

IF @@rowcount = 0
	RETURN

IF ISNULL(APP_NAME (), '') = 'MRREPLICATION' 
	RETURN

SET NOCOUNT ON

--Declara��o de vari�veis para o Cursor de Inventory
DECLARE @StoreID	int
DECLARE @ModelID	int
DECLARE @IDInventory	int
DECLARE @SendTrash	bit

----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------
--	B O T H      I N S E R T      A N D      D E L E T E
----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------
--	Teste da existencia de MODEL no Inventory, e caso n�o exista faz insert
----------------------------------------------------------------------------------------------------------------------------------

IF EXISTS (SELECT IM.StoreID, IM.ModelID FROM Inserted IM LEFT OUTER JOIN Inventory I ON (IM.StoreID = I.StoreID AND IM.ModelID = I.ModelID) WHERE I.ModelID IS NULL GROUP BY IM.StoreID, IM.ModelID)
BEGIN
	EXEC sp_Sis_GetNextCode'Inventory.IDInventory', @IDInventory OUTPUT

	INSERT Inventory
		(
		IDInventory,
		StoreID,
		ModelID
		)
		(
		SELECT
			@IDInventory,
			IM.StoreID,
			IM.ModelID
		FROM
			Inserted IM
		GROUP BY
			IM.StoreID,
			IM.ModelID
		)
END

----------------------------------------------------------------------------------------------------------------------------------
--	Teste existencia do MODEL  no Inventory MovTotals
----------------------------------------------------------------------------------------------------------------------------------

INSERT 	InventoryMovTotal
		(
		StoreID,
		ModelID,
		InventMovTypeID,
		[Year],
		[Month],
		TotQty,
		TotSale,
		TotCost
		)
	SELECT
		IT.StoreID,
		IT.ModelID,
		IT.InventMovTypeID,
		IT.[Year],
		IT.[Month],
		0,
		0,
		0
	FROM	(
		SELECT
			I.StoreID,
			I.ModelID,
			I.InventMovTypeID,
			DatePart(yy, I.MovDate) [Year],
			DatePart(mm, I.MovDate) [Month]
		FROM
			Inserted I
		GROUP BY
			I.StoreID,
			I.ModelID,
			I.InventMovTypeID,
                 	DatePart(yy, I.MovDate),
			DatePart(mm, I.MovDate)
		) IT
		LEFT OUTER JOIN InventoryMovTotal IMT ON (IMT.StoreID = IT.StoreID AND IMT.ModelID = IT.ModelID AND IMT.InventMovTypeID = IT.InventMovTypeID AND IMT.[Year] = IT.[Year] AND IMT.[Month] = IT.[Month])
	WHERE
		IMT.StoreID IS NULL

----------------------------------------------------------------------------------------------------------------------------------
--	Teste da existencia do MASTER no Inventory
----------------------------------------------------------------------------------------------------------------------------------

IF EXISTS (SELECT IM.StoreID, M.IDModelParent FROM Inserted IM JOIN Model M ON (IM.ModelID = M.IDModel) LEFT OUTER JOIN Inventory I ON (IM.StoreID = I.StoreID AND M.IDModelParent = I.ModelID) WHERE I.ModelID IS NULL AND M.IDModelParent IS NULL GROUP BY IM.StoreID, M.IDModelParent)
BEGIN
	EXEC sp_Sis_GetNextCode'Inventory.IDInventory', @IDInventory OUTPUT

	INSERT Inventory
		(
		IDInventory,
		StoreID,
		ModelID
		)
	SELECT
		@IDInventory,
		IM.StoreID,
		M.IDModelParent
	FROM
		Inserted IM
		JOIN Model M ON (IM.ModelID = M.IDModel)
		LEFT OUTER JOIN Inventory I ON (IM.StoreID =I.StoreID AND M.IDModelParent = I.ModelID)
	WHERE
		I.ModelID IS NULL
		AND M.IDModelParent IS NOT NULL
	GROUP BY
		IM.StoreID,
		M.IDModelParent
END

----------------------------------------------------------------------------------------------------------------------------------
--	Teste existencia do MASTER no Inventory MovTotals
----------------------------------------------------------------------------------------------------------------------------------

INSERT	InventoryMovTotal
		(
		StoreID,
		ModelID,
		InventMovTypeID,
		[Year],
		[Month],
		TotQty,
		TotSale,
		TotCost
		)
	SELECT
		IT.StoreID,
		IT.ModelID,
		IT.InventMovTypeID,
		IT.[Year],
		IT.[Month],
		0,
		0,
		0
	FROM 	(
		SELECT
			IM.StoreID,
			M.IDModelParent as ModelID,
			IM.InventMovTypeID,
			DatePart(yy, IM.MovDate) [Year],
			DatePart(mm, IM.MovDate) [Month]
 		FROM
			Inserted IM
			JOIN Model M ON (IM.ModelID = M.IDModel)
		WHERE
			M.IDModelParent IS NOT NULL
		GROUP BY
			IM.StoreID,
			M.IDModelParent,
			IM.InventMovTypeID,
			DatePart(yy, IM.MovDate),
			DatePart(mm, IM.MovDate)
		) IT
		LEFT OUTER JOIN InventoryMovTotal IMT ON (IMT.StoreID = IT.StoreID AND IMT.ModelID = IT.ModelID AND IMT.InventMovTypeID = IT.InventMovTypeID AND IMT.[Year] = IT.[Year] AND IMT.[Month] = IT.[Month])
	WHERE
		IMT.StoreID IS NULL

----------------------------------------------------------------------------------------------------------------------------------
--	Atualiza o LastMovDate no Model, se for Insert and Update
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	M
SET
	M.LastMovDate  = IM.MovDate
FROM
	Inserted IM
	JOIN Model M ON (IM.ModelID = M.IDModel)
WHERE
	IsNull(M.LastMovDate,0)	< IM.MovDate

----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------
--	D E L E T E
----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------
--	Parte da Delecao do SerialMov
--	S� executa se for delete mesmo, nao se for update
----------------------------------------------------------------------------------------------------------------------------------

DELETE
	SM
FROM
	SerialMov SM
	JOIN Deleted IMD ON (IMD.IDInventoryMov = SM.InventoryMovID)
	LEFT OUTER JOIN Inserted IMI ON (IMI.IDInventoryMov = SM.InventoryMovID)
WHERE
	IMI.IDInventoryMov IS NULL

----------------------------------------------------------------------------------------------------------------------------------
--	INVENTORY: Atualiza o Custo medio no Inventory
----------------------------------------------------------------------------------------------------------------------------------

-- Nao Compra

UPDATE
	Inv
SET
	AvgCostTotal = AvgCostTotal - (IsNull(D.AvgCost, 0) * ISNULL((2*IsNull(IMT.UpdateOnHand, 0)-1) * IsNull(D.Qty, 0), 0))
FROM	
	Inventory Inv 
	INNER JOIN Deleted D ON (Inv.ModelID = D.ModelID AND Inv.StoreID = D.StoreID AND D.InventMovTypeID <> 2) 
	INNER JOIN InventoryMovType IMT ON (D.InventMovTypeID = IMT.IDInventMovType)

----------------------------------------------------------------------------------------------------------------------------------
--	INVENTORY:  Atualiza QtyOnHand
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	I
SET
	I.QtyOnHand 		= IsNull(I.QtyOnHand, 0) - Total.OnHand,
	I.QtyOnOrder 		= IsNull(I.QtyOnOrder, 0) - Total.OnOrder,
	I.QtyOnRepair 		= IsNull(I.QtyOnRepair, 0) - Total.OnRepair,
	I.QtyOnPrePurchase	= IsNull(I.QtyOnPrePurchase, 0) - Total.OnPrePurchase,
	I.QtyOnPreSale 		= IsNull(I.QtyOnPreSale, 0) - Total.OnPreSale
FROM
	(
	SELECT
		ModelID,
		StoreID,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnHand-1), 0) ) as OnHand,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnOrder-1), 0) ) as OnOrder,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnRepair-1), 0) ) as OnRepair,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPrePurchase-1), 0) ) as OnPrePurchase,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPreSale-1), 0) ) as OnPreSale
	FROM
		Deleted IM
		JOIN
		InventoryMovType IMT ON (IM.InventMovTypeID = IMT.IDInventMovType)
	GROUP BY
		ModelID,
		StoreID
	) Total
	JOIN
        Inventory I ON (Total.ModelID = I.ModelID AND Total.StoreID = I.StoreID)

----------------------------------------------------------------------------------------------------------------------------------
--	INVENTORY MASTER:  Atualiza QtyOnHand
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	I
SET
	I.QtyOnHand 		= IsNull(I.QtyOnHand, 0) - Total.OnHand,
	I.QtyOnOrder 		= IsNull(I.QtyOnOrder, 0) - Total.OnOrder,
	I.QtyOnRepair 		= IsNull(I.QtyOnRepair, 0) - Total.OnRepair,
	I.QtyOnPrePurchase	= IsNull(I.QtyOnPrePurchase, 0) - Total.OnPrePurchase,
	I.QtyOnPreSale 		= IsNull(I.QtyOnPreSale, 0) - Total.OnPreSale
FROM
	(
	SELECT
		M.IDModelParent as ModelID,
		IM.StoreID,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnHand-1), 0) ) as OnHand,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnOrder-1), 0) ) as OnOrder,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnRepair-1), 0) ) as OnRepair,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPrePurchase-1), 0) ) as OnPrePurchase,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPreSale-1), 0) ) as OnPreSale
	FROM
		Deleted IM
		JOIN Model M ON (IM.ModelID = M.IDModel)
		JOIN InventoryMovType IMT ON (IM.InventMovTypeID = IMT.IDInventMovType)
	WHERE
		M.IDModelParent IS NOT NULL
	GROUP BY
		M.IDModelParent,
		IM.StoreID
	) Total
	JOIN Inventory I ON (Total.ModelID = I.ModelID AND Total.StoreID = I.StoreID)

/* Atualiza o custo m�dio e o saldo de custo m�dio, caso a movimenta��o zere o estoque */

UPDATE
	Inv
SET
	StoreAvgPrice = 0,
	AvgCostTotal = 0
FROM	
	Inventory Inv 
	INNER JOIN Deleted D ON (Inv.ModelID = D.ModelID AND Inv.StoreID = D.StoreID AND D.InventMovTypeID <> 2) 
WHERE
	QtyOnHand = 0

----------------------------------------------------------------------------------------------------------------------------------
--	MODEL: Atualiza o Custo medio no model
----------------------------------------------------------------------------------------------------------------------------------

-- Nao Compra

UPDATE
	Model
SET
	AvgCostTotal = AvgCostTotal - (IsNull(D.AvgCost, 0) * ISNULL((2*IsNull(IMT.UpdateOnHand, 0)-1) * IsNull(D.Qty, 0), 0))
FROM	
	Model M 
	INNER JOIN Deleted D ON (M.IDModel = D.ModelID AND D.InventMovTypeID <> 2)
	INNER JOIN InventoryMovType IMT ON (D.InventMovTypeID = IMT.IDInventMovType)
	INNER JOIN Store ST ON (ST.IDStore = D.StoreID)
WHERE
	IsNull(ST.Franchise,0) = 0

----------------------------------------------------------------------------------------------------------------------------------
--	MODEL: Atualiza o Total no model
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	M
SET
	M.TotQtyOnHand		= IsNull(M.TotQtyOnHand, 0) - Total.OnHand,
	M.TotQtyOnOrder		= IsNull(M.TotQtyOnOrder, 0) - Total.OnOrder,
	M.TotQtyOnRepair 	= IsNull(M.TotQtyOnRepair, 0) - Total.OnRepair,
	M.TotQtyOnPrePurchase	= IsNull(M.TotQtyOnPrePurchase, 0) - Total.OnPrePurchase,
	M.TotQtyOnPreSale	= IsNull(M.TotQtyOnPreSale, 0) - Total.OnPreSale
FROM
	(
	SELECT
		ModelID,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnHand-1), 0) ) as OnHand,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnOrder-1), 0) ) as OnOrder,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnRepair-1), 0) ) as OnRepair,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPrePurchase-1), 0) ) as OnPrePurchase,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPreSale-1), 0) ) as OnPreSale
	FROM
		Deleted IM
		JOIN InventoryMovType IMT ON (IM.InventMovTypeID = IMT.IDInventMovType)
	GROUP BY
		ModelID
	) Total
	JOIN Model M ON (Total.ModelID = M.IDModel)

----------------------------------------------------------------------------------------------------------------------------------
--	MODEL MASTER: Atualiza o Total no model
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	M
SET
	M.TotQtyOnHand 		= IsNull(M.TotQtyOnHand, 0) - Total.OnHand,
	M.TotQtyOnOrder		= IsNull(M.TotQtyOnOrder, 0) - Total.OnOrder,
	M.TotQtyOnRepair 	= IsNull(M.TotQtyOnRepair, 0) - Total.OnRepair,
	M.TotQtyOnPrePurchase	= IsNull(M.TotQtyOnPrePurchase, 0) - Total.OnPrePurchase,
	M.TotQtyOnPreSale	= IsNull(M.TotQtyOnPreSale, 0) - Total.OnPreSale
FROM
	(
	SELECT
		IDModelParent,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnHand-1), 0) ) as OnHand,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnOrder-1), 0) ) as OnOrder,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnRepair-1), 0) ) as OnRepair,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPrePurchase-1), 0) ) as OnPrePurchase,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPreSale-1), 0) ) as OnPreSale
	FROM
		Deleted IM
		JOIN Model M ON (IM.ModelID = M.IDModel)
		JOIN InventoryMovType IMT ON (IM.InventMovTypeID = IMT.IDInventMovType)
	WHERE
		M.IDModelParent IS NOT NULL
	GROUP BY
		IDModelParent
	) Total
	JOIN Model M ON (Total.IDModelParent = M.IDModel)

/* Atualiza o custo m�dio e o saldo de custo m�dio, caso a movimenta��o zere o estoque */

UPDATE
	Model
SET
	AvgCost = 0,
	AvgCostTotal = 0
FROM	
	Model M 
	INNER JOIN Deleted D ON (M.IDModel = D.ModelID AND D.InventMovTypeID <> 2)	
	INNER JOIN Store ST ON (ST.IDStore = D.StoreID)
WHERE
	IsNull(ST.Franchise,0) = 0
	AND
	TotQtyOnHand = 0

----------------------------------------------------------------------------------------------------------------------------------
--	MODEL: Atualiza o InventoryMovTotals
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	IMT
SET
	IMT.TotQty = IsNull(IMT.TotQty, 0) - Total.Qty,
	IMT.TotSale = IsNull(IMT.TotSale, 0) - Total.Sale,
	IMT.TotCost = IsNull(IMT.TotCost, 0) - Total.Cost
FROM
	(
	SELECT
		IM.StoreID,
		IM.ModelID,
		IM.InventMovTypeID,
		DatePart(yy, IM.MovDate) as [Year],
		DatePart(mm, IM.MovDate) as [Month],
		SUM( IsNull( IM.Qty, 0 ) ) as Qty,
		SUM( IsNull( IM.Qty * IM.SalePrice, 0 )  - IsNull(IM.Discount , 0) ) as Sale,
		SUM( IsNull( IM.Qty * IM.CostPrice, 0) ) as Cost
	FROM
		Deleted IM
	GROUP BY
		IM.StoreID,
		IM.ModelID,
		IM.InventMovTypeID,
		DatePart(yy, IM.MovDate),
		DatePart(mm, IM.MovDate)
	) as Total
	JOIN InventoryMovTotal IMT
		ON (	Total.StoreID = IMT.StoreID
			AND
			Total.ModelID = IMT.ModelID
			AND
			Total.InventMovTypeID = IMT.InventMovTypeID
			AND
			Total.[Year] = IMT.[Year]
			AND
			Total.[Month] = IMT.[Month] )

----------------------------------------------------------------------------------------------------------------------------------
--	MASTER: Atualiza o InventoryMovTotals
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	IMT
SET
	IMT.TotQty = IsNull(IMT.TotQty, 0) - Total.Qty,
	IMT.TotSale = IsNull(IMT.TotSale, 0) - Total.Sale,
	IMT.TotCost = IsNull(IMT.TotCost, 0) - Total.Cost
FROM
	(
	SELECT
		IM.StoreID,
		M.IDModelParent as ModelID,
		IM.InventMovTypeID,
		DatePart(yy, IM.MovDate) as [Year],
		DatePart(mm, IM.MovDate) as [Month],
		SUM( IsNull( IM.Qty, 0 ) ) as Qty,
		SUM( IsNull( IM.Qty * IM.SalePrice, 0 )  - IsNull(IM.Discount , 0) ) as Sale,
		SUM( IsNull( IM.Qty * IM.CostPrice, 0) ) as Cost
	FROM
		Deleted IM
		JOIN
		Model M ON (IM.ModelID = M.IDModel)
	WHERE
		M.IDModelParent IS NOT NULL
	GROUP BY
		IM.StoreID,
		M.IDModelParent,
		IM.InventMovTypeID,
		DatePart(yy, IM.MovDate),
		DatePart(mm, IM.MovDate)
	) as Total
	JOIN InventoryMovTotal IMT
		ON (	Total.StoreID = IMT.StoreID
			AND
			Total.ModelID = IMT.ModelID
			AND
			Total.InventMovTypeID = IMT.InventMovTypeID
			AND
			Total.[Year] = IMT.[Year]
			AND
			Total.[Month] = IMT.[Month] )

----------------------------------------------------------------------------------------------------------------------------------
--	MODEL: Envia o item para a lixeira caso a quantidade fique zerada e o parametro do servidor for TRUE
----------------------------------------------------------------------------------------------------------------------------------

SELECT
	@SendTrash = CASE UPPER(SrvValue) WHEN 'TRUE' THEN 1 ELSE 0 END
FROM
	Param
WHERE
	IDParam = 84

IF @SendTrash = 1
BEGIN

	UPDATE
		M
	SET
		M.Desativado = 1
	FROM
		Deleted IM
		JOIN Model M ON (IM.ModelID = M.IDModel)
	WHERE
		M.TotQtyOnHand = 0
		AND
		M.SendToTrash = 1
END

----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------
--	I N S E R T
----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------
--	INVENTORY: Atualiza o Custo medio no Inventory
----------------------------------------------------------------------------------------------------------------------------------

-- Compra

UPDATE
	Inv
SET
	AvgCostTotal = IsNull(AvgCostTotal, 0) + (IsNull(I.AvgCost, 0) * ISNULL((2*IsNull(IMT.UpdateOnHand, 0)-1) * IsNull(I.Qty, 0), 0))
FROM	
	Inventory Inv 
	INNER JOIN Inserted I ON (Inv.ModelID = I.ModelID AND Inv.StoreID = I.StoreID AND I.InventMovTypeID <> 2) 
	INNER JOIN InventoryMovType IMT ON (I.InventMovTypeID = IMT.IDInventMovType)

----------------------------------------------------------------------------------------------------------------------------------
--	INVENTORY: Atualiza QtyOnHand
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	I
SET
	I.QtyOnHand 		= IsNull(I.QtyOnHand, 0) + Total.OnHand,
	I.QtyOnOrder 		= IsNull(I.QtyOnOrder, 0) + Total.OnOrder,
	I.QtyOnRepair 		= IsNull(I.QtyOnRepair, 0) + Total.OnRepair,
	I.QtyOnPrePurchase	= IsNull(I.QtyOnPrePurchase, 0) + Total.OnPrePurchase,
	I.QtyOnPreSale 		= IsNull(I.QtyOnPreSale, 0) + Total.OnPreSale
FROM
	(
	SELECT
		ModelID,
		StoreID,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnHand-1), 0) ) as OnHand,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnOrder-1), 0) ) as OnOrder,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnRepair-1), 0) ) as OnRepair,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPrePurchase-1), 0) ) as OnPrePurchase,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPreSale-1), 0) ) as OnPreSale
	FROM
		Inserted IM
		JOIN InventoryMovType IMT ON (IM.InventMovTypeID = IMT.IDInventMovType)
	GROUP BY
		ModelID,
		StoreID
	) Total
	JOIN
	Inventory I ON (Total.ModelID = I.ModelID AND Total.StoreID = I.StoreID)

----------------------------------------------------------------------------------------------------------------------------------
--	INVENTORY MASTER: Atualiza QtyOnHand
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	I
SET
	I.QtyOnHand 		= IsNull(I.QtyOnHand, 0) + Total.OnHand,
	I.QtyOnOrder 		= IsNull(I.QtyOnOrder, 0) + Total.OnOrder,
	I.QtyOnRepair 		= IsNull(I.QtyOnRepair, 0) + Total.OnRepair,
	I.QtyOnPrePurchase	= IsNull(I.QtyOnPrePurchase, 0) + Total.OnPrePurchase,
	I.QtyOnPreSale 		= IsNull(I.QtyOnPreSale, 0) + Total.OnPreSale
FROM
	(
	SELECT
		M.IDModelParent as ModelID,
		StoreID,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnHand-1), 0) ) as OnHand,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnOrder-1), 0) ) as OnOrder,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnRepair-1), 0) ) as OnRepair,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPrePurchase-1), 0) ) as OnPrePurchase,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPreSale-1), 0) ) as OnPreSale
	FROM
		Inserted IM
		JOIN Model M ON (IM.ModelID = M.IDModel)
		JOIN InventoryMovType IMT ON (IM.InventMovTypeID = IMT.IDInventMovType)
	WHERE
		M.IDModelParent IS NOT NULL

	GROUP BY
		M.IDModelParent,
		StoreID
	) Total
	JOIN Inventory I ON (Total.ModelID = I.ModelID AND Total.StoreID = I.StoreID)

/* Atualiza o custo m�dio e o saldo de custo m�dio, caso a movimenta��o zere o estoque */

UPDATE
	Inv
SET
	StoreAvgPrice = 0,
	AvgCostTotal = 0
FROM	
	Inventory Inv 
	INNER JOIN Inserted I ON (Inv.ModelID = I.ModelID AND Inv.StoreID = I.StoreID AND I.InventMovTypeID <> 2) 
WHERE
	QtyOnHand = 0	

----------------------------------------------------------------------------------------------------------------------------------
--	MODEL: Atualiza o Custo medio no model
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	Model
SET
	AvgCostTotal = IsNull(AvgCostTotal, 0) + (IsNull(I.AvgCost, 0) * ISNULL((2*IsNull(IMT.UpdateOnHand, 0)-1) * IsNull(I.Qty, 0), 0))
FROM	
	Model M 
	INNER JOIN Inserted I ON (M.IDModel = I.ModelID AND I.InventMovTypeID <> 2)
	INNER JOIN InventoryMovType IMT ON (I.InventMovTypeID = IMT.IDInventMovType)
	INNER JOIN Store ST ON (ST.IDStore = I.StoreID)
WHERE
	IsNull(ST.Franchise,0) = 0

----------------------------------------------------------------------------------------------------------------------------------
--	MODEL: Atualiza o Total no Model
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	M
SET
	M.TotQtyOnHand 		= IsNull(M.TotQtyOnHand, 0) + Total.OnHand,
	M.TotQtyOnOrder		= IsNull(M.TotQtyOnOrder, 0) + Total.OnOrder,
	M.TotQtyOnRepair 		= IsNull(M.TotQtyOnRepair, 0) + Total.OnRepair,
	M.TotQtyOnPrePurchase		= IsNull(M.TotQtyOnPrePurchase, 0) + Total.OnPrePurchase,
	M.TotQtyOnPreSale		= IsNull(M.TotQtyOnPreSale, 0) + Total.OnPreSale
FROM
	(
	SELECT
		ModelID,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnHand-1), 0) ) as OnHand,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnOrder-1), 0) ) as OnOrder,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnRepair-1), 0) ) as OnRepair,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPrePurchase-1), 0) ) as OnPrePurchase,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPreSale-1), 0) ) as OnPreSale
	FROM
		Inserted IM
		JOIN
		InventoryMovType IMT ON (IM.InventMovTypeID = IMT.IDInventMovType)
	GROUP BY
		ModelID
	) Total
	JOIN
	Model M ON (Total.ModelID = M.IDModel)

----------------------------------------------------------------------------------------------------------------------------------
--	MASTER: Atualiza o Total no Master
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	M
SET
	M.TotQtyOnHand 		= IsNull(M.TotQtyOnHand, 0) + Total.OnHand,
	M.TotQtyOnOrder		= IsNull(M.TotQtyOnOrder, 0) + Total.OnOrder,
	M.TotQtyOnRepair 	= IsNull(M.TotQtyOnRepair, 0) + Total.OnRepair,
	M.TotQtyOnPrePurchase	= IsNull(M.TotQtyOnPrePurchase, 0) + Total.OnPrePurchase,
	M.TotQtyOnPreSale	= IsNull(M.TotQtyOnPreSale, 0) + Total.OnPreSale
FROM
	(
	SELECT
		IDModelParent,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnHand-1), 0) ) as OnHand,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnOrder-1), 0) ) as OnOrder,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnRepair-1), 0) ) as OnRepair,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPrePurchase-1), 0) ) as OnPrePurchase,
		SUM( IsNull(IM.Qty * (2*IMT.UpdateOnPreSale-1), 0) ) as OnPreSale
	FROM
		Inserted IM
		JOIN Model M ON (IM.ModelID = M.IDModel)
		JOIN InventoryMovType IMT ON (IM.InventMovTypeID = IMT.IDInventMovType)
	WHERE
		M.IDModelParent IS NOT NULL
	GROUP BY
		IDModelParent
	) Total
	JOIN Model M ON (Total.IDModelParent = M.IDModel)

/* Atualiza o custo m�dio e o saldo de custo m�dio, caso a movimenta��o zere o estoque */

UPDATE
	Model
SET
	AvgCost = 0,
	AvgCostTotal = 0
FROM	
	Model M 
	INNER JOIN Inserted I ON (M.IDModel = I.ModelID AND I.InventMovTypeID <> 2)
	INNER JOIN Store ST ON (ST.IDStore = I.StoreID)
WHERE
	IsNull(ST.Franchise,0) = 0
	AND
	TotQtyOnHand = 0

----------------------------------------------------------------------------------------------------------------------------------
--	MODEL: Atualiza o InventoryMovTotals
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	IMT
SET
	IMT.TotQty = IsNull(IMT.TotQty, 0) + Total.Qty,
	IMT.TotSale = IsNull(IMT.TotSale, 0) + Total.Sale,
	IMT.TotCost = IsNull(IMT.TotCost, 0) + Total.Cost
FROM
	(
	SELECT
		IM.StoreID,
		IM.ModelID,
		IM.InventMovTypeID,
		DatePart(yy, IM.MovDate) as [Year],
		DatePart(mm, IM.MovDate) as [Month],
		SUM( IsNull( IM.Qty, 0 ) ) as Qty,
		SUM( IsNull( IM.Qty * IM.SalePrice, 0 )  - IsNull(IM.Discount , 0) ) as Sale,
		SUM( IsNull( IM.Qty * IM.CostPrice, 0) ) as Cost
	FROM
		Inserted IM
	GROUP BY
		IM.StoreID,
		IM.ModelID,
		IM.InventMovTypeID,
		DatePart(yy, IM.MovDate),
		DatePart(mm, IM.MovDate)
	) as Total
	JOIN InventoryMovTotal IMT
		ON (	Total.StoreID = IMT.StoreID
			AND
			Total.ModelID = IMT.ModelID
			AND
			Total.InventMovTypeID = IMT.InventMovTypeID
			AND
			Total.[Year] = IMT.[Year]
			AND
			Total.[Month] = IMT.[Month] )

----------------------------------------------------------------------------------------------------------------------------------
--	MASTER: Atualiza o InventoryMovTotals
----------------------------------------------------------------------------------------------------------------------------------

UPDATE
	IMT
SET
	IMT.TotQty = IsNull(IMT.TotQty, 0) + Total.Qty,
	IMT.TotSale = IsNull(IMT.TotSale, 0) + Total.Sale,
	IMT.TotCost = IsNull(IMT.TotCost, 0) + Total.Cost
FROM
	(
	SELECT
		IM.StoreID,
		M.IDModelParent as ModelID,
		IM.InventMovTypeID,
		DatePart(yy, IM.MovDate) as [Year],
		DatePart(mm, IM.MovDate) as [Month],
		SUM( IsNull( IM.Qty, 0 ) ) as Qty,
		SUM( IsNull( IM.Qty * IM.SalePrice, 0 )  - IsNull(IM.Discount , 0) ) as Sale,
		SUM( IsNull( IM.Qty * IM.CostPrice, 0) ) as Cost
	FROM
		Inserted IM
		JOIN
		Model M ON (IM.ModelID = M.IDModel)
	WHERE
		M.IDModelParent IS NOT NULL
	GROUP BY
		IM.StoreID,
		M.IDModelParent,
		IM.InventMovTypeID,
		DatePart(yy, IM.MovDate),
		DatePart(mm, IM.MovDate)
	) as Total
	JOIN InventoryMovTotal IMT ON (Total.StoreID = IMT.StoreID AND Total.ModelID = IMT.ModelID AND Total.InventMovTypeID = IMT.InventMovTypeID AND Total.[Year] = IMT.[Year] AND Total.[Month] = IMT.[Month])

----------------------------------------------------------------------------------------------------------------------------------
--	MODEL: Envia o item para a lixeira caso a quantidade fique zerada e o parametro do servidor for TRUE
----------------------------------------------------------------------------------------------------------------------------------

SELECT
	@SendTrash = CASE UPPER(SrvValue) WHEN 'TRUE' THEN 1 ELSE 0 END
FROM
	Param
WHERE
	IDParam = 84

IF @SendTrash = 1
BEGIN
	UPDATE
		M
	SET
		M.Desativado = 1
	FROM
		Inserted IM
		JOIN Model M ON (IM.ModelID = M.IDModel)
	WHERE
		M.TotQtyOnHand = 0
		AND
		M.SendToTrash = 1
END

GO
