USE [MainRetailDB_Master]
GO
/****** Object:  StoredProcedure [dbo].[sp_PreSale_SubAddItem]    Script Date: 12/22/2015 15:53:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_PreSale_SubAddItem]
    (
    @PreSaleID      int,
    @IDCliente      int,
    @ModelID        int,
    @StoreID        int,
    @UserID         int,
    @IDComission        int,
    @Qty            float,
    @SalePrice      money,
    @CostPrice      money = Null,
    @Discount       money,
    @MovDate        smalldatetime,
    @IDPreInvMovExchange    int,
    @PreInvMovParentID  int,
    @IDDepartment       int,
    @Promo          bit,
    @IDDescriptionPrice int,
    @IDVendorPrice      int,
    @SuggPrice      int,
    @DocumentNumber     varchar(20),
    @IDDocumentType     int,
    @SequencyNum        int,
    @TotParcial     varchar(10),
    @DiscountPromo      money = 0,
    @UnitDiscount       money =0,
    @PreInventMovID     int = NULL Output,
    @ManualDiscount money = NULL,
    @IDSpecialPrice int = NULL,
    @ManualPrice money = NULL
    )
AS

/* -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    SUMMARY

        - Insert on Inventory Movement
        - Insert on Customer Credit
        - Insert quantities to exchange

    TABLE OF ERRORS FOR RETURN_VALUE

         000  Ok
        -201 Error on Insert Inventory Movement
        -203 Error Adding Models of PacketModel
        -204 Error on Insert in the Customer Credit
        -205 Error on Insert in the Customer Credit PackModel
        -206 Error on Insert quantities required to change PreInvMov
        -207 Error on Insert the quantities in exchange InvMov
        -208 Error on Insert SaleItemCommission
        -209 Error on Insert SaleItemCommission relating to the Kit item
        -210 Error on Insert Inv_MovPrice
        -211 Error on Insert Inv_MovDocument

    MODIFICATION LOG

    Data            Programador     Modificação
    ----------------------- ----------------------- -----------------------------------------------------------------
    15 May  2000        Eduardo Costa       Criacao;
    26 Jun  2001        Davi Gouveia        Log de Return Values;
    29 Oct  2003        Rodrigo Costa       Criado sp_Sis_GetNextCod;
    24 May  2004        André Bogado        Criado Cursor para KitModel;
    18 Aug  2004        Rodrigo Costa       Gravar error log;
    01 Dec  2004        Rodrigo Costa       Gravar no Customer Credit;
    01 Feb  2005        Rodrigo Costa       Inclusao do campo @IDPreInvMovExchange;
    11 Apr  2005        Rodrigo Costa       Inclusao do campo DesiredMarkup no PreInvMov;
    28 Nov  2005        Leonardo Riego      Gravar na SaleItemCommission;
    12 Apr  2006        Leonardo Riego      Novo campo @IDDepartment;
    16 Jun  2006        Rodrigo Costa       Adicionado os parametros para ErrorHistory;
    20 Jul  2007        Maximiliano Muniz   Novos parâmetros @IDDescriptionPrice, @IDVendorPrice e @SuggPrice;
                            Inserção na tabeça Inv_MovPrice;
    08 Aug  2007        Maximiliano Muniz   Novos parâmetros @DocumentNumber e @IDDocumentType;
                            Inserção na tabeça Inv_MovDocument;
    24 Aug  2009        Rodrigo Costa       Inclusao dos campos TotParcial e SequencyNum para o PAF-ECF
    19 Jan  2010        Eliandro Souza      Inclusão do Parametro @DiscountPromo
    10 Dec  2012        Antonio M F Souza   added UnitDiscount parameter
    19 Nov 2015         Antonio M F Souza   added canCombine variable to test condition to combine lines in cash register
    09 Dec 2015         Antonio M F Souza   combine lines totally reimplemented
    17 Dec 2015         Antonio M F Souza   working around manual discounts and other discounts ( promo, etc )
    ----------------------------------------------------------------------------------------------------------------- */

DECLARE @ComissionID        int
DECLARE @IDMovPrice     int
DECLARE @IDMovDocument      int
DECLARE @ErrorLevel     int
DECLARE @SysError       int
DECLARE @IDSaleItemCommission   int
DECLARE @IsNewPIM             boolean
DECLARE @IsUpdate           boolean
declare @canCombine boolean
declare @PriceAux float
declare @discountAux float


--Declaration of variables for ModelChild cursor
DECLARE @ModelIDChild   int
DECLARE @QtyChild       float
DECLARE @PreInvMovIDPack    int



SET @ErrorLevel = 0
-- set @my_tran_count = @@trancount;
-- BEGIN TRAN

/*-------------------------------------------------------------*/
/*      Possible insert on PreInventory Movement               */
/*-------------------------------------------------------------*/
/*
 * A PreInventoryMov row may or may not exist. If a PreInventMovID parameter
 * was passed in, use that for looking up the PreInventoryMov row, but do
 * not assume it exists. If PreInventMovID was not passed in, try searching
 * for an existing row with several other parameters (ModelID, UserID, etc.).
 * If a row is found, the quantity will be increased (i.e. each time add-item
 * is called, it increases quantity by the amount passed in, e.g. one).
 * If no row is found in either case, then @FoundIDPreInventoryMov will be
 * null, so a new PreInventoryMov row is be created.
 * In all cases, @PreInventMovID is set to the passed-in, found, or newly-
 * created PreInventoryMov row.
 */

-- There a small issue with the SP for the cash register: when you add in
-- the same item multiple times using the same user, it adds in the user,
-- multiple times, in the "Sales Person" column. It should only add more
-- than one user if there are multiple different users associated with the
-- item.

DECLARE @FoundIDPreInventoryMov int
DECLARE @OutIDPreInventoryMov int
DECLARE @FinalQty decimal (38,4)

set @IsNewPIM = 0;
set @canCombine = 0

-- Check the passed-in ID exists in the table or not.
select @FoundIDPreInventoryMov = @PreInventMovID
from PreInventoryMov
where IDPreInventoryMov = @PreInventMovID

IF (@FoundIDPreInventoryMov is not null) begin
    --print 'Already have preinventorymov, add or remove to existing quantity.'
    --print 'FoundIDPreInventoryMov: ' + coalesce(cast(@FoundIDPreInventoryMov as varchar), 'null')
    --print 'PreInventMovID: ' + coalesce(cast(@PreInventMovID as varchar), 'null')
    IF (@PreInventMovID IS NOT NULL)
    BEGIN
        SELECT @FinalQty  = @Qty
    END
    ELSE
    BEGIN
        SELECT @FinalQty  = [Qty] + @Qty FROM [dbo].[PreInventoryMov]
        WHERE IDPreInventoryMov = @FoundIDPreInventoryMov
    END
    
    SET @PreInventMovID = @FoundIDPreInventoryMov;
    SET @IsNewPIM = 0;

-- Antonio: combine lines reimplemented
end else begin --  - IdMov not found
         set @IsNewPIM = 1;
         
         declare @discountFound money
         declare @priceFound money
         declare @IdmodelFound int
         declare @movIDFound int
         declare @qtyFound decimal(38, 4)
         
         
         if ( @manualDiscount is null ) begin
            set @discountAux = 0
         end else begin
                 set @discountAux = @UnitDiscount
             end
             
         if (@ManualPrice is null) begin
             set @priceAux = 0
         end else begin
                  set @priceAux = @manualPrice
             end    
        
        -- price changed manually
        if ( @ManualPrice is not null ) begin        
			-- searching for an item that matches with discount
			select @movIDFound = dbo.PreInventoryMov.IDPreInventoryMov
				  ,@discountFound = isNull(dbo.PreinventoryMov.Discount, 0)
				  ,@priceFound = ISNULL(dbo.preinventoryMov.salePrice, 0)
				  ,@qtyFound = dbo.PreInventoryMov.Qty
				  ,@IdmodelFound = dbo.PreInventoryMov.ModelID
			FROM dbo.PreInventoryMov
			WHERE dbo.PreInventoryMov.ModelID = @ModelID
                  AND dbo.PreInventoryMov.UserID = @UserID
			      AND dbo.PreInventoryMov.DocumentID = @PreSaleID
			      AND dbo.PreInventoryMov.StoreID = @StoreID
                  AND dbo.PreInventoryMov.InventMovTypeID = 1
                  and dbo.PreinventoryMov.Discount = @discountAux -- also could have some discount
                  and dbo.PreInventoryMov.SalePrice = @priceAux
        
        
			if ( @idModelFound is not null ) begin
        
				  if ( @discountAux <> @discountFound ) begin
              
					  if ( @priceAux <> @priceFound ) begin
						  set @canCombine = 0
					  end
              
				  end else if ( @priceAux <> @priceFound ) begin
                       set @canCombine = 0
					  end else begin
                           set @canCombine = 1
                          end 
        
			 end else begin
					  set @canCombine = 0
				 end      
         
        -- manual price is null and is not a promo so, is a regular disccount
        end else if ( @manualDiscount is not null  ) begin
                     
     			 select @movidfound = dbo.preinventorymov.idpreinventorymov
						,@discountfound = isnull(dbo.preinventorymov.UnitDiscount, 0)
						,@pricefound = isnull(dbo.preinventorymov.saleprice, 0)
						,@qtyfound = dbo.preinventorymov.qty
						,@idmodelfound = dbo.preinventorymov.modelid
				  from dbo.preinventorymov
				  where dbo.preinventorymov.modelid = @modelid
					 and dbo.preinventorymov.userid = @userid
					 and dbo.preinventorymov.documentid = @presaleid
					 and dbo.preinventorymov.storeid = @storeid
					 and dbo.preinventorymov.inventmovtypeid = 1
					 and dbo.preinventorymov.UnitDiscount = @discountaux
					 
					 
					 if ( @idmodelfound is not null ) begin
					    if ( @discountfound <> @discountaux ) begin
					       set @cancombine = 0
					    end else begin
					          set @cancombine = 1  
					         end
                     end else begin
                         set @canCombine = 0
                     end
                     
						
				end else if ( @discountAux = 0 and @ManualPrice is null ) begin
        
									 -- to get original price to model
									declare @originalPrice money
		                        
									select @originalPrice = dbo.Model.SellingPrice from dbo.Model where IDModel = @ModelID
		                         
		                        
									select @movIDFound = dbo.PreInventoryMov.IDPreInventoryMov
										  ,@discountFound = isNull(dbo.PreinventoryMov.unitDiscount, 0)
										  ,@priceFound = ISNULL(dbo.preinventoryMov.salePrice, 0)
										  ,@qtyFound = dbo.PreInventoryMov.Qty
										  ,@IdmodelFound = dbo.PreInventoryMov.ModelID
									FROM dbo.PreInventoryMov
									WHERE dbo.PreInventoryMov.ModelID = @ModelID
											AND dbo.PreInventoryMov.UserID = @UserID
											AND dbo.PreInventoryMov.DocumentID = @PreSaleID
											AND dbo.PreInventoryMov.StoreID = @StoreID
											AND dbo.PreInventoryMov.InventMovTypeID = 1
											and dbo.PreinventoryMov.Discount = @discountAux
											and dbo.PreInventoryMov.SalePrice = @originalPrice
		                  
									if ( @IdmodelFound is not null ) begin
										if ( @discountFound  <> @discountAux ) begin
											set @canCombine = 0 
										end else begin
											   set @canCombine = 1
											end 
									end else begin
									        set @canCombine = 0
									    end
									 
	       -- promo				         
            end /*else if ( @SalePrice = 0 and @discountAux = 0 and @priceAux = 0) begin
                     
                    -- there is no manual price, neither manual discount but could have promotion
		            -- searching for an item that matches with discount calculations (i,e: promos )
					select @movIDFound = dbo.PreInventoryMov.IDPreInventoryMov
					       ,@discountFound = isNull(dbo.PreinventoryMov.UnitDiscount, 0)
					       ,@qtyFound = dbo.PreInventoryMov.Qty
					       ,@IdmodelFound = dbo.PreInventoryMov.ModelID
                    FROM dbo.PreInventoryMov
                    WHERE dbo.PreInventoryMov.ModelID = @ModelID
					     AND dbo.PreInventoryMov.UserID = @UserID
			             AND dbo.PreInventoryMov.DocumentID = @PreSaleID
			             AND dbo.PreInventoryMov.StoreID = @StoreID
                         AND dbo.PreInventoryMov.InventMovTypeID = 1
                  
                    if ( @discountAux = 0 ) begin
                        if ( @discountFound > 0 ) begin
					         set @discountAux = @discountFound       
	          		     end 
					end
					    
					    
					if ( @idModelFound is not null ) begin
					    if (@discountAux <> @discountFound) begin
					        set @canCombine = 0
					     end else begin
						          set  @canCombine = 1
						     end 
					     end else begin
					          set @canCombine = 0
						 end    
						   
		         end
		         */ 
                     
            
        -- combine lines if already exixts an ID in PreinventoryMov 
        IF ( @FoundIDPreInventoryMov is not null)  begin
			if ( @canCombine = 1 ) begin
               SET @PreInventMovID = @FoundIDPreInventoryMov;
               SELECT @FinalQty  = [Qty] + @Qty FROM [dbo].[PreInventoryMov] WHERE IDPreInventoryMov = @FoundIDPreInventoryMov;
               set @IsNewPIM = 0;
               print 'This has to be here to avoid a discount limit message.  No clue why.'
			end else if ( @canCombine = 0 ) begin
               SET @PreInventMovID = @FoundIDPreInventoryMov;
               SELECT @FinalQty  = @Qty
               set @IsNewPIM = 0;
			end
		-- combine lines if there is no a previous IdInventoryMov	
        end else begin
                 if ( @canCombine = 1 ) begin
                --print 'No preinventorymov yet, insert new row.'
                    -- this select get previous item that matches with discount conditions to line entered in cash register
                    
					SELECT @FinalQty  = @qtyFound + @Qty FROM [dbo].[PreInventoryMov] WHERE dbo.PreInventoryMov.IDPreInventoryMov = @movIDFound
					set @IsNewPIM = 1;
					EXEC sp_Sis_GetNextCode'PreInventoryMov.IDPreInventoryMov', @PreInventMovID OUTPUT;
					
					-- to clean up this record
					update PreInventoryMov set Qty = 0 where IDPreInventoryMov = @movIDFound
					
                 end else if ( @canCombine = 0 ) begin
					 --print 'No preinventorymov yet, insert new row.'
						  SET @FinalQty  = @Qty;
						  set @IsNewPIM = 1;
						  EXEC sp_Sis_GetNextCode'PreInventoryMov.IDPreInventoryMov', @PreInventMovID OUTPUT;
                     end      
            end
-- Antonio - combine lines reimplemented


    insert into PreInventoryMov
        (
        IDPreInventoryMov,
        InventMovTypeID,
        IDPessoa,
        DocumentID,
        ModelID,
        StoreID,
        MovDate,
        Qty,
        SalePrice,
        Discount,
        CostPrice,
        UserID,
        IDPreInvMovExchange,
        IDPreInventoryMovParent,
        IDDepartment,
        Promo,
        DesiredMarkup,
        SequencyNum,
        TotParcial,
        DiscountPromo,
        UnitDiscount
        )
        SELECT
            @PreInventMovID,
            1,
            @IDCliente,
            @PreSaleID,
            @ModelID,
            @StoreID,
            @MovDate,
            @Qty,
            @SalePrice,
            @Discount+@DiscountPromo,
            coalesce(@CostPrice, (M.VendorCost+M.OtherCost+M.FreightCost)) as CostPrice,
            @UserID,
            @IDPreInvMovExchange,
            @PreInvMovParentID,
            @IDDepartment,
            @Promo,
            TG.DesiredMarkup,
            @SequencyNum,
            @TotParcial,
            @DiscountPromo,
            @UnitDiscount
        FROM
            dbo.Model M
            JOIN TabGroup TG ON (TG.IDGroup = M.GroupID)
        WHERE
            M.IDModel = @ModelID;

    -- if @@rowcount == 0, the insert failed;
    -- Can't do this check here though, becuase nested begin/end have to be closed first.
    -- need to do better error handling.
    if @@rowcount = 0
    begin
        print 'PreInventoryMov insert did not create rows; did the Model and TabGroup rows exist?';
        -- set @ErrorLevel = -201;
        -- goto ERRO
    end



    -- select count(*) from PreInventoryMov where IDPreInventoryMov = @PreInventMovID;

END

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
    SET @ErrorLevel = -201
    GOTO ERRO
END

if @ManualDiscount is not null
begin
    delete from ManualDiscount
    where IDPreInventoryMov = @PreInventMovID

    insert into ManualDiscount (
        IDPreInventoryMov,
        ManualDiscount
    )
    values (
        @PreInventMovID,
        @ManualDiscount
    );
end

/*
 * Recalculate prices with the potentially-new quantity value.
 */
-- So that sp_PreSale_CalcPrice can work directly off the table and not the variable:
update PreInventoryMov
set Qty = @FinalQty
where IDPreInventoryMov = @PreInventMovID;

declare @OutPrice money;
declare @OutCost money;

/*
declare @tablevar table(Price money);
insert into @tablevar(Price)
    EXEC [dbo].[sp_PreSale_CalcPrice] @ModelID, @StoreID, @FinalQty,
    @PreInventMovID, @IDSpecialPrice, @ManualPrice;
SELECT @OutPrice = Price FROM @tablevar;
*/
if (@ManualPrice is not null)
begin
    merge ManualPrice as target
    using (select @PreInventMovID, @ManualPrice)
        as source (id_preinventorymov,  manual_price)
    on (target.IDPreInventoryMov = source.id_preinventorymov
        and target.IDPreInventoryMov = source.id_preinventorymov)
    when matched then
        update set ManualPrice = source.manual_price
    when not matched then
        insert (IDPreInventoryMov, ManualPrice)
        values (
            source.id_preinventorymov,
            source.manual_price
        );
end;

-- select @OutPrice = dbo.fn_CalcPrice(@PreInventMovID, @IDSpecialPrice);
-- select @OutCost = Finalcost from Model where IDModel = @ModelID;

if (@FinalQty = 0)
begin
    delete from PreInventoryMov where IDPreInventoryMov = @PreInventMovID
end
else
begin
    /*
     * Update prices on all items, since adding one may affect the others
     * due to quantity price breaks.
     */
    update PreInventoryMov
    set SalePrice = dbo.fn_CalcPrice(
            IDPreInventoryMov, (
                -- Only pass in the IDSpecialPrice for the one line item that is
                -- associated with this *_SubAddItem call, otherwise null.
                -- A better solution would be to store the IDSpecialPrice
                -- in an associated table, because otherwise an item will only
                -- have the specialprice until a different item is added (and
                -- it has its price recalculated without the specialprice).
                case when IDPreInventoryMov = @PreInventMovID then
                    @IDSpecialPrice
                else
                    null
                end
            )
        ),
        CostPrice = (select FinalCost from Model where IDModel = ModelID)
    where DocumentID = (
        select top 1 DocumentID
        from PreInventoryMov
        where IDPreInventoryMov = @PreInventMovID
    );

end

-- Call every time (i.e. temporarily disable IDParam 118.
-- exec sp_PreSale_SetDiscount @PreSaleID;

/*
 * IDParam 118 is "Calculate discounts on Finalization Only", which controls
 * whether discounts are calculated after each item addition, or just at order
 * finalization. The two valid values are 'Item' (default) or 'Sale'.
 */
declare @UpdateDiscounts char(4);
select @UpdateDiscounts = SrvValue from Param where IDParam = 118;
if @UpdateDiscounts <> 'Sale'
begin
    -- insert into ManualDiscount values (55137, 9.99)
    exec sp_PreSale_SetDiscount @PreSaleID
end



/*****************************************************************************************
    Inclusion of amounts for exchange
******************************************************************************************/
IF (@IDPreInvMovExchange IS NOT NULL)
BEGIN
    --Pre Inv Mov
    UPDATE
        PreInventoryMov
    SET
        QtyExchanged = IsNull(QtyExchanged,0) + ABS(@Qty)
    WHERE
        IDPreInventoryMov = @IDPreInvMovExchange
        AND
        InventMovTypeID = 1

    SET @SysError = @@ERROR
    IF @SysError <> 0
    BEGIN
        SET @ErrorLevel = -206
        GOTO ERRO
    END

    -- Inv Mov
    UPDATE
        InventoryMov
    SET
        QtyExchanged = IsNull(QtyExchanged,0) + ABS(@Qty)
    WHERE
        PreInventoryMovID = @IDPreInvMovExchange
        AND
        InventMovTypeID = 1

    SET @SysError = @@ERROR
    IF @SysError <> 0
    BEGIN
        SET @ErrorLevel = -207
        GOTO ERRO
    END
END


-- Return all records or just item based on input.
IF @PreInventMovID IS NOT NULL
BEGIN
 SELECT PIM.idpreinventorymov, M.IDModel, M.Model, M.Description, PIM.SalePrice,
 PIM.CostPrice, PIM.UnitDiscount, PIM.Discount, PIM.Promo, PIM.Qty,
 round((PIM.Qty * PIM.UnitDiscount), 2) as ExtDiscount,
 round((PIM.Qty * PIM.SalePrice), 2) as ExtPrice,
 (round((PIM.Qty * PIM.SalePrice), 2) - round((PIM.Qty * PIM.UnitDiscount), 2)) as LineSubTotal,
 TC.Tax
  FROM preinventorymov PIM
   join Model M on (PIM.modelid = M.idmodel)
        join StoreToTabGroup STTG on (M.GroupID = STTG.IDGroup and PIM.StoreID = STTG.IDStore)
            join TaxCategory TC on (STTG.IDTaxCategory = TC.IDTaxCategory)
  WHERE PIM.InventMovTypeID = 1 and PIM.IDPreInventoryMov = @PreInventMovID
END
ELSE
BEGIN
 SELECT PIM.idpreinventorymov, M.IDModel, M.Model, M.Description, PIM.SalePrice,
 PIM.CostPrice, PIM.UnitDiscount, PIM.Discount, PIM.Promo, PIM.Qty,
 round((PIM.Qty * PIM.UnitDiscount), 2) as ExtDiscount,
 round((PIM.Qty * PIM.SalePrice), 2) as ExtPrice,
 (round((PIM.Qty * PIM.SalePrice), 2) - round((PIM.Qty * PIM.UnitDiscount), 2)) as LineSubTotal,
 TC.Tax
  FROM preinventorymov PIM
   join Model M on (PIM.modelid = M.idmodel)
        join StoreToTabGroup STTG on (M.GroupID = STTG.IDGroup and PIM.StoreID = STTG.IDStore)
            join TaxCategory TC on (STTG.IDTaxCategory = TC.IDTaxCategory)
  WHERE PIM.InventMovTypeID = 1 and PIM.DocumentID = @PreSaleID
END


/*****************************************************************************************
    Inclusion of Commissions on the SaleItemCommission table
******************************************************************************************/
if @IsNewPIM = 1 begin
    print 'IsNewPIM = 1, so create saleItemcommission row with PreInventMovID = ' + cast(@PreInventMovID as varchar);


    EXEC sp_Sis_GetNextCode'SaleItemCommission.IDSaleItemCommission', @IDSaleItemCommission OUTPUT

    INSERT INTO dbo.SaleItemCommission
        (
         IDSaleItemCommission,
         IDPreInventoryMov,
         IDCommission,
         CommissionPercent
        )
        VALUES
        (
         @IDSaleItemCommission,
         @PreInventMovID,
         @IDComission,
         100
        )

    SET @SysError = @@ERROR
    IF @SysError <> 0
    BEGIN
        SET @ErrorLevel = -208
        GOTO ERRO
    END
end

/*****************************************************************************************
    Inclusion of the Inv_MovPrice table
******************************************************************************************/
IF @IDDescriptionPrice <> 0
BEGIN
    EXEC sp_Sis_GetNextCode 'Inv_MovPrice.IDMovPrice', @IDMovPrice OUTPUT
    INSERT INTO Inv_MovPrice
        (
        IDMovPrice,
        IDPreInventoryMov,
        IDInventoryMov,
        IDDescriptionPrice,
        IDVendor,
        SuggPrice
        )
        VALUES
        (
        @IDMovPrice,
        @PreInventMovID,
        NULL,
        @IDDescriptionPrice,
        @IDVendorPrice,
        @SuggPrice
        )

    SET @SysError = @@ERROR
    IF @SysError <> 0
    BEGIN
        SET @ErrorLevel = -210
        GOTO ERRO
    END
END

/*****************************************************************************************
    Inclusão na tabela de Inv_MovDocument
******************************************************************************************/
IF @DocumentNumber <> ''
BEGIN
    EXEC sp_Sis_GetNextCode 'Inv_MovDocument.IDMovDocument', @IDMovDocument OUTPUT
    INSERT INTO Inv_MovDocument
        (
        IDMovDocument,
        IDPreInventoryMov,
        IDInventoryMov,
        DocumentNumber,
        DocumentDate,
        DocumentStatus,
        IDDocumentType,
        OBS
        )
        VALUES
        (
        @IDMovDocument,
        @PreInventMovID,
        NULL,
        @DocumentNumber,
        @MovDate,
        1,
        @IDDocumentType,
        NULL
        )

    SET @SysError = @@ERROR
    IF @SysError <> 0
    BEGIN
        SET @ErrorLevel = -211
        GOTO ERRO
    END
END


/*****************************************************************************************
    Inclusão dos Creditos para o modelo caso tenha
******************************************************************************************/
if @IsNewPIM = 1 begin
    EXEC sp_PreSale_AddModelCredit
                @PreInventMovID,
                @IDCliente,
                @UserID,
                @StoreID,
                @MovDate;
end

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
    SET @ErrorLevel = -204
    GOTO ERRO
END


/*****************************************************************************************
    Inclusão de Models de PacketModel
******************************************************************************************/

--Declaração do Cursor de ModelChild

DECLARE ModelChild_Cursor CURSOR FOR

    SELECT
        M.IDModel,
        P.Qty
    FROM
        dbo.PackModel P (NOLOCK)
        JOIN dbo.Model M (NOLOCK) ON (P.IDModel= M.IDModel)
    WHERE
        P.IDPackModel = @ModelID


OPEN ModelChild_Cursor

--Inicialização de ModelChild_Cursor
FETCH NEXT FROM ModelChild_Cursor INTO
    @ModelIDChild,
    @QtyChild

--Enquanto tem registros
WHILE
@@FETCH_STATUS = 0
BEGIN
    EXEC sp_Sis_GetNextCode'PreInventoryMov.IDPreInventoryMov', @PreInvMovIDPack OUTPUT

    INSERT dbo.PreInventoryMov
    (
    IDPreInventoryMov,
    InventMovTypeID,
    IDPessoa,
    DocumentID,
    ModelID,
    StoreID,
    MovDate,
    Qty,
    SalePrice,
    Discount,
    CostPrice,
    UserID,
    IDParentPack,
    IDDepartment
    )
    SELECT
        @PreInvMovIDPack,
        1,
        @IDCliente,
        @PreSaleID,
        @ModelIDChild,
        @StoreID,
        @MovDate,
        @Qty * @QtyChild,--Qtde Comprada x Qtde do Kit
        0,
        0,
        FinalCost,
        @UserID,
        @PreInventMovID,
        @IDDepartment
    FROM
        dbo.Model (NOLOCK)
    WHERE
        dbo.Model.IDModel = @ModelIDChild


    SET @SysError = @@ERROR
    IF @SysError <> 0
    BEGIN
        CLOSE ModelChild_Cursor
        DEALLOCATE ModelChild_Cursor
        SET @ErrorLevel = -203
        GOTO ERRO
    END

    /*****************************************************************************************
                   Inclusão do Comissionado na tabela de SaleItemCommission
        ******************************************************************************************/
        EXEC sp_Sis_GetNextCode'SaleItemCommission.IDSaleItemCommission', @IDSaleItemCommission OUTPUT
        INSERT INTO dbo.SaleItemCommission
    (
     IDSaleItemCommission,
     IDPreInventoryMov,
     IDCommission,
     CommissionPercent
    )
    VALUES
    (
     @IDSaleItemCommission,
     @PreInvMovIDPack,
     @IDComission,
     100
    )

        SET @SysError = @@ERROR
        IF @SysError <> 0
        BEGIN
        SET @ErrorLevel = -209
        GOTO ERRO
        END

    /*****************************************************************************************
        Inclusão dos Creditos dos item do pack caso tenha
    ******************************************************************************************/
    EXEC sp_PreSale_AddModelCredit
            @PreInvMovIDPack,
            @IDCliente,
            @UserID,
            @StoreID,

            @MovDate


    SET @SysError = @@ERROR
    IF @SysError <> 0
    BEGIN
        SET @ErrorLevel = -205
        GOTO ERRO
    END

    --Leitura do Proximo
    FETCH NEXT FROM ModelChild_Cursor INTO
        @ModelIDChild,
        @QtyChild

END
--fechamento do cursor
CLOSE ModelChild_Cursor

--Destruição do cursor
DEALLOCATE ModelChild_Cursor

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
    SET @ErrorLevel = -203
    GOTO ERRO
END


OK:
    --COMMIT TRAN
    RETURN 0
ERRO:
    PRINT CAST(@ErrorLevel AS VARCHAR)
    ROLLBACK TRAN

    DECLARE @ErrorLevelStr varchar(510)
    DECLARE @Params varchar(500)
    SET @Params = ' [ @IDCliente = ' + CAST(@IDCliente AS VARCHAR) + ' @ModelID = ' + CAST(@ModelID AS VARCHAR) +
            ' @StoreID = ' + CAST(@StoreID AS VARCHAR) + ' @UserID = '  + CAST(@UserID AS VARCHAR) +
            ' @IDComission = '  + CAST(@IDComission AS VARCHAR) + ' @Qty = '  + CAST(@Qty AS VARCHAR) +
            ' @IDPreInvMovExchange = '  + CAST(@IDPreInvMovExchange AS VARCHAR) +
            ' @PreInvMovParentID = '  + CAST(@PreInvMovParentID AS VARCHAR) +
            ' @IDDepartment = '  + CAST(@IDDepartment AS VARCHAR) +  ' ] '
    SET  @ErrorLevelStr =  CAST(@ErrorLevel AS VARCHAR) + @Params
    EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_PreSale_SubAddItem', @ErrorLevelStr

    RETURN @ErrorLevel


-- Create sprocs for Sal_Coupon

set xact_abort on;
