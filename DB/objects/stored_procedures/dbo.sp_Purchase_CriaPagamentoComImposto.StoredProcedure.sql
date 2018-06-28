SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_Purchase_CriaPagamentoComImposto]
	(
	@IDPurchase	int
	)
AS

/* ----------------------------------------------------------------------------------------------------------------------
	SUMARIO

		- Deletar os lancamentos se precisar
		- Inserir as informacoes dos lancamentos
		- Inserir os desdobramentos nos lancamentos

	TABELA DE ERROS PARA RETURN_VALUE

		 000  Ok
		-201  Erro em Deletar os lancamentos anteriores
		-202  Erro em incluo o lancamento Parent

	LOG DE MODIFICAÇÕES

	Data		Programador			Modificação
	-----------------------	---------------------------------------------	-----------------------------------------------------------------
	24 Dez	2004		Rodrigo Costa		Criacao;
	22 Feb	2006		Maximiliano Muniz	Inserir lançamentos com base na Pur_PurchaseDueDate
	16 Jul	2008		Rodrigo Costa		Remover desdobramento de compras
	----------------------------------------------------------------------------------------------------------------- */

DECLARE @ErrorLevel		int
DECLARE @SysError		int
DECLARE @IDLancamentoParent	int
DECLARE @SubTotal		money
DECLARE @PercSubTotal		float
DECLARE @Freight		money
DECLARE @CriaDisbur		int

--Declaração de variáveis para o Cursor de Fin_Lancamento
DECLARE @Pagando		bit
DECLARE @IDLancamentoTipo	int 
DECLARE @DataLancamento		smalldatetime 
DECLARE @IDUsuarioLancamento	int 
DECLARE @Previsao		bit 
DECLARE @Situacao		int 
DECLARE @IDPessoaTipo		int 
DECLARE @IDPessoa		int 
DECLARE @IDEmpresa		int 
DECLARE @DataVencimento		smalldatetime 
DECLARE @DataEmissao		datetime 
DECLARE @IDDocumentoTipo	int 
DECLARE @ValorNominal		money 
DECLARE @NumDocumento		varchar(20)
DECLARE @IDMoeda		int 
DECLARE @IDMoedaCotacao		int 
DECLARE @IDLancamento		int
DECLARE @TotalDesdobramento	int
DECLARE @NumDesdobramento	varchar(10)
DECLARE @CountImposto		int
DECLARE @TotalImposto		money
DECLARE @IDPurchaseDueDate	int

SET @ErrorLevel = 0
SET @CriaDisbur = 0

-- Deleto os Lancamentos Filhos
DELETE 
FROM 
	Fin_Lancamento  
WHERE
	IDPurchase = @IDPurchase

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -201
	GOTO ERRO
END

-- Incluo o lancamento parent
--Declaração do Cursor de Fin_Lancamento
DECLARE Fin_Lancamento_Cursor CURSOR FOR
	
	SELECT
		1,
		7,  -- Cost of Good ## Davi
		IsNull(P.DateFinalReceiving, P.DatePreReceiving),
		IsNull(P.IDUserFinalReceiving, P.IDUserPreReceiving),
		1,  -- Nao approvado
		1,  -- Aberto
		2,  -- Vendor
		P.IDFornecedor,
		S.IDEmpresa,
		PDD.Date,
		P.DocumentDate,
		1002,  -- Vendor Invoice
		PDD.Amount, -- + ((PDD.Amount/IsNull(PT.SubTotal, 0))*IsNull(P.Freight, 0)) + ((PDD.Amount/IsNull(PT.SubTotal, 0))*IsNull(P.OtherCharges, 0)),
		P.DocumentNumber,
		P.IDPurchase,
		PDD.IDPurchaseDueDate,
		4, -- Dollar
		6 -- Cotacao Default - Dollar
	FROM
		Pur_Purchase P (NOLOCK) 
		JOIN Pur_PurchaseTotal PT (NOLOCK) ON (PT.IDPurchase = P.IDPurchase)
		JOIN Store S (NOLOCK) ON (P.IDStore = S.IDStore)
		JOIN Pur_PurchaseDueDate PDD (NOLOCK) ON (PDD.IDPurchase = P.IDPurchase)
	WHERE
		P.IDPurchase = @IDPurchase
		AND
		DocumentType = 'Invoice'
	
	
OPEN Fin_Lancamento_Cursor
	
--Inicialização de Fin_Lancamento_Cursor
FETCH NEXT FROM Fin_Lancamento_Cursor INTO
	@Pagando,
	@IDLancamentoTipo,
	@DataLancamento,
	@IDUsuarioLancamento,
	@Previsao,
	@Situacao,
	@IDPessoaTipo,
	@IDPessoa,
	@IDEmpresa,
	@DataVencimento,
	@DataEmissao,
	@IDDocumentoTipo,
	@ValorNominal,
	@NumDocumento,
	@IDPurchase,
	@IDPurchaseDueDate,
	@IDMoeda,
	@IDMoedaCotacao
--Enquanto tem registros
WHILE @@FETCH_STATUS = 0
BEGIN


	EXEC sp_Sis_GetNextCode 'Fin_Lancamento.IDLancamento', @IDLancamento OUTPUT
	INSERT Fin_Lancamento(
		IDLancamento,
		Pagando,
		IDLancamentoTipo,
		DataLancamento,
		IDUsuarioLancamento,
		Previsao,
		Situacao,
		IDPessoaTipo,
		IDPessoa,
		IDEmpresa,
		DataVencimento,
		DataEmissao,
		IDDocumentoTipo,
		ValorNominal,
		NumDocumento,
		IDPurchase,
		IDMoeda,
		IDMoedaCotacao
		)
	VALUES 
		(
		@IDLancamento,
		@Pagando,
		@IDLancamentoTipo,
		@DataLancamento,
		@IDUsuarioLancamento,
		@Previsao,
		@Situacao,
		@IDPessoaTipo,
		@IDPessoa,
		@IDEmpresa,
		@DataVencimento,
		@DataEmissao,
		@IDDocumentoTipo,
		@ValorNominal,
		@NumDocumento,
		@IDPurchase,
		@IDMoeda,
		@IDMoedaCotacao	
		)

	SET @SysError = @@ERROR
	IF @SysError <> 0
		BEGIN
			CLOSE Fin_Lancamento_Cursor
			DEALLOCATE Fin_Lancamento_Cursor
			SET @ErrorLevel = -202
			GOTO ERRO
		END


FETCH NEXT FROM Fin_Lancamento_Cursor INTO
		@Pagando,
		@IDLancamentoTipo,
		@DataLancamento,
		@IDUsuarioLancamento,
		@Previsao,
		@Situacao,
		@IDPessoaTipo,
		@IDPessoa,
		@IDEmpresa,
		@DataVencimento,
		@DataEmissao,
		@IDDocumentoTipo,
		@ValorNominal,
		@NumDocumento,
		@IDPurchase,
		@IDPurchaseDueDate,
		@IDMoeda,
		@IDMoedaCotacao
END
--fechamento do cursor
CLOSE Fin_Lancamento_Cursor
--Destruição do cursor
DEALLOCATE Fin_Lancamento_Cursor

OK:
	RETURN 0
ERRO:
	PRINT CAST(@ErrorLevel AS VARCHAR)

	DECLARE @ErrorLevelStr varchar(10)
	SET  @ErrorLevelStr =  CAST(@ErrorLevel AS VARCHAR)
	EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_Purchase_CriaPagamentoComImposto', @ErrorLevelStr

	RETURN @ErrorLevel
GO
