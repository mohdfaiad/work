�
 TDMGLOBAL 0�  TPF0	TDMGlobalDMGlobalOldCreateOrderLeft�TopHeight� Width' 	TADOQuery
qryFreeSQL
Parameters Left Top  	TADOQueryquParam
CursorTypectStatic
ParametersName
IDLanguage
AttributespaSigned DataType	ftInteger	Precision
SizeValue  NameIDParamDataType	ftIntegerSize�Value   SQL.StringsSELECT	PL.SrvParameter,	PL.Description,	P.SrvValue,	P.SrvType,	P.DefaultValueFROM	Param P2	JOIN ParamLanguage PL ON (P.IDParam = PL.IDParam)WHERE	PL.IDLanguage = :IDLanguage	AND 	P.Desativado = 0	AND	P.IDParam = :IDParam  LeftsTop TStringFieldquParamSrvParameterDisplayWidth(	FieldNameSrvParameterReadOnly	Size(  TStringFieldquParamSrvValueDisplayWidth	FieldNameSrvValueSize  TStringFieldquParamDefaultValueDisplayWidth	FieldNameDefaultValueReadOnly	Size  TStringFieldquParamDescriptionDisplayWidth� 	FieldNameDescriptionReadOnly	VisibleSize�   TStringFieldquParamSrvType	FieldNameSrvTypeReadOnly	Size
   TADOCommand
cmdFreeSQL
Parameters LeftPTopX  TADOStoredProcspGetNextKeyProcedureNamesp_Sis_GetNextCode;1
ParametersName@RETURN_VALUEDataType	ftInteger	DirectionpdReturnValue	Precision
Value  Name@Tabela
Attributes
paNullable DataTypeftStringSizedValue  Name@NovoCodigo
Attributes
paNullable DataType	ftInteger	DirectionpdInputOutput	Precision
Value   Left� TopX   