if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_CashRegister_Quita_Invoice]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_CashRegister_Quita_Invoice]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_CashRegister_Quita_Lancamento]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_CashRegister_Quita_Lancamento]
GO

CREATE PROCEDURE sp_CashRegister_Quita_Lancamento
	(
	@IDUsuario		int,
	@Date			Datetime,
	@IDCashRegMovClosed int
	)
AS

/* ---------------------------------------------------------------------------------------------------------------------
	SUMARIO

		- Insere os registros de quitacao, para os invoices
		- Insiro os Account Payable com as taxas de admim
                - Insere as ligacoes entre Lancamento e Quitacao
		- Atualiza Fin_lancamento com o caixa no qual foi quitado

	TABELA DE ERROS PARA RETURN_VALUE

		 000  Ok
		-201  Erro em Insere os registros de quitacao, para os invoices
		-202  Erro em Insiro os Account Payable com as taxas de admim
		-203  Erro em Insere as ligacoes entre Lancamento e Quitacao
		-204  Erro em Atualiza Fin_lancamento com o caixa no qual foi quitado


	LOG DE MODIFICA��ES

	Data			Programador		Modifica��o
	-----------------------	-----------------------	----------------------------------------------------------------
	27 Oct	2004		Carlos Lima		Cria��o
	17 Aug	2006		Maximiliano Muniz	Filtro pelo campo "PayOnCashRegClose" na carga dos cursores;
							O campo "PrazoRecebimento" agora � pego do MeioPag direto.
	---------------------------------------------------------------------------------------------------------------- */

DECLARE @ErrorLevel 	INT
DECLARE @SysError	INT

SET @ErrorLevel = 0

/*--------------------------------------------------------------------------------------------------------*/
/*	       Quita os lancamentos         			  	*/
/*--------------------------------------------------------------------------------------------------------*/

-- Insere os registros de quitacao, para os invoices
-- Altera��es de sp_Sis_GetNextCode
SET NOCOUNT ON
-- Vari�veis de Fin_Quitacao
DECLARE @IDQuitacao 		Int
DECLARE @Pagando 		TBit
DECLARE @DataQuitacao 		smalldatetime
DECLARE @ValorQuitacao 		TValor
DECLARE @IDQuitacaoMeio 	int
DECLARE @IDUsuarioQuitacao 	int
DECLARE @ValorJuros 		TValor
DECLARE @NumeroMeioQuit 	TCodigoGeral
DECLARE @IDContaCorrente 	int
DECLARE @SparrowInt 		int

--Vari�veis de Fin_Lancamento
DECLARE @IDLancamento			int
DECLARE @DataVencimento			smalldatetime
DECLARE @DataLancamento			smalldatetime
DECLARE @ValorNominal			TValor
DECLARE @IDQuitacaoMeioPrevisto		int
DECLARE @IDUsuarioLancamento		int
DECLARE @IDContaCorrentePrevista	int
DECLARE @IDEmpresa			int
DECLARE @IDPessoa 			int
DECLARE @IDPessoaTipo 			int 
DECLARE @IDLancamentoTipo 		int 
DECLARE @IDCashRegMov			int
DECLARE @SaleCode			varchar(10)

--Declara��o do Cursor de Fin_Quitacao
DECLARE Fin_Quitacao_Cursor CURSOR FOR 
	(SELECT
		0,
		DateAdd(Day, MP.PrazoRecebimento, @Date ),
		0, -- A LancQuit ira atualizar corretamente este valor
		MP.IDMeioPagBatch,
		@IDUsuario,
		0,
		Convert(Varchar(20), L.IDCashRegMov),
		MPTS.IDContaCorrente,
		L.IDCashRegMov
	FROM
		#CloseCash CC
		JOIN
		Fin_Lancamento L on (CC.IDlancamento = L.IDLancamento and CC.IDCashRegMov = L.IDCashRegMov)
		JOIN
		Invoice I on ( I.IDPresale = L.IDPreSale )
		JOIN 
		MeioPag MP on ( MP.IDMeioPag = L.IDQuitacaoMeioPrevisto )
		JOIN 
		MeioPag MPB on ( MPB.IDMeioPag = MP.IDMeioPagBatch )
		JOIN 
		MeioPagToStore MPTS ON (MPTS.IDMeioPag = MP.IDMeioPagBatch AND MPTS.IDStore = I.IDStore)
	WHERE
		L.DataVencimento = CONVERT(smalldatetime, CONVERT(varchar, @Date, 103), 103) -- Somente os lancamento a vista
		AND MP.IDMeioPagBatch IS NOT NULL
		AND MP.PayOnCashRegClose = 1
	GROUP BY
		DateAdd(Day, MP.PrazoRecebimento, @Date ),
		MP.IDMeioPagBatch,
		Convert(Varchar(20), L.IDCashRegMov),
		MPTS.IDContaCorrente,
		L.IDCashRegMov
	)
-- Abertura do Cursor
OPEN Fin_Quitacao_Cursor
-- Inicializa��o do Cursor
FETCH NEXT FROM Fin_Quitacao_Cursor INTO  
		@Pagando,
		@DataQuitacao,
		@ValorQuitacao,
		@IDQuitacaoMeio,
		@IDUsuarioQuitacao ,
		@ValorJuros ,
		@NumeroMeioQuit,
		@IDContaCorrente,
		@SparrowInt
-- Enquanto tem registros
WHILE @@FETCH_STATUS = 0
BEGIN
/******************************************************************************
	Obtenho o @IDQuitacao
*******************************************************************************/
	EXEC sp_Sis_GetNextCode 'Fin_Quitacao.IDQuitacao', @IDQuitacao OUTPUT

	INSERT
		Fin_Quitacao
		(
		IDQuitacao,
		Pagando,
		DataQuitacao,
		ValorQuitacao,
		IDQuitacaoMeio,
		IDUsuarioQuitacao,
		ValorJuros,
		NumeroMeioQuit,
		IDContaCorrente,
		SparrowInt
 		)
	VALUES 
		(	
		@IDQuitacao, 
		@Pagando,
		@DataQuitacao,
		@ValorQuitacao,
		@IDQuitacaoMeio,
		@IDUsuarioQuitacao ,
		@ValorJuros ,
		@NumeroMeioQuit,
		@IDContaCorrente,
		@SparrowInt )
	-- leitura do pr�ximo
	FETCH NEXT FROM Fin_Quitacao_Cursor INTO 

		@Pagando,
		@DataQuitacao,
		@ValorQuitacao,
		@IDQuitacaoMeio,
		@IDUsuarioQuitacao ,
		@ValorJuros ,
		@NumeroMeioQuit,
		@IDContaCorrente,
		@SparrowInt
END
-- fechamento do cursor
CLOSE Fin_Quitacao_Cursor
-- destrui��o do cursor
DEALLOCATE Fin_Quitacao_Cursor
SET NOCOUNT OFF

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -201
	GOTO ERRO
END
/******************************************************************************
		Insiro os Account Payable com as taxas de admim
*******************************************************************************/
--Declara��o do Cursor de Fin_Quitacao
DECLARE Fin_Lancamento_Cursor CURSOR FOR 
	SELECT	
		1,
		DateAdd(Day, MP.PrazoRecebimento, @Date ),
		@Date,
		SUM( L.ValorNominal * (IsNull(MPB.TaxaAdmin, 0)/100) ),
		MP.IDMeioPag,
		@IDUsuario,
		MPTS.IDContaCorrente,
		CC.IDEmpresa,
		MPB.IDPessoa,
		P.IDTipoPessoa,
		MPB.IDLancamentoTipo,
		L.IDCashRegMov
	FROM
		#CloseCash TCC
		JOIN
		Fin_Lancamento L on (TCC.IDlancamento = L.IDLancamento and TCC.IDCashRegMov = L.IDCashRegMov)
		JOIN 
		Invoice I on ( I.IDPresale = L.IDPreSale )
		JOIN 
		MeioPag MP on ( MP.IDMeioPag = L.IDQuitacaoMeioPrevisto )
		JOIN 
		MeioPag MPB on ( MPB.IDMeioPag = MP.IDMeioPagBatch )
		JOIN 
		MeioPagToStore MPTS ON (MPTS.IDMeioPag = MP.IDMeioPagBatch AND MPTS.IDStore = I.IDStore)
		JOIN 
		Fin_ContaCorrente CC ON (MPTS.IDContaCorrente = CC.IDContaCorrente)
		JOIN 
		Pessoa P ON (MPB.IDPessoa = P.IDPessoa)
	WHERE
		MPB.AutoDiscountFee = 1
		AND
		L.DataVencimento = CONVERT(smalldatetime, CONVERT(varchar, @Date, 103), 103) -- Somente os lancamento a vista
		AND
		MPB.IDLancamentoTipo IS NOT NULL
		AND
		MPB.IDPessoa IS NOT NULL
		AND
		IsNull(MPB.TaxaAdmin, 0) <> 0
	GROUP BY
		DateAdd(Day, MP.PrazoRecebimento, @Date ),
		MP.IDMeioPag,
		MPTS.IDContaCorrente,
		CC.IDEmpresa,
		MPB.IDPessoa,
		P.IDTipoPessoa,
		MPB.IDLancamentoTipo,
		L.IDCashRegMov
	
-- Abertura do Cursor
OPEN Fin_Lancamento_Cursor
-- Inicializa��o do Cursor
FETCH NEXT FROM Fin_Lancamento_Cursor INTO  
	@Pagando,
	@DataVencimento,
	@DataLancamento,
	@ValorNominal,
	@IDQuitacaoMeioPrevisto,
	@IDUsuarioLancamento,
	@IDContaCorrentePrevista,
	@IDEmpresa,
	@IDPessoa,
	@IDPessoaTipo,
	@IDLancamentoTipo,
	@IDCashRegMov

-- Enquanto tem registros
WHILE @@FETCH_STATUS = 0
BEGIN
/******************************************************************************
	Obtenho o @IDLancamento
*******************************************************************************/
	EXEC sp_Sis_GetNextCode 'Fin_Lancamento.IDLancamento', @IDLancamento OUTPUT

	INSERT
		Fin_Lancamento
		(
		IDLancamento,
		Pagando,
		DataVencimento,
		DataLancamento,
		ValorNominal,
		IDQuitacaoMeioPrevisto,
		IDUsuarioLancamento,
		IDContaCorrentePrevista,
		IDEmpresa,
		IDPessoa,
		IDPessoaTipo,
		IDLancamentoTipo,
		IDCashRegMov,
		Situacao
 		)
	VALUES	
		(
		@IDLancamento,
		@Pagando,
		@DataVencimento,
		@DataLancamento,
		@ValorNominal,
		@IDQuitacaoMeioPrevisto,
		@IDUsuarioLancamento,
		@IDContaCorrentePrevista,
		@IDEmpresa,
		@IDPessoa,
		@IDPessoaTipo,
		@IDLancamentoTipo,
		@IDCashRegMov,
		1 --aberto
		)

	-- leitura do pr�ximo
	FETCH NEXT FROM Fin_Lancamento_Cursor INTO  
		@Pagando,
		@DataVencimento,
		@DataLancamento,
		@ValorNominal,
		@IDQuitacaoMeioPrevisto,
		@IDUsuarioLancamento,
		@IDContaCorrentePrevista,
		@IDEmpresa,
		@IDPessoa,
		@IDPessoaTipo,
		@IDLancamentoTipo,
		@IDCashRegMov
END-- fechamento do cursor
CLOSE Fin_Lancamento_Cursor
-- destrui��o do cursor
DEALLOCATE Fin_Lancamento_Cursor
SET NOCOUNT OFF

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
                SET @ErrorLevel = -202
                GOTO ERRO
END

/******************************************************************************
		Insere as ligacoes entre Lancamento e Quitacao
*******************************************************************************/
INSERT	
	Fin_LancQuit
	(
	IDLancamento,
	IDQuitacao,
	ValorQuitado,
	DataQuitacao,
	ValorJuros,
	IDUsuarioQuitacao
	)
	SELECT
		L.IDLancamento,
		Q.IDQuitacao,
		L.ValorNominal,
		@Date,
		0,
		@IDUsuario
	FROM
		#CloseCash TCC
		JOIN
		Fin_Lancamento L ON (TCC.IDlancamento = L.IDLancamento and TCC.IDCashRegMov = L.IDCashRegMov)
		JOIN
		MeioPag MP ON (L.IDQuitacaoMeioPrevisto = MP.IDMeioPag)
		JOIN
		Fin_Quitacao Q ON (MP.IDMeioPagBatch = Q.IDQuitacaoMeio and Q.SparrowInt = L.IDCashRegMov)
	WHERE
		Q.IDQuitacao NOT IN 
			(
			SELECT
				IDQuitacao	
			FROM
				Fin_LancQuit
			)
		AND
		L.DataVencimento = CONVERT(smalldatetime, CONVERT(varchar, @Date, 103), 103) -- Somente os lancamento a vista


SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -203
	GOTO ERRO
END

/***************************************************************************************
	Atualiza Fin_lancamento com o caixa no qual foi quitado
****************************************************************************************/

UPDATE	
	Fin_Lancamento
SET	IDCashRegMovClosed = @IDCashRegMovClosed
FROM	
	#CloseCash
WHERE
	Fin_Lancamento.IDLancamento = #CloseCash.IDLancamento

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -204
	GOTO ERRO
END



OK:
	RETURN 0

ERRO:
	PRINT CAST(@ErrorLevel AS VARCHAR)
	RETURN @ErrorLevel

	DECLARE @ErrorLevelStr varchar(10)
	SET  @ErrorLevelStr =  CAST(@ErrorLevel AS VARCHAR)
	EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_CashRegister_Quita_Lancamento', @ErrorLevelStr

	RETURN @ErrorLevel
GO

CREATE PROCEDURE sp_CashRegister_Quita_Invoice
	(
	@IDCashRegMov	int,
	@IDUsuario	int,
	@Date		Datetime
	) AS

/* ----------------------------------------------------------------------------------------------------------------------
	SUMARIO

		- Insere os registros de quitacao, para os invoices
		- Insiro os Account Payable com as taxas de admim
		- Insere as ligacoes entre Lancamento e Quitacao
		- Upadate em Fin_Lancamento (CashRegMovClosed)

	TABELA DE ERROS PARA RETURN_VALUE

		 000	Ok
		-201	Erro em Insere os registros de quitacao, para os invoices
		-202	Erro em Insiro os Account Payable com as taxas de admim
		-203	Erro em Insere as ligacoes entre Lancamento e Quitacao
		-204	Erro Upadate em Fin_Lancamento (CashRegMovClosed)

	LOG DE MODIFICA��ES

	Data			Programador		Modifica��o
	-----------------------	----------------------- -----------------------------------------------------------------
	15 May	2000		Rodrigo Costa		Criacao;
	22 June	2001		Davi Gouveia		Log de Return Values;
	21 Oct	2003		Andr� Bogado		Chamada a sp_Sis_GetNextCode;
							Criado cursor para Fin_Quitacao e Fin_Lancamento;
	18 Aug	2004		Rodrigo Costa		Gravar error log;
	18 Jan	2005		Carlos Lima		Gravar em que caixa foi fechado;
	16 May	2006		Maximiliano Muniz	Filtro pelo campo "PayOnCashRegClose" na carga dos cursores;
							O campo "PrazoRecebimento" agora � pego do MeioPag direto.
	-------------------------------------------------------------------------------------------------------------- */

DECLARE @ErrorLevel	int
DECLARE @SysError	int

SET @ErrorLevel = 0

/* ------------------------------------------------------------------------------------------------------------ */
/*		Quita os lancamentos										*/
/*------------------------------------------------------------------------------------------------------------- */

-- Insere os registros de quitacao, para os invoices
-- Altera��es de sp_Sis_GetNextCode
SET NOCOUNT ON
-- Vari�veis de Fin_Quitacao
DECLARE @IDQuitacao		int
DECLARE @Pagando		TBit
DECLARE @DataQuitacao		smalldatetime
DECLARE @ValorQuitacao		TValor
DECLARE @IDQuitacaoMeio		int
DECLARE @IDUsuarioQuitacao	int
DECLARE @ValorJuros		TValor
DECLARE @NumeroMeioQuit		TCodigoGeral
DECLARE @IDContaCorrente	int
DECLARE @SparrowInt		int

--Vari�veis de Fin_Lancamento
DECLARE @IDLancamento			int
DECLARE @DataVencimento			smalldatetime
DECLARE @DataLancamento			smalldatetime
DECLARE @ValorNominal			TValor
DECLARE @IDQuitacaoMeioPrevisto		int
DECLARE @IDUsuarioLancamento		int
DECLARE @IDContaCorrentePrevista	int
DECLARE @IDEmpresa 			int
DECLARE @IDPessoa			int
DECLARE @IDPessoaTipo			int
DECLARE @IDLancamentoTipo		int

--Declara��o do Cursor de Fin_Quitacao
DECLARE Fin_Quitacao_Cursor CURSOR FOR 
	(SELECT
		0,
		DateAdd(Day, MP.PrazoRecebimento, @Date ),
		0, -- A LancQuit ira atualizar corretamente este valor
		MP.IDMeioPagBatch,
		@IDUsuario,
		0,
		Convert(Varchar(20), L.IDCashRegMov),
		MPTS.IDContaCorrente,
		L.IDCashRegMov
	FROM
		Fin_Lancamento L
		JOIN
		Invoice I on ( I.IDPresale = L.IDPreSale )
		JOIN 
		MeioPag MP on ( MP.IDMeioPag = L.IDQuitacaoMeioPrevisto )
		JOIN 
		MeioPag MPB on ( MPB.IDMeioPag = MP.IDMeioPagBatch )
		JOIN 
		MeioPagToStore MPTS ON (MPTS.IDMeioPag = MP.IDMeioPagBatch AND MPTS.IDStore = I.IDStore)
	WHERE
		L.IDCashRegMov = @IDCashRegMov
		AND
		L.DataVencimento = CONVERT(smalldatetime, CONVERT(varchar, @Date, 103), 103) -- Somente os lancamento a vista
		AND
		MP.IDMeioPagBatch IS NOT NULL
		AND
		MP.PayOnCashRegClose = 1
	GROUP BY
		DateAdd(Day, MP.PrazoRecebimento, @Date ),
		MP.IDMeioPagBatch,
		Convert(Varchar(20), L.IDCashRegMov),
		MPTS.IDContaCorrente,
		L.IDCashRegMov
	)
-- Abertura do Cursor
OPEN Fin_Quitacao_Cursor
-- Inicializa��o do Cursor
FETCH NEXT FROM Fin_Quitacao_Cursor INTO  
		@Pagando,
		@DataQuitacao,
		@ValorQuitacao,
		@IDQuitacaoMeio,
		@IDUsuarioQuitacao ,
		@ValorJuros ,
		@NumeroMeioQuit,
		@IDContaCorrente,
		@SparrowInt
-- Enquanto tem registros
WHILE @@FETCH_STATUS = 0
BEGIN
/******************************************************************************
	Obtenho o @IDQuitacao
*******************************************************************************/
	EXEC sp_Sis_GetNextCode 'Fin_Quitacao.IDQuitacao', @IDQuitacao OUTPUT

	INSERT
		Fin_Quitacao
		(
		IDQuitacao,
		Pagando,
		DataQuitacao,
		ValorQuitacao,
		IDQuitacaoMeio,
		IDUsuarioQuitacao,
		ValorJuros,
		NumeroMeioQuit,
		IDContaCorrente,
		SparrowInt
 		)
	VALUES 
		(	
		@IDQuitacao, 
		@Pagando,
		@DataQuitacao,
		@ValorQuitacao,
		@IDQuitacaoMeio,
		@IDUsuarioQuitacao ,
		@ValorJuros ,
		@NumeroMeioQuit,
		@IDContaCorrente,
		@SparrowInt )
	-- leitura do pr�ximo
	FETCH NEXT FROM Fin_Quitacao_Cursor INTO 

		@Pagando,
		@DataQuitacao,
		@ValorQuitacao,
		@IDQuitacaoMeio,
		@IDUsuarioQuitacao ,
		@ValorJuros ,
		@NumeroMeioQuit,
		@IDContaCorrente,
		@SparrowInt
END
-- fechamento do cursor
CLOSE Fin_Quitacao_Cursor
-- destrui��o do cursor
DEALLOCATE Fin_Quitacao_Cursor
SET NOCOUNT OFF

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -201
	GOTO ERRO
END
/******************************************************************************
		Insiro os Account Payable com as taxas de admim
*******************************************************************************/
--Declara��o do Cursor de Fin_Quitacao
DECLARE Fin_Lancamento_Cursor CURSOR FOR 
	SELECT	
		1,
		DateAdd(Day, MP.PrazoRecebimento, @Date ),
		@Date,
		SUM( L.ValorNominal * (IsNull(MPB.TaxaAdmin, 0)/100) ),
		MP.IDMeioPag,
		@IDUsuario,
		MPTS.IDContaCorrente,
		CC.IDEmpresa,
		MPB.IDPessoa,
		P.IDTipoPessoa,
		MPB.IDLancamentoTipo,
		L.IDCashRegMov
	FROM
		Fin_Lancamento L
		JOIN 
		Invoice I on ( I.IDPresale = L.IDPreSale )
		JOIN 
		MeioPag MP on ( MP.IDMeioPag = L.IDQuitacaoMeioPrevisto )
		JOIN 
		MeioPag MPB on ( MPB.IDMeioPag = MP.IDMeioPagBatch )
		JOIN 
		MeioPagToStore MPTS ON (MPTS.IDMeioPag = MP.IDMeioPagBatch AND MPTS.IDStore = I.IDStore)
		JOIN 
		Fin_ContaCorrente CC ON (MPTS.IDContaCorrente = CC.IDContaCorrente)
		JOIN 
		Pessoa P ON (MPB.IDPessoa = P.IDPessoa)
	WHERE
		MPB.AutoDiscountFee = 1
		AND
		L.IDCashRegMov = @IDCashRegMov
		AND
		L.DataVencimento = CONVERT(smalldatetime, CONVERT(varchar, @Date, 103), 103) -- Somente os lancamento a vista
		AND
		MPB.IDLancamentoTipo IS NOT NULL
		AND
		MPB.IDPessoa IS NOT NULL
		AND
		IsNull(MPB.TaxaAdmin, 0) <> 0
		AND
		MP.PayOnCashRegClose = 1
	GROUP BY
		DateAdd(Day, MP.PrazoRecebimento, @Date ),
		MP.IDMeioPag,
		MPTS.IDContaCorrente,
		CC.IDEmpresa,
		MPB.IDPessoa,
		P.IDTipoPessoa,
		MPB.IDLancamentoTipo,
		L.IDCashRegMov
	
-- Abertura do Cursor
OPEN Fin_Lancamento_Cursor
-- Inicializa��o do Cursor
FETCH NEXT FROM Fin_Lancamento_Cursor INTO  
	@Pagando,
	@DataVencimento,
	@DataLancamento,
	@ValorNominal,
	@IDQuitacaoMeioPrevisto,
	@IDUsuarioLancamento,
	@IDContaCorrentePrevista,
	@IDEmpresa,
	@IDPessoa,
	@IDPessoaTipo,
	@IDLancamentoTipo,
	@IDCashRegMov

-- Enquanto tem registros
WHILE @@FETCH_STATUS = 0
BEGIN
/******************************************************************************
	Obtenho o @IDLancamento
*******************************************************************************/
	EXEC sp_Sis_GetNextCode 'Fin_Quitacao.IDLancamento', @IDLancamento OUTPUT

	INSERT
		Fin_Lancamento
		(
		IDLancamento,
		Pagando,
		DataVencimento,
		DataLancamento,
		ValorNominal,
		IDQuitacaoMeioPrevisto,
		IDUsuarioLancamento,
		IDContaCorrentePrevista,
		IDEmpresa,
		IDPessoa,
		IDPessoaTipo,
		IDLancamentoTipo,
		IDCashRegMov
 		)
	VALUES	
		(
		@IDLancamento,
		@Pagando,
		@DataVencimento,
		@DataLancamento,
		@ValorNominal,
		@IDQuitacaoMeioPrevisto,
		@IDUsuarioLancamento,
		@IDContaCorrentePrevista,
		@IDEmpresa,
		@IDPessoa,
		@IDPessoaTipo,
		@IDLancamentoTipo,
		@IDCashRegMov 
		)

	-- leitura do pr�ximo
	FETCH NEXT FROM Fin_Lancamento_Cursor INTO  
		@Pagando,
		@DataVencimento,
		@DataLancamento,
		@ValorNominal,
		@IDQuitacaoMeioPrevisto,
		@IDUsuarioLancamento,
		@IDContaCorrentePrevista,
		@IDEmpresa,
		@IDPessoa,
		@IDPessoaTipo,
		@IDLancamentoTipo,
		@IDCashRegMov
END-- fechamento do cursor
CLOSE Fin_Lancamento_Cursor
-- destrui��o do cursor
DEALLOCATE Fin_Lancamento_Cursor
SET NOCOUNT OFF

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
                SET @ErrorLevel = -202
                GOTO ERRO
END

/******************************************************************************
		Insere as ligacoes entre Lancamento e Quitacao
*******************************************************************************/
INSERT	
	Fin_LancQuit
	(
	IDLancamento,
	IDQuitacao,
	ValorQuitado,
	DataQuitacao,
	ValorJuros,
	IDUsuarioQuitacao
	)
	SELECT
		L.IDLancamento,
		Q.IDQuitacao,
		L.ValorNominal,
		@Date,
		0,
		@IDUsuario
	FROM
		Fin_Lancamento L
		JOIN
		MeioPag MP ON (L.IDQuitacaoMeioPrevisto = MP.IDMeioPag)
		JOIN
		Fin_Quitacao Q ON (MP.IDMeioPagBatch = Q.IDQuitacaoMeio)
	WHERE
		L.IDCashRegMov  = @IDCashRegMov
		AND
		L.DataVencimento = CONVERT(smalldatetime, CONVERT(varchar, @Date, 103), 103) -- Somente os lancamento a vista
		AND
		Q.SparrowInt = @IDCashRegMov
		AND
		MP.PayOnCashRegClose = 1

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -203
	GOTO ERRO
END

UPDATE 	Fin_Lancamento 
SET		 IDCashRegMovClosed = @IDCashRegMov
WHERE
		IDCashRegMov = @IDCashRegMov

SET @SysError = @@ERROR
IF @SysError <> 0
BEGIN
	SET @ErrorLevel = -204
	GOTO ERRO
END


OK:
	RETURN 0

ERRO:
	PRINT CAST(@ErrorLevel AS VARCHAR)
	RETURN @ErrorLevel

	DECLARE @ErrorLevelStr varchar(10)
	SET  @ErrorLevelStr =  CAST(@ErrorLevel AS VARCHAR)
	EXEC sp_Sis_AppHistory_Add 0, 0, @SysError, 'MainRetail', 'Error: sp_CashRegister_Quita_Invoice', @ErrorLevelStr

	RETURN @ErrorLevel
GO
