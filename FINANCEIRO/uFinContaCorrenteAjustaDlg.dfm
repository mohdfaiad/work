�
 TFINCONTACORRENTEAJUSTADLG 0
  TPF0�TFinContaCorrenteAjustaDlgFinContaCorrenteAjustaDlgLeftPTop� CaptionAdjust Account BalanceClientHeight� ClientWidthePixelsPerInch`
TextHeight � TLabelLabel1Left<TopWidthHHeight	AlignmenttaRightJustifyCaptionBank Account :  �TLabelLabel2LeftfTop0WidthHeight	AlignmenttaRightJustifyCaptionDate :  �TLabelLabel3LeftXTopSWidth,Height	AlignmenttaRightJustifyCaption	Balance :  �TLabelLabel4Left(TopqWidth\Height	AlignmenttaRightJustifyCaptionExpected Balance :  �TLabelLabel5Left^Top� Width&Height	AlignmenttaRightJustifyCaptionAdjust :  �TPanelEspacamentoEsquerdoHeight�   �TPanelEspacamentoDireitoLeftbHeight�   �TPanelEspacamentoSuperiorWidthe  �TPanelpnlEspacamentoInferirorTop� Widthe  �TPanel	pnlPBarraTop� Widthe �TPanelpnlPDAlignRightLeft�   �TPanelpnlPLinhaSuperiorWidthe   �
TSuperComboADOscContaCorrenteLeft� TopWidth� HeightTabOrderTextscContaCorrenteOnChangescContaCorrenteChangeLookUpSourceDM.dsLUContaCorrenteDropDownRows  �TEditeUsuLeft� TopnWidthQHeightTabOrderTexteUsuOnChange
eUsuChange
OnKeyPresseUsuKeyPress  �TEditeSaldoLeft� TopPWidthQHeightParentColor	ReadOnly	TabOrderTextEdit1  �TEditeAjusteLeft� Top� WidthQHeightParentColor	ReadOnly	TabOrderTextEdit1  �TDateBoxdbDataLeft� Top-WidthXHeightTabOrder		InputTime  �	TsiLangRTsiLangStorageFile OM_FinContaCorrenteAjustaDlg.sil  	TADOQueryquSaldo
ConnectionDM.DBADOConnection
ParametersNameInicioDataType
ftDateTime	PrecisionSizeValue  NameIDContaCorrente
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.Strings	SELECT   =	SUM((ValorQuitacao + ValorJuros) * (1 - 2*Pagando)) as Saldo	FROM     	Fin_Quitacao	WHERE    	DataQuitacao < :Inicio        AND*        IDContaCorrente = :IDContaCorrente        AND        Desativado = 0 LeftTopJ TFloatFieldquSaldoSaldo	FieldNameSaldo
EditFormat#,##0.00   TADOStoredProcspAjusta
ConnectionDM.DBADOConnectionProcedureNamesp_Fin_ContaCorrenteAjusta;1
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
 Name@IDContaCorrente
Attributes
paNullable DataType	ftInteger	Precision
 Name@Valor
Attributes
paNullable DataTypeftBCD	Precision Name@Data
Attributes
paNullable DataType
ftDateTime Name
@IDUsuario
Attributes
paNullable DataType	ftInteger	Precision
  LeftTopx   