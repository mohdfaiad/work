�
 TDM 0pM  TPF0�TDMDMOnCreateDMCreate	OnDestroy	DMDestroyLeft-Top_Height�Width� �	TADOQuery	quFreeSQLLeftTopU  �	TADOQueryquRebuildIdentLeftTop�   �TRCADOQueryquConstanteLeftTTopA  �TADOConnectionDBADOConnectionConnectionString  Provider=SQLOLEDB.1;Password=fudeu;Persist Security Info=True;User ID=sa;Initial Catalog=SupplyDB;Data Source=desenv000;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=RETAIL;Use Encryption for Data=False;Tag with column collation when possible=False  TLookUpADOQuery	quUsuario
ConnectionDBADOConnectionCommandTextjSELECT 
	U.IDUser,
	U.CodSystemUser,
	U.SystemUser
FROM 
	dbo.SystemUser U
ORDER BY
	U.SystemUser

Parameters SecondFieldTypeftString	ListField
SystemUser	CodeFieldCodSystemUserLookUpFieldIDUser	quFreeSQL	quFreeSQLOnClickButtonquUsuarioClickButtonLeftTop�  TAutoIncFieldquUsuarioIDUser	FieldNameIDUserReadOnly	  TStringFieldquUsuarioCodSystemUser	FieldNameCodSystemUser  TStringFieldquUsuarioSystemUser	FieldName
SystemUserSize2   TDataSourcedsLookUpUsuarioDataSet	quUsuarioLeft_Top�   TLookUpADOQuery	quEmpresa
ConnectionDBADOConnection
MaxRecords� CommandText�SELECT 
	E.IDEmpresa ,
	E.CodigoEmpresa ,
	E.Empresa
FROM   
	Sis_Empresa E
	INNER JOIN #Sis_EmpresaP EP
                 ON (E.IDEmpresa = EP.IDEmpresaP)
ORDER BY
       E.Empresa
Parameters SecondFieldTypeftString	ListFieldEmpresa	CodeFieldCodigoEmpresaLookUpField	IDEmpresa	quFreeSQL	quFreeSQLOnClickButtonquEmpresaClickButtonLeftmTop TIntegerFieldquEmpresaIDEmpresa	FieldName	IDEmpresaOriginEst_Empresa.IDEmpresa  TStringFieldquEmpresaCodigoEmpresa	FieldNameCodigoEmpresaOriginEst_Empresa.CodigoEmpresa  TStringFieldquEmpresaEmpresa	FieldNameEmpresaOriginEst_Empresa.EmpresaSize#   TDataSourcedsLookUpEmpresaDataSet	quEmpresaLeft�Top,  TDataSourcedsLUContaCorrenteDataSetquContaCorrenteLeft	Top�   TLookUpADOQueryquContaCorrente
ConnectionDBADOConnection
MaxRecords� CommandText}SELECT 
	CC.IDContaCorrente,
	CC.CodigoContaCorrente, 
	CC.Numero
FROM 
	dbo.Fin_ContaCorrente CC
Order By 
	CC.Numero
Parameters SecondFieldTypeftString	ListFieldNumero	CodeFieldCodigoContaCorrenteLookUpFieldIDContaCorrente	quFreeSQL	quFreeSQLOnClickButtonquContaCorrenteClickButtonLeft� Topw TIntegerFieldquContaCorrenteIDContaCorrente	FieldNameIDContaCorrenteOrigin!Fin_ContaCorrente.IDContaCorrente  TStringField"quContaCorrenteCodigoContaCorrente	FieldNameCodigoContaCorrenteOrigin%Fin_ContaCorrente.CodigoContaCorrente  TStringFieldquContaCorrenteNumero	FieldNameNumeroOrigin!Fin_ContaCorrente.IDContaCorrenteSize#   TDataSourcedsLUQuitacaoMeioDataSetquQuitacaoMeioLeft	Top_  TLookUpADOQueryquQuitacaoMeio
ConnectionDBADOConnection
MaxRecords� CommandTextjSELECT
	MP.IDMeioPag,
	MP.MeioPag
FROM
	MeioPag MP
WHERE
	ParentType = 'Sale'
ORDER BY
	MP.MeioPag
Parameters SecondFieldTypeftString	ListFieldMeioPag	CodeField	IDMeioPagLookUpField	IDMeioPag	quFreeSQL	quFreeSQLOnClickButtonquQuitacaoMeioClickButtonLeft� TopJ TIntegerFieldquQuitacaoMeioIDMeioPag	FieldName	IDMeioPagOriginMeioPag.IDMeioPag  TStringFieldquQuitacaoMeioMeioPag	FieldNameMeioPagOriginMeioPag.MeioPagSize2   TDataSourcedsLUPessoaTipoDataSetquPessoaTipoLeft�Top  TLookUpADOQueryquPessoaTipo
ConnectionDBADOConnection
MaxRecords� CommandText}SELECT 	
	TP.IDTipoPessoa,
	TP.TipoPessoa,
	0 as Juridico,
	TP.PathName
FROM 	
	TipoPessoa TP
ORDER BY
	TP.TipoPessoa
Parameters SecondFieldTypeftString	ListField
TipoPessoa	CodeFieldJuridicoLookUpFieldIDTipoPessoa	quFreeSQL	quFreeSQLLeftmTop�  TIntegerFieldquPessoaTipoIDTipoPessoa	FieldNameIDTipoPessoa  TStringFieldquPessoaTipoTipoPessoa	FieldName
TipoPessoaSize2  TIntegerFieldquPessoaTipoJuridico	FieldNameJuridico  TStringFieldquPessoaTipoPathName	FieldNamePathNameSize�    TDataSourcedsLULancamentoTipoDataSetquLancamentoTipoLeft�TopZ  TLookUpADOQueryquLancamentoTipo
ConnectionDBADOConnection
MaxRecords� CommandText�SELECT 
	LT.IDLancamentoTipo,
	LT.LancamentoTipo , 
	LT.PathName,
	LT.Path, 
	LT.CodigoContabil
FROM 
	dbo.Fin_LancamentoTipo LT
ORDER BY
	LT.LancamentoTipo
Parameters SecondFieldTypeftString	ListFieldLancamentoTipo	CodeFieldCodigoContabilLookUpFieldIDLancamentoTipo	quFreeSQL	quFreeSQLOnClickButtonquLancamentoTipoClickButtonLeftmTopE TIntegerField quLancamentoTipoIDLancamentoTipo	FieldNameIDLancamentoTipoOrigin#Fin_LancamentoTipo.IDLancamentoTipo  TStringFieldquLancamentoTipoLancamentoTipoDisplayWidthA	FieldNameLancamentoTipoOrigin!Fin_LancamentoTipo.LancamentoTipoSizeA  TStringFieldquLancamentoTipoPathName	FieldNamePathNameOriginFin_LancamentoTipo.PathNameSize�   TStringFieldquLancamentoTipoPath	FieldNamePathOriginFin_LancamentoTipo.PathSize�   TStringFieldquLancamentoTipoCodigoContabil	FieldNameCodigoContabilOrigin#Fin_LancamentoTipo.IDLancamentoTipoSize#   TDataSource
dsLUPessoaDataSetquPessoaLeft	Top  TLookUpADOQueryquPessoa
ConnectionDBADOConnection
MaxRecords� CommandTextcSELECT
	P.IDPessoa,
	P.Code,
	P.Pessoa,
	P.Desativado,
	P.Hidden,
	P.System
FROM 
	Pessoa P
Parameters SecondFieldTypeftString	ListFieldPessoa	CodeFieldCodeLookUpFieldIDPessoa	quFreeSQL	quFreeSQLOnClickButtonquPessoaClickButtonLeft� Top�  TIntegerFieldquPessoaIDPessoa	FieldNameIDPessoaOriginPessoa.IDPessoa  TIntegerFieldquPessoaCode	FieldNameCodeOriginPessoa.Code  TStringFieldquPessoaPessoa	FieldNamePessoaOriginPessoa.PessoaSize2  TIntegerFieldquPessoaDesativado	FieldName
DesativadoOriginPessoa.Desativado  TIntegerFieldquPessoaHidden	FieldNameHiddenOriginPessoa.Hidden  TBooleanFieldquPessoaSystem	FieldNameSystemOriginPessoa.System   TDataSourcedsLUDocumentoTipoDataSetquDocumentoTipoLeft�Top�   TLookUpADOQueryquDocumentoTipo
ConnectionDBADOConnection
MaxRecords� CommandTextmSELECT 
	DT.IDDocumentoTipo,
	DT.CodigoDocumentoTipo, 
	DT.DocumentoTipo
FROM 
	dbo.Fin_DocumentoTipo DT
Parameters SecondFieldTypeftString	ListFieldDocumentoTipo	CodeFieldCodigoDocumentoTipoLookUpFieldIDDocumentoTipo	quFreeSQL	quFreeSQLOnClickButtonquDocumentoTipoClickButtonLeftmTop�  TIntegerFieldquDocumentoTipoIDDocumentoTipo	FieldNameIDDocumentoTipoOrigin!Fin_DocumentoTipo.IDDocumentoTipo  TStringField"quDocumentoTipoCodigoDocumentoTipo	FieldNameCodigoDocumentoTipoOrigin%Fin_DocumentoTipo.CodigoDocumentoTipo  TStringFieldquDocumentoTipoDocumentoTipo	FieldNameDocumentoTipoOriginFin_DocumentoTipo.DocumentoTipoSize#   TDataSourcedsLUCentroCustoDataSetquCentroCustoLeft�Top�   TLookUpADOQueryquCentroCusto
ConnectionDBADOConnection
MaxRecords� CommandText�SELECT 
	CC.IDCentroCusto, 
	CC.CodigoCentroCusto, 
	CC.CentroCusto
FROM 
	dbo.Fin_CentroCusto CC
ORDER BY
	CC.CentroCusto
Parameters SecondFieldTypeftString	ListFieldCentroCusto	CodeFieldCodigoCentroCustoLookUpFieldIDCentroCusto	quFreeSQL	quFreeSQLOnClickButtonquCentroCustoClickButtonLeftmTopr TIntegerFieldquCentroCustoIDCentroCusto	FieldNameIDCentroCustoOriginFin_CentroCusto.IDCentroCusto  TStringFieldquCentroCustoCodigoCentroCusto	FieldNameCodigoCentroCustoOrigin!Fin_CentroCusto.CodigoCentroCusto  TStringFieldquCentroCustoCentroCusto	FieldNameCentroCustoOriginFin_CentroCusto.CentroCustoSize#   TDataSource	dsLUMoedaDataSetquMoedaLeft	Top2  TLookUpADOQueryquMoeda
ConnectionDBADOConnection
MaxRecords� CommandTextISELECT 
	M.IDMoeda, 
	M.CodigoMoeda,
	M.Moeda
FROM 
	dbo.Sis_Moeda M
Parameters SecondFieldTypeftString	ListFieldMoeda	CodeFieldCodigoMoedaLookUpFieldIDMoeda	quFreeSQL	quFreeSQLOnClickButtonquMoedaClickButtonLeft� Top TIntegerFieldquMoedaIDMoeda	FieldNameIDMoedaOriginSis_Moeda.IDMoeda  TStringFieldquMoedaCodigoMoeda	FieldNameCodigoMoedaOriginSis_Moeda.CodigoMoeda  TStringFieldquMoedaMoeda	FieldNameMoedaOriginSis_Moeda.MoedaSize#   TLookUpADOQueryquBanco
ConnectionDBADOConnection
MaxRecords� CommandTextHSELECT 
	B.IDBanco,
	B.CodigoBanco,
	B.Banco
FROM 
	dbo.Fin_Banco B
Parameters SecondFieldTypeftString	ListFieldBanco	CodeFieldCodigoBancoLookUpFieldIDBanco	quFreeSQL	quFreeSQLOnClickButtonquBancoClickButtonLeft� Top�  TIntegerFieldquBancoIDBanco	FieldNameIDBancoOriginFin_Banco.IDBanco  TStringFieldquBancoCodigoBanco	FieldNameCodigoBancoOriginFin_Banco.CodigoBanco  TStringFieldquBancoBanco	FieldNameBancoOriginFin_Banco.BancoSize#   TDataSource	dsLUBancoDataSetquBancoLeft	Top�   TLookUpADOQueryquBancoAgencia
ConnectionDBADOConnection
MaxRecords� CommandTextiSELECT 
	BA.IDBancoAgencia,
	BA.CodigoBancoAgencia, 
	BA.BancoAgencia
FROM 
	dbo.Fin_BancoAgencia BA
Parameters SecondFieldTypeftString	ListFieldBancoAgencia	CodeFieldCodigoBancoAgenciaLookUpFieldIDBancoAgencia	quFreeSQL	quFreeSQLOnClickButtonquBancoAgenciaClickButtonLeft� Top�  TIntegerFieldquBancoAgenciaIDBancoAgencia	FieldNameIDBancoAgenciaOriginFin_BancoAgencia.IDBancoAgencia  TStringField quBancoAgenciaCodigoBancoAgencia	FieldNameCodigoBancoAgenciaOrigin#Fin_BancoAgencia.CodigoBancoAgencia  TStringFieldquBancoAgenciaBancoAgencia	FieldNameBancoAgenciaOriginFin_BancoAgencia.BancoAgenciaSize#   TDataSourcedsLUBancoAgenciaDataSetquBancoAgenciaLeft	Top�   TDataSourcedsLUMenuItemDataSet
quMenuItemLeft_Top  TLookUpADOQuery
quMenuItem
ConnectionDBADOConnectionCommandTextKSELECT 
	M.IDMenuItem,
	M.Menu,
	M.MenuItem
FROM 
	dbo.vw_Sis_Menu M

Parameters SecondFieldTypeftString	ListFieldMenuItem	CodeFieldMenuLookUpField
IDMenuItem	quFreeSQL	quFreeSQLLeftTop�  TIntegerFieldquMenuItemIDMenuItem	FieldName
IDMenuItemOriginSis_MenuItem.IDMenuItem  TStringFieldquMenuItemMenuItem	FieldNameMenuItemOriginvw_Sis_Menu.IDMenuItemSize#  TStringFieldquMenuItemMenu	FieldNameMenuOriginvw_Sis_Menu.IDMenuItemSize7   TDataSourcedsLUDesdobramentoTipoDataSetquDesdobramentoTipoLeft�Top�   TLookUpADOQueryquDesdobramentoTipo
ConnectionDBADOConnection
MaxRecords� CommandText�SELECT 
	DT.IDDesdobramentoTipo,
	DT.IDDocumentoTipo, 
	DT.DesdobramentoTipo, 
	DT.CodigoDesdobramentoTipo, 
	DT.IdentificadorDesdobramento,
	DT.Hidden, 
	DT.System,
	DT.Desativado
FROM 
	dbo.Fin_DesdobramentoTipo DT
Parameters SecondFieldTypeftString	ListFieldDesdobramentoTipo	CodeFieldCodigoDesdobramentoTipoLookUpFieldIDDesdobramentoTipoOnClickButtonquDesdobramentoTipoClickButtonLeftmTop�  TIntegerField&quDesdobramentoTipoIDDesdobramentoTipo	FieldNameIDDesdobramentoTipoOrigin)Fin_DesdobramentoTipo.IDDesdobramentoTipo  TIntegerField"quDesdobramentoTipoIDDocumentoTipo	FieldNameIDDocumentoTipoOrigin%Fin_DesdobramentoTipo.IDDocumentoTipo  TStringField$quDesdobramentoTipoDesdobramentoTipo	FieldNameDesdobramentoTipoOrigin'Fin_DesdobramentoTipo.DesdobramentoTipoSize#  TStringField*quDesdobramentoTipoCodigoDesdobramentoTipo	FieldNameCodigoDesdobramentoTipoOrigin-Fin_DesdobramentoTipo.CodigoDesdobramentoTipo  TStringField-quDesdobramentoTipoIdentificadorDesdobramento	FieldNameIdentificadorDesdobramentoOrigin0Fin_DesdobramentoTipo.IdentificadorDesdobramento  TBooleanFieldquDesdobramentoTipoHidden	FieldNameHiddenOriginFin_DesdobramentoTipo.Hidden  TBooleanFieldquDesdobramentoTipoSystem	FieldNameSystemOriginFin_DesdobramentoTipo.System  TBooleanFieldquDesdobramentoTipoDesativado	FieldName
DesativadoOrigin Fin_DesdobramentoTipo.Desativado   TLookUpADOQueryquLookUpStore
ConnectionDBADOConnection
MaxRecords� CommandText^SELECT 
	S.IDStore, 
	S.Name
FROM 
	dbo.Store S (FastFirstRow NOLOCK) 
ORDER BY 
	S.Name
Parameters SecondFieldTypeftString	ListFieldName	CodeFieldIDStoreLookUpFieldIDStore	quFreeSQL	quFreeSQLLeftTop�  TIntegerFieldquLookUpStoreIDStore	FieldNameIDStore  TStringFieldquLookUpStoreName	FieldNameNameSize   TDataSourcedsLookUpStoreDataSetquLookUpStoreLeftlTop�   TLookUpADOQuery
LookUpUser
ConnectionDBADOConnection
MaxRecords� CommandTextqSELECT 
	SU.IDUser,
	SU.SystemUser
FROM 
	dbo.SystemUser SU (FastFirstRow NOLOCK) 
ORDER BY 
	SU.SystemUser
Parameters SecondFieldTypeftString	ListField
SystemUser	CodeFieldIDUserLookUpFieldIDUser	quFreeSQL	quFreeSQLLeftTopv TIntegerFieldLookUpUserIDUser	FieldNameIDUser  TStringFieldLookUpUserSystemUser	FieldName
SystemUserSize2   TDataSourcedsLookUpUserDataSet
LookUpUserLeftlTop�   TLookUpADOQueryLookUpEstado
ConnectionDBADOConnection
MaxRecords� CommandTextcSELECT 
	E.IDEstado,
	E.Estado
FROM 
	dbo.Estado E (FastFirstRow NOLOCK) 
ORDER BY 
	E.Estado
Parameters SecondFieldTypeftString	ListFieldEstado	CodeFieldIDEstadoLookUpFieldIDEstado	quFreeSQL	quFreeSQLLeftTop�  TStringFieldLookUpEstadoIDEstado	FieldNameIDEstadoSize  TStringFieldLookUpEstadoEstado	FieldNameEstadoSize2   TDataSourcedsLookUpEstadoDataSetLookUpEstadoLeftmTop�   TLookUpADOQueryLookUpTipoPessoa
ConnectionDBADOConnection
MaxRecords� CommandText}SELECT 
	TP.IDTipoPessoa,
	TP.PathName, 
	TP.Path
FROM 
	dbo.TipoPessoa TP (FastFirstRow NOLOCK)
ORDER BY
	TP.PathName
Parameters SecondFieldTypeftString	ListFieldPathName	CodeFieldPathLookUpFieldIDTipoPessoa	quFreeSQL	quFreeSQLLeftTopE TIntegerFieldLookUpTipoPessoaIDTipoPessoa	FieldNameIDTipoPessoa  TStringFieldLookUpTipoPessoaPathName	FieldNamePathNameSize�   TStringFieldLookUpTipoPessoaPath	FieldNamePathSize�    TDataSourcedsLookUpTipoPessoaDataSetLookUpTipoPessoaLeftlTopY  TLookUpADOQuery
LookUpPais
ConnectionDBADOConnection
MaxRecords� CommandTextPSELECT 
	P.IDPais,
	P.CodPais,
	P.Pais
FROM 
	dbo.Pais P
ORDER BY
	P.Pais
Parameters SecondFieldTypeftString	ListFieldPais	CodeFieldCodPaisLookUpFieldIDPais	quFreeSQL	quFreeSQLLeftTop TIntegerFieldLookUpPaisIDPais	FieldNameIDPaisOriginPais.IDPais  TStringFieldLookUpPaisCodPais	FieldNameCodPaisOriginPais.CodPaisSize  TStringFieldLookUpPaisPais	FieldNamePaisOrigin	Pais.PaisSize2   TDataSourcedsLookUpPaisDataSet
LookUpPaisLefthTop*  TLookUpADOQueryquLookUpMeioPagBatch
ConnectionDBADOConnection
MaxRecords� CommandTextsSelect
  MP.IDMeioPag,
  MP.MeioPag
FROM
  MeioPag MP
WHERE
  MP.ParentType = 'Batch'
ORDER BY
  MP.MeioPag
Parameters SecondFieldTypeftString	ListFieldMeioPag	CodeField	IDMeioPagLookUpField	IDMeioPag	quFreeSQL	quFreeSQLLeft� Top? TAutoIncFieldquLookUpMeioPagBatchIDMeioPag	FieldName	IDMeioPagReadOnly	  TStringFieldquLookUpMeioPagBatchMeioPag	FieldNameMeioPagSize2   TDataSourcedsLookUpMeioPagBatchDataSetquLookUpMeioPagBatchLeftTopO  TLookUpADOQueryquLookUpFornecedor
ConnectionDBADOConnection
MaxRecords� CommandText�SELECT
  P.IDPessoa,
  P.IDPessoa as IDFornecedor,
  P.Pessoa,
  P.Code
FROM
  Pessoa P (NOLOCK)
WHERE
  P.IDTipoPessoaRoot = 2
ORDER BY
  P.Pessoa

Parameters SecondFieldTypeftString	ListFieldPessoa	CodeFieldCodeLookUpFieldIDPessoa	quFreeSQL	quFreeSQLOnClickButtonquPessoaClickButtonLeft� Top{ TAutoIncFieldquLookUpFornecedorIDPessoa	FieldNameIDPessoaReadOnly	  TAutoIncFieldquLookUpFornecedorIDFornecedor	FieldNameIDFornecedorReadOnly	  TStringFieldquLookUpFornecedorPessoa	FieldNamePessoaSize2  TIntegerFieldquLookUpFornecedorCode	FieldNameCode   TDataSourcedsLookUpFornecedorDataSetquLookUpFornecedorLeftTop�  TLookUpADOQuery	quCompany
ConnectionDBADOConnection
MaxRecords� CommandTextlSELECT 
	E.IDEmpresa ,
	E.CodigoEmpresa ,
	E.Empresa
FROM   
	Sis_Empresa E
ORDER BY
       E.Empresa
Parameters SecondFieldTypeftString	ListFieldEmpresa	CodeFieldCodigoEmpresaLookUpField	IDEmpresa	quFreeSQL	quFreeSQLOnClickButtonquEmpresaClickButtonLeft#TopI TIntegerFieldIntegerField1	FieldName	IDEmpresaOriginEst_Empresa.IDEmpresa  TStringFieldStringField1	FieldNameCodigoEmpresaOriginEst_Empresa.CodigoEmpresa  TStringFieldStringField2	FieldNameEmpresaOriginEst_Empresa.EmpresaSize#   TDataSource	dsCompanyDataSet	quCompanyLeft#Top{  TLookUpADOQuery
quUserType
ConnectionDBADOConnection
CursorTypectOpenForwardOnly
MaxRecords� CommandText]SELECT IDUserType , Name
FROM dbo.UserType UserType (FastFirstRow NOLOCK)
ORDER BY
 Name

Parameters SecondFieldTypeftString	ListFieldName	CodeField
IDUserTypeLookUpField
IDUserType	quFreeSQL	quFreeSQLLeftkTop< TIntegerFieldquUserTypeIDUserType	FieldName
IDUserType  TStringFieldquUserTypeName	FieldNameNameSize   TDataSourcedsLookUpUserTypeDataSet
quUserTypeLeft�TopK  TADOStoredProcspGetNextID
ConnectionDBADOConnectionProcedureNamesp_Sis_GetNextCode;1
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@Tabela
Attributes
paNullable DataTypeftStringSizedValue  Name@NovoCodigo
Attributes
paNullable DataType	ftInteger	DirectionpdInputOutput	Precision
Value   Left� Top  	TADOQuery
quSrvParam
ConnectionDBADOConnection
CursorTypectStaticLockType
ltReadOnly
ParametersNameIDParam
AttributespaSigned DataType	ftInteger	Precision
SizeValue   SQL.StringsSelect 	P.IDParam,	P.SrvParameter,	P.SrvValueFrom 	Param PWhere	P.IDParam = :IDParam LeftbTop�  TIntegerFieldquSrvParamIDParam	FieldNameIDParam  TStringFieldquSrvParamSrvParameter	FieldNameSrvParameterSize(  TStringFieldquSrvParamSrvValue	FieldNameSrvValueSize   TLookUpADOQueryquLookupSaleTax
ConnectionDBADOConnection
MaxRecords� CommandText�Select
	IDTaxCategory,
	TaxCategory
From
	TaxCategory
Where
	IsNull(OperationType,1) = 1
	and
	(SaleTaxType = 2
	or
	IDTaxCategoryParent<>0)
Parameters SecondFieldTypeftString	ListFieldTaxCategory	CodeFieldIDTaxCategoryLookUpFieldIDTaxCategory	quFreeSQL	quFreeSQLLeftTopJ TIntegerFieldquLookupSaleTaxIDTaxCategory	FieldNameIDTaxCategory  TStringFieldquLookupSaleTaxTaxCategory	FieldNameTaxCategorySize2   TDataSourcedsLookupSaleTaxDataSetquLookupSaleTaxLeftYTopa  TLookUpADOQueryquLookupPurchaseTax
ConnectionDBADOConnection
MaxRecords� CommandTextpSelect
	IDTaxCategory,
	TaxCategory
From
	TaxCategory
Where
	OperationType = 2
	and
	SaleTaxType IS NULL
Parameters SecondFieldTypeftString	ListFieldTaxCategory	CodeFieldIDTaxCategoryLookUpFieldIDTaxCategory	quFreeSQL	quFreeSQLLeftTop TIntegerField quLookupPurchaseTaxIDTaxCategory	FieldNameIDTaxCategory  TStringFieldquLookupPurchaseTaxTaxCategory	FieldNameTaxCategorySize2   TDataSourceLookupPurchaseTaxDataSetquLookupPurchaseTaxLeftcTop*  TLookUpADOQueryquLookUpMunicipio
ConnectionDBADOConnection
MaxRecords� CommandTextASELECT
	IDMunicipio,
	Codigo,
	Descricao
FROM
	Sis_Municipio
Parameters SecondFieldTypeftString	ListField	Descricao	CodeFieldIDMunicipioLookUpFieldIDMunicipio	quFreeSQL	quFreeSQLOnClickButtonquLookUpMunicipioClickButtonLeftTop� TIntegerFieldquLookUpMunicipioIDMunicipio	FieldNameIDMunicipio  TStringFieldquLookUpMunicipioCodigo	FieldNameCodigo  TStringFieldquLookUpMunicipioDescricao	FieldName	DescricaoSized   TDataSourcedsLookUpMunicipioDataSetquLookUpMunicipioLeftYTop�   