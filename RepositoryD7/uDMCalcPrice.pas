(*
-----------------------------------------------------------------------------------------------------
Version : (292 - 293)
Date    : 06.06.2011
Author  : Antonio Marcos Fernandes de Souza (amfsouza)
Issue   : avoid decrease when parameter ( new parameter ) is set to true.
Solution: set up correct mask to display format properfield object.
Version : (293 - 294)
-----------------------------------------------------------------------------------------------------
Version :
Date    : 11.26.2010
Author  : Antonio Marcos Fernandes de Souza (amfsouza)
Issue   :
Solution: Margin table by level
Version : 
-----------------------------------------------------------------------------------------------------
*)

unit uDMCalcPrice;

interface

uses
  SysUtils, Classes, ADODB, DBClient, Provider, DB;

type
  TModelGroupingType = (mgtNone, mgtCategory, mgtGroup, mgtSubGroup);
  TCalcPriceType = (cptSalePrice, cptMSRPPrice, cptBoth);

  TDMCalcPrice = class(TDataModule)
    quRoundRangeByCategory: TADODataSet;
    quRoundRangeByCategoryRoundValues: TStringField;
    quRoundRangeByCategoryRoundType: TIntegerField;
    quMSRPPriceByCategory: TADODataSet;
    quSalePriceByCategory: TADODataSet;
    quMSRPPriceByGroup: TADODataSet;
    quSalePriceByGroup: TADODataSet;
    quMSRPPriceBySubGroup: TADODataSet;
    quSalePriceBySubGroup: TADODataSet;
    quMSRPPriceByCategoryIDModel: TIntegerField;
    quMSRPPriceByCategoryCostPrice: TBCDField;
    quMSRPPriceByCategoryMSRPPercent: TFloatField;
    quMSRPPriceByGroupIDModel: TIntegerField;
    quMSRPPriceByGroupCostPrice: TBCDField;
    quMSRPPriceByGroupMSRPPercent: TFloatField;
    quMSRPPriceBySubGroupIDModel: TIntegerField;
    quMSRPPriceBySubGroupCostPrice: TBCDField;
    quMSRPPriceBySubGroupMSRPPercent: TFloatField;
    quSalePriceByCategoryIDModel: TIntegerField;
    quSalePriceByCategoryCostPrice: TBCDField;
    quSalePriceByCategorySPMPercent: TFloatField;
    quSalePriceByGroupIDModel: TIntegerField;
    quSalePriceByGroupCostPrice: TBCDField;
    quSalePriceByGroupSPMPercent: TFloatField;
    quSalePriceBySubGroupIDModel: TIntegerField;
    quSalePriceBySubGroupCostPrice: TBCDField;
    quSalePriceBySubGroupSPMPercent: TFloatField;
    quSPMarginByCategory: TADODataSet;
    quSPMarginByGroup: TADODataSet;
    quSPMarginBySubGroup: TADODataSet;
    quMSRPMarginByCategory: TADODataSet;
    quMSRPMarginByGroup: TADODataSet;
    quMSRPMarginBySubGroup: TADODataSet;
    dspModelNewPrices: TDataSetProvider;
    quSalePriceByCategoryModel: TStringField;
    quSalePriceByCategoryDescription: TStringField;
    quSalePriceByGroupModel: TStringField;
    quSalePriceByGroupDescription: TStringField;
    quSalePriceBySubGroupModel: TStringField;
    quSalePriceBySubGroupDescription: TStringField;
    quSalePriceByCategoryNewSellingPrice: TBCDField;
    quSalePriceByCategoryNewMSRPPrice: TBCDField;
    quSalePriceBySubGroupNewSellingPrice: TBCDField;
    quSalePriceBySubGroupNewMSRPPrice: TBCDField;
    quSalePriceByCategoryIsUpdate: TBooleanField;
    quSalePriceByGroupNewSellingPrice: TBCDField;
    quSalePriceByGroupNewMSRPPrice: TBCDField;
    quSalePriceByGroupIsUpdate: TBooleanField;
    quSalePriceBySubGroupIsUpdate: TBooleanField;
    quSalePriceByCategorySalePrice: TBCDField;
    quSalePriceByCategoryMSRP: TBCDField;
    quSalePriceByCategoryRealMarkUpValue: TBCDField;
    quSalePriceByCategoryRealMarkUpPercent: TBCDField;
    quSalePriceByCategoryMarginPercent: TBCDField;
    quSalePriceByCategoryMarginValue: TBCDField;
    quSalePriceByCategoryCategory: TStringField;
    quSalePriceByCategorySubCategory: TStringField;
    quSalePriceByCategoryModelGroup: TStringField;
    quSalePriceByGroupSalePrice: TBCDField;
    quSalePriceByGroupMSRP: TBCDField;
    quSalePriceByGroupRealMarkUpValue: TBCDField;
    quSalePriceByGroupRealMarkUpPercent: TBCDField;
    quSalePriceByGroupMarginPercent: TBCDField;
    quSalePriceByGroupMarginValue: TBCDField;
    quSalePriceByGroupCategory: TStringField;
    quSalePriceByGroupSubCategory: TStringField;
    quSalePriceByGroupModelGroup: TStringField;
    quSalePriceBySubGroupSalePrice: TBCDField;
    quSalePriceBySubGroupMSRP: TBCDField;
    quSalePriceBySubGroupRealMarkUpValue: TBCDField;
    quSalePriceBySubGroupRealMarkUpPercent: TBCDField;
    quSalePriceBySubGroupMarginPercent: TBCDField;
    quSalePriceBySubGroupMarginValue: TBCDField;
    quSalePriceBySubGroupCategory: TStringField;
    quSalePriceBySubGroupSubCategory: TStringField;
    quSalePriceBySubGroupModelGroup: TStringField;
    quRoundRangeByGroup: TADODataSet;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    quRoundRangeBySubGroup: TADODataSet;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    quModel: TADODataSet;
    quSalePriceByCategoryMarkUp: TBCDField;
    quSalePriceByGroupMarkUp: TBCDField;
    quSalePriceBySubGroupMarkUp: TBCDField;
    quModelGroupID: TIntegerField;
    quModelIDModelGroup: TIntegerField;
    quModelIDModelSubGroup: TIntegerField;
    quModelMarkUp: TBCDField;
    quModelSellingPrice: TBCDField;
    quSalePriceByCategoryIDGroup: TIntegerField;
    quSalePriceByCategoryIDModelGroup: TIntegerField;
    quSalePriceByCategoryIDModelSubGroup: TIntegerField;
    quSalePriceByGroupIDGroup: TIntegerField;
    quSalePriceByGroupIDModelGroup: TIntegerField;
    quSalePriceByGroupIDModelSubGroup: TIntegerField;
    quSalePriceBySubGroupIDGroup: TIntegerField;
    quSalePriceBySubGroupIDModelGroup: TIntegerField;
    quSalePriceBySubGroupIDModelSubGroup: TIntegerField;
    quSalePriceByCategoryCalc: TBooleanField;
    quSalePriceBySubGroupCalc: TBooleanField;
    quSalePriceByGroupCalc: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FLogError: TStringList;
    FIncreasePriceOnly: boolean;
    FUseRound, FUseMargin, FUseMarkupOnCost: Boolean;
    FADOCon: TADOConnection;
    FMarkupPercent : Double;
    FIDGroup : Integer;
    FRoundDecimal : Currency;

    function GetSalePriceDataSet(AModelGroupingType: TModelGroupingType): TADODataSet;
    function GetMSRPPriceDataSet(AModelGroupingType: TModelGroupingType): TADODataSet;
    function GetSPMarginDataSet(AModelGroupingType: TModelGroupingType): TADODataSet;
    function GetMSRPMarginDataSet(AModelGroupingType: TModelGroupingType): TADODataSet;

    function GetRoundPrice(Price: Currency; ARoundType: Integer; ARoundValues: String): Currency;
    function GetRoundRangeType(AModelGroupingType: TModelGroupingType): TADODataSet;
//    function GetModelSalePriceGroupType(AIDModel,AIDCategory, AIDSubCategory, AIDGroup : Integer): TModelGroupingType;
    function GetModelMSRPGroupType(AIDCategory, AIDSubCategory, AIDGroup : Integer): TModelGroupingType;

    function GetRoundRange(ID: Integer; Price: Currency; AModelGroupingType: TModelGroupingType; var RoundType: Integer; var RoundValues: String): Boolean;
  public
    //amfsouza 06.06.2011
    property IncreasePriceOnly: boolean read FIncreasePriceOnly write FIncreasePriceOnly;
    property LogError: TStringList read FLogError write FLogError;
    property UseRound: Boolean read FUseRound write FUseRound;
    property UseMargin: Boolean read FUseMargin write FUseMargin;
    property UseMarkupOnCost : Boolean read FUseMarkupOnCost write FUseMarkupOnCost;
    property RoundDecimal : Currency read FRoundDecimal write FRoundDecimal;

    procedure SetConnection(ADOCont:TADOConnection);

    function GetMarkupPrice(ACostPrice: Currency; ASalePercent: Double): Currency;
    function GetMarginPrice(ACostPrice: Currency; ASalePercent: Double): Currency;

    function CalcSalePrice(AIDModel,AIDCategory, AIDSubCategory, AIDGroup: Integer; ACostPrice: Currency): Currency;

    function CalcMSRPPrice(AIDCategory, AIDSubCategory, AIDGroup: Integer;
   ACostPrice: Currency): Currency;

    function CalcRounding(AIDCategory: Integer; ASalePrice: Currency): Currency;

    function GetNewSaleMSRPPrices(AID: Integer; ACalcPriceType: TCalcPriceType;
      AModelGroupingType: TModelGroupingType):OleVariant;

    function FormatPrice(Value: Currency): Currency;

    // amfsouza 11.26.2010 - get margin considering level ( group, subcategory, category, model ) and cost price
    function getValueLevelMarginTable(AConnection: TADOConnection;
                                      AModelGroupingType: TModelGroupingType;
                                      AIdRef: integer; ACost: double): double;
    function GetModelSalePriceGroupType(AIDModel,AIDCategory, AIDSubCategory, AIDGroup : Integer): TModelGroupingType;
  end;

var
  DMCalcPrice: TDMCalcPrice;

implementation

uses uSystemConst, uSqlFunctions, uInventoryCalc, uNumericFunctions, Math;

{$R *.dfm}

{ TDMCalcPrice }

//////////////////
// C�digo Novo  //
//////////////////

procedure TDMCalcPrice.DataModuleCreate(Sender: TObject);
begin
  FLogError := TStringList.Create;
  FRoundDecimal := 100.0;
end;

procedure TDMCalcPrice.DataModuleDestroy(Sender: TObject);
begin
  FreeAndNil(FLogError);
end;

function TDMCalcPrice.GetSalePriceDataSet(AModelGroupingType: TModelGroupingType): TADODataSet;
begin
  case AModelGroupingType of
    mgtCategory: Result := quSalePriceByCategory;
    mgtGroup   : Result := quSalePriceByGroup;
    mgtSubGroup: Result := quSalePriceBySubGroup;
  else
    Result := nil;
  end;
end;

function TDMCalcPrice.GetMSRPPriceDataSet(AModelGroupingType: TModelGroupingType): TADODataSet;
begin
  case AModelGroupingType of
    mgtCategory: Result := quMSRPPriceByCategory;
    mgtGroup   : Result := quMSRPPriceByGroup;
    mgtSubGroup: Result := quMSRPPriceBySubGroup;
  else
    Result := nil;
  end;
end;

function TDMCalcPrice.GetMarkupPrice(ACostPrice: Currency; ASalePercent: Double): Currency;
begin
  Result := ACostPrice;

  with TPriceMarkup.Create(ACostPrice, ASalePercent) do
    try
      Result := CalcMarkup;
    finally
      Free;
    end;
end;

function TDMCalcPrice.GetMarginPrice(ACostPrice: Currency; ASalePercent: Double): Currency;
begin
  Result := ACostPrice;

  with TPriceMargem.Create(ACostPrice, ASalePercent) do
  try
    Result := CalcMargem;
  finally
    Free;
  end;
end;

function TDMCalcPrice.CalcMSRPPrice(AIDCategory, AIDSubCategory, AIDGroup: Integer;
   ACostPrice: Currency): Currency;
var
  MSRPPrice : Currency;
  RoundType, iIDCalcMargin: Integer;
  RoundValues:  String;
  AModelGroupingType: TModelGroupingType;
begin
  MSRPPrice := ACostPrice;

  AModelGroupingType := GetModelMSRPGroupType(AIDCategory, AIDSubCategory, AIDGroup);

  case AModelGroupingType of
    mgtCategory: iIDCalcMargin := AIDCategory;
    mgtGroup   : iIDCalcMargin := AIDSubCategory;
    mgtSubGroup: iIDCalcMargin := AIDGroup;
  end;

  try
    with GetMSRPMarginDataSet(AModelGroupingType) do
    try
      Parameters.ParamByName('ID').Value    := iIDCalcMargin;
      Parameters.ParamByName('Cost1').Value := ACostPrice;
      Parameters.ParamByName('Cost2').Value := ACostPrice;
      Open;

      if UseMargin then
        MSRPPrice := GetMarginPrice(ACostPrice, FieldByName('MSRPPercent').AsFloat);


      if (MSRPPrice <> ACostPrice) and
         GetRoundRange(iIDCalcMargin, MSRPPrice, AModelGroupingType, RoundType, RoundValues) then
         MSRPPrice := GetRoundPrice(MSRPPrice,RoundType,RoundValues);

      Result := MSRPPrice;
    finally
      Close;
    end;
  except
    on E: Exception do
      FLogError.Add('' + E.Message)
  end;
end;

function TDMCalcPrice.CalcSalePrice(AIDModel, AIDCategory, AIDSubCategory, AIDGroup: Integer;
   ACostPrice: Currency): Currency;
var
  SalePrice : Currency;
  RoundType, iIDCalcMargin, MarkupPercent: Integer;
  RoundValues:  String;
  AModelGroupingType: TModelGroupingType;
begin
  Result := 0;
  iIDCalcMargin := 0;
  SalePrice := ACostPrice;

  AModelGroupingType := GetModelSalePriceGroupType(AIDModel, AIDCategory, AIDSubCategory, AIDGroup);

  case AModelGroupingType of
    mgtCategory: iIDCalcMargin := AIDCategory;
    mgtGroup   : iIDCalcMargin := AIDSubCategory;
    mgtSubGroup: iIDCalcMargin := AIDGroup;
  end;

  try
    if iIDCalcMargin <> 0 then
    begin
      with GetSPMarginDataSet(AModelGroupingType) do
      try
        Parameters.ParamByName('ID').Value    := iIDCalcMargin;
        Parameters.ParamByName('Cost1').Value := ACostPrice;
        Parameters.ParamByName('Cost2').Value := ACostPrice;
        Open;

        if UseMargin then
          SalePrice := GetMarginPrice(ACostPrice, FieldByName('SPMPercent').AsFloat);

        if (SalePrice <> ACostPrice) and
           GetRoundRange(iIDCalcMargin, SalePrice, AModelGroupingType, RoundType, RoundValues) then
           SalePrice := GetRoundPrice(SalePrice, RoundType, RoundValues);
      finally
        Close;
      end;
    end
    else
    begin
     if UseMargin then
       SalePrice := GetMarginPrice(ACostPrice, FMarkupPercent)
     else
       SalePrice := GetMarkupPrice(ACostPrice, FMarkupPercent);

      if (SalePrice <> ACostPrice) then
        SalePrice := CalcRounding(FIDGroup, SalePrice);
    end;

    Result := SalePrice;
  except
    on E: Exception do
      FLogError.Add('' + E.Message)
  end;
end;

function TDMCalcPrice.GetSPMarginDataSet(AModelGroupingType: TModelGroupingType): TADODataSet;
begin
  case AModelGroupingType of
    mgtCategory: Result := quSPMarginByCategory;
    mgtGroup   : Result := quSPMarginByGroup;
    mgtSubGroup: Result := quSPMarginBySubGroup;
  else
    Result := nil;
  end;
end;

function TDMCalcPrice.GetMSRPMarginDataSet(AModelGroupingType: TModelGroupingType): TADODataSet;
begin
  case AModelGroupingType of
    mgtCategory: Result := quMSRPMarginByCategory;
    mgtGroup   : Result := quMSRPMarginByGroup;
    mgtSubGroup: Result := quMSRPMarginBySubGroup;
  else
    Result := nil;
  end;
end;

function TDMCalcPrice.GetRoundPrice(Price: Currency;
  ARoundType: Integer; ARoundValues: String): Currency;
begin

  Result := Price;

  if UseRound then
  with TPriceRound.Create(Price, ARoundType, ARoundValues) do
    try
      Result := RoundSalePrice;
    finally
      Free;
    end;
end;

function TDMCalcPrice.GetNewSaleMSRPPrices(AID: Integer;
  ACalcPriceType: TCalcPriceType;
  AModelGroupingType: TModelGroupingType): OleVariant;
var
  NewSalePrice, NewMSRPPrice, cCostPrice: Currency;
  RoundType:    Integer;
  RoundValues:  String;
  cdsModelNewPrices : TClientDataSet;
  fMkpPercent : Double;
  SaveSellingPrice: Currency;
begin
  try
    cdsModelNewPrices := TClientDataSet.Create(self);

    dspModelNewPrices.DataSet := GetSalePriceDataSet(AModelGroupingType);

    with cdsModelNewPrices do
    try
      if Active then
        Close;

      ProviderName := 'dspModelNewPrices';
      FetchParams;
      Params.ParamByName('ID').Value := AID;
      Open;
      First;

      while not Eof do
      begin
        if FieldByName('Calc').AsBoolean then
        begin
          cCostPrice := FormatPrice(FieldByName('CostPrice').AsCurrency);
          NewSalePrice := cCostPrice;

          //amfsouza 06.06.2011 -  newSalePrice = model.sellingprice
          SaveSellingPrice := NewSalePrice;

          NewMSRPPrice := 0;

          if cCostPrice <> 0 then
          begin

            // Markup
            if FUseMarkupOnCost then
              NewSalePrice := GetMarkupPrice(cCostPrice, FieldByName('MarkUp').AsFloat)
            //Margin
            else if UseMargin then
            begin
              fMkpPercent := FieldByName('MarkUp').AsFloat;

              if fMkpPercent = 0 then begin
                fMkpPercent  := FieldByName('SPMPercent').AsFloat;
                newSalePrice := FormatPrice(FieldByName('SalePrice').AsCurrency);
                saveSellingPrice := newSalePrice;
              end;

              if fMkpPercent < 100 then
                NewSalePrice := GetMarginPrice(cCostPrice, fMkpPercent);

              //amfsouza 06.06.2011 - verify parameter
              if ( FIncreasePriceOnly ) then begin
                  if ( NewSalePrice < SaveSellingPrice ) then
                     NewSalePrice := SaveSellingPrice;
              end;
            end;

            // Round
            if (NewSalePrice <> cCostPrice) then
              if GetRoundRange(AID, NewSalePrice, AModelGroupingType, RoundType, RoundValues) then
                NewSalePrice := GetRoundPrice(NewSalePrice, RoundType, RoundValues);

            // MSRP
            NewMSRPPrice := CalcMSRPPrice(FieldByName('IDGroup').AsInteger, FieldByName('IDModelGroup').AsInteger, FieldByName('IDModelSubGroup').AsInteger, cCostPrice);
          end;

          Edit;

          if (cCostPrice <> NewSalePrice) and (NewSalePrice <> 0) then
          begin
            Fields.FieldByName('NewSellingPrice').AsCurrency := NewSalePrice;
            Fields.FieldByName('IsUpdate').AsBoolean         := True;
          end
          else
            Fields.FieldByName('NewSellingPrice').AsCurrency := FormatPrice(FieldByName('SalePrice').AsCurrency);

          if (cCostPrice <> NewMSRPPrice) and (NewMSRPPrice <> 0) then
          begin
            Fields.FieldByName('NewMSRPPrice').AsCurrency    := NewMSRPPrice;
            Fields.FieldByName('IsUpdate').AsBoolean         := True;
          end
          else
            Fields.FieldByName('NewMSRPPrice').AsCurrency    := FormatPrice(FieldByName('MSRP').AsCurrency);

          Post;
        end
        else
        begin
          Edit;
          Fields.FieldByName('NewSellingPrice').AsCurrency := FormatPrice(FieldByName('SalePrice').AsCurrency);
          Fields.FieldByName('NewMSRPPrice').AsCurrency    := FormatPrice(FieldByName('MSRP').AsCurrency);
          Post;
        end;

        Next;
      end;

      Result := cdsModelNewPrices.Data;
    finally
      Close;
      Free;
    end;
  except
    on E: Exception do
      FLogError.Add('' + E.Message)
  end;

end;

function TDMCalcPrice.GetRoundRangeType(AModelGroupingType: TModelGroupingType): TADODataSet;
begin
  case AModelGroupingType of
    mgtCategory: Result := quRoundRangeByCategory;
    mgtGroup   : Result := quRoundRangeByGroup;
    mgtSubGroup: Result := quRoundRangeBySubGroup;
  else
    Result := nil;
  end;
end;


function TDMCalcPrice.GetModelSalePriceGroupType(AIDModel,AIDCategory, AIDSubCategory,
  AIDGroup: Integer): TModelGroupingType;
begin

  Result := mgtCategory;

  if (AIDModel <> 0) then
  with quModel do
  begin
   if Active then
      Close;
   Parameters.ParamByName('IDModel').Value := AIDModel;
   try
     Open;
     FMarkupPercent := FieldByName('MarkUp').AsFloat;
     FIDGroup := FieldByName('GroupID').AsInteger;
     if FMarkupPercent <> 0 then
     begin
       Result := mgtNone;
       Exit;
     end;
   finally
     Close;
     end;
  end;

  if AIDGroup <> 0 then
  with quSalePriceBySubGroup do
  begin
   if Active then
      Close;
   Parameters.ParamByName('ID').Value := AIDGroup;
   try
     Open;
     if FieldByName('SPMPercent').AsFloat <> 0 then
     begin
       Result := mgtSubGroup;
       Exit;
     end;
   finally
     Close;
     end;
  end;

  if AIDSubCategory <> 0 then
  with quSalePriceByGroup do
  begin
   if Active then
      Close;
   Parameters.ParamByName('ID').Value := AIDSubCategory;
   try
     Open;
     if FieldByName('SPMPercent').AsFloat <> 0 then
     begin
       Result := mgtGroup;
       Exit;
     end;
   finally
     Close;
     end;
  end;

end;

function TDMCalcPrice.GetModelMSRPGroupType(AIDCategory, AIDSubCategory,
  AIDGroup: Integer): TModelGroupingType;
begin

  Result := mgtCategory;

  if AIDGroup <> 0 then
  with quMSRPPriceBySubGroup do
  begin
   if Active then
      Close;
   Parameters.ParamByName('ID').Value := AIDGroup;
   try
     Open;
     if FieldByName('MSRPPercent').AsFloat <> 0 then
     begin
       Result := mgtSubGroup;
       Exit;
     end;
   finally
     Close;
     end;
  end;

  if AIDSubCategory <> 0 then
  with quMSRPPriceByGroup do
  begin
   if Active then
      Close;
   Parameters.ParamByName('ID').Value := AIDSubCategory;
   try
     Open;
     if FieldByName('MSRPPercent').AsFloat <> 0 then
     begin
       Result := mgtGroup;
       Exit;
     end;
   finally
     Close;
     end;
  end;

end;

procedure TDMCalcPrice.SetConnection(ADOCont: TADOConnection);
var
  i: Integer;
begin
  FADOCon := ADOCont;

  for i := 0 to Pred(ComponentCount) do
  begin
    if Components[i] is TADODataSet then
      TADODataSet(Components[i]).Connection := FADOCon;

    if Components[i] is TADOCommand then
      TADOCommand(Components[i]).Connection := FADOCon;
  end;
end;

function TDMCalcPrice.GetRoundRange(ID: Integer;
  Price: Currency; AModelGroupingType: TModelGroupingType;
  var RoundType: Integer; var RoundValues: String): Boolean;
var
  Count: Integer;
begin
  if not UseRound then
  begin
    Result := False;
    Exit;
  end;

  with GetRoundRangeType(AModelGroupingType) do
  begin
    if Active then
      Close;
    Parameters.ParamByName('ID').Value  := ID;
    Parameters.ParamByName('MinValue').Value := Price;
    Parameters.ParamByName('MaxValue').Value := Price;
    Open;

    if RecordCount > 0 then
    begin
      RoundType   := FieldByName('RoundType').Value;
      RoundValues := FieldByName('RoundValues').Value;
    end;

    Count := RecordCount;
    Close;
  end;

  if Count = 0 then
    Result := False
  else
    Result := True;
end;

function TDMCalcPrice.CalcRounding(AIDCategory: Integer;
  ASalePrice: Currency): Currency;
begin
  Result := ASalePrice;

  if not UseRound then
    Exit;

  with quRoundRangeByCategory do
  begin
    if Active then
      Close;
    Parameters.ParamByName('ID').Value  := AIDCategory;
    Parameters.ParamByName('MinValue').Value := ASalePrice;
    Parameters.ParamByName('MaxValue').Value := ASalePrice;
    Open;

    if RecordCount > 0 then
      Result := GetRoundPrice(ASalePrice,FieldByName('RoundType').Value,FieldByName('RoundValues').Value);

    Close;
  end;
end;

function TDMCalcPrice.FormatPrice(Value: Currency): Currency;
begin
  Result := Round(Value *  FRoundDecimal) / FRoundDecimal;
end;

function TDMCalcPrice.getValueLevelMarginTable(AConnection: TADOConnection;
  AModelGroupingType: TModelGroupingType; AIdRef: integer;
  ACost: double): double;
var
   dsMargin: TADOQuery;
   sql: String;
   IdMarginTable: Integer;
begin
     dsMargin := TADOQuery.Create(nil);
     dsMargin.Connection := AConnection;
     sql := '';

     try
       //
       if ( AModelGroupingType = mgtSubGroup ) then begin
          sql :=
              'select idsalepricemargemtable from ModelSubGroup ' +
              'where idmodelgroup = :idmodelgroup               ';
          dsMargin.Parameters.ParamByName('idmodelgroup').Value := AIdRef;
          dsMargin.Open;

          IdMarginTable := dsMargin.fieldByName('idsalepricemargemtable').Value;

          if ( not dsMargin.FieldByName('idsalepricemargemtable').IsNull ) then begin
              sql := 'select idmargemtable from MargemTable ' +
                     'where imargemtable = :idmargemtable ';
              dsMargin.Parameters.ParamByName('idmargemtable').Value := IdMarginTable;
              dsMargin.Open;

              IdMarginTable := dsMargin.fieldByName('idmargemtable').Value;

              sql := 'select idmargemtablerange, minvalue, maxvalue, percentage ' +
                     'where idmargemtable = :idmargemtable '+
                     '  and ( (:unitcostmin >= minvalue) and (:unitcostmax <= maxvalue) )';
              dsMargin.SQL.Text := sql;
              dsMargin.Parameters.ParamByName('idmargemtable').Value := IdMarginTable;
              dsMargin.Parameters.ParamByName('unitcostmin').Value   := Acost;
              dsMargin.Parameters.ParamByName('unitcostmax').Value   := ACost;
              dsMargin.Open;

              if ( not dsMargin.Eof ) then begin
                 result := ( dsMargin.fieldByName('percentage').Value / 100 );
                 exit;
              end;
          end;
       end
       else if ( AModelGroupingType = mgtGroup ) then begin
          sql :=
              'select idsalepricemargemtable from ModelGroup ' +
              'where idmodelgroup = :idmodelgroup               ';
          dsMargin.SQl.Text := sql;
          dsMargin.Parameters.ParamByName('idmodelgroup').Value := AIdRef;
          dsMargin.Open;

          IdMarginTable := dsMargin.fieldByName('idsalepricemargemtable').Value;

          if ( not dsMargin.FieldByName('idsalepricemargemtable').IsNull ) then begin
              sql := 'select idmargemtable from MargemTable ' +
                     'where idmargemtable = :idmargemtable ';
              dsMargin.SQl.Text := sql;
              dsMargin.Parameters.ParamByName('idmargemtable').Value := IdMarginTable;
              dsMargin.Open;

              IdMarginTable := dsMargin.fieldByName('idmargemtable').Value;

              sql := 'select idmargemtablerange, minvalue, maxvalue, percentage from MargemTableRange ' +
                     'where idmargemtable = :idmargemtable '+
                     '  and ( (:unitcostmin >= minvalue) and (:unitcostmax <= maxvalue) )';
              dsMargin.SQL.Text := sql;
              dsMargin.Parameters.ParamByName('idmargemtable').Value := IdMarginTable;
              dsMargin.Parameters.ParamByName('unitcostmin').Value   := Acost;
              dsMargin.Parameters.ParamByName('unitcostmax').Value   := ACost;
              dsMargin.Open;

              if ( not dsMargin.Eof ) then begin
                 result := ( dsMargin.fieldByName('percentage').Value / 100 );
                 exit;
              end;
          end;
       end
       else if ( AModelGroupingType = mgtCategory ) then begin
          sql :=
              'select idsalepricemargemtable from TabGroup ' +
              'where idgroup = :idgroup               ';

          dsMargin.SQl.Text := sql;

          dsMargin.Parameters.ParamByName('idgroup').Value := AIdRef;
          dsMargin.Open;
          IdMarginTable := dsMargin.fieldByName('idsalepricemargemtable').Value;

          if ( not dsMargin.FieldByName('idsalepricemargemtable').IsNull ) then begin
              sql := 'select idmargemtable from MargemTable ' +
                     'where idmargemtable = :idmargemtable ';
              dsMargin.SQL.Text := sql;


              dsMargin.Parameters.ParamByName('idmargemtable').Value := IdMarginTable;
              dsMargin.Open;

              IdMarginTable := dsMargin.fieldByName('idmargemtable').Value;

              sql := 'select idmargemtablerange, minvalue, maxvalue, percentage from MargemTableRange ' +
                     'where idmargemtable = :idmargemtable '+
                     '  and ( (:unitcostmin >= minvalue) and (:unitcostmax <= maxvalue) )';
              dsMargin.SQL.Text := sql;
              dsMargin.Parameters.ParamByName('idmargemtable').Value := IdMarginTable;
              dsMargin.Parameters.ParamByName('unitcostmin').Value   := Acost;
              dsMargin.Parameters.ParamByName('unitcostmax').Value   := ACost;
              dsMargin.Open;

              if ( not dsMargin.Eof ) then begin
                 result := ( dsMargin.fieldByName('percentage').Value / 100 );
                 exit;
              end;
          end;
       end
       else if ( AModelGroupingType = mgtNone ) then begin
       // under construction
          result := 0; //?
       end;
     finally
       freeAndNil(dsMargin);
     end;
end;

end.
