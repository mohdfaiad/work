object DMCalcPrice: TDMCalcPrice
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 222
  Top = 7
  Height = 344
  Width = 725
  object quRoundRangeByCategory: TADODataSet
    CommandText = 
      'SELECT'#13#10#9'RTR.RoundValues,'#13#10#9'RTR.RoundType'#13#10'FROM'#13#10#9'TabGroup TG (N' +
      'OLOCK)'#13#10#9'JOIN RoundingTableRange RTR (NOLOCK) ON (TG.IDRoundingT' +
      'able=RTR.IDRoundingTable)'#13#10'WHERE'#13#10#9'TG.IDGroup = :ID'#13#10#9'AND'#13#10#9'RTR.' +
      'MinValue <= :MinValue'#13#10#9'AND'#13#10#9'RTR.MaxValue >= :MaxValue'
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MinValue'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'MaxValue'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 560
    Top = 84
    object quRoundRangeByCategoryRoundValues: TStringField
      FieldName = 'RoundValues'
      Size = 100
    end
    object quRoundRangeByCategoryRoundType: TIntegerField
      FieldName = 'RoundType'
    end
  end
  object quMSRPPriceByCategory: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT'#13#10#9'M.IDModel,'#13#10#9'M.VendorCost + M.OtherCost + M.FreightCost' +
      ' AS CostPrice,'#13#10#9'CASE '#13#10#9#9'WHEN TG.UseMSRPPercent = 1 THEN TG.MSR' +
      'PMargemPercent'#13#10#9#9'WHEN ISNULL(MSRP.IDMargemTable, 0) = 0 THEN TG' +
      '.MSRPMargemPercent'#13#10#9#9'ELSE'#13#10#9#9#9'MSRP.Percentage'#13#10#13#10#9'END AS MSRPPe' +
      'rcent'#13#10'FROM'#13#10#9'Model M INNER JOIN'#13#10#9'TabGroup TG'#13#10#9#9'ON (M.GroupID ' +
      '= TG.IDGroup) LEFT JOIN '#13#10#9'ModelGroup MG '#13#10#9#9'ON (M.IDModelGroup ' +
      '= MG.IDModelGroup) LEFT JOIN '#13#10#9'ModelSubGroup MSG '#13#10#9#9'ON (M.IDMo' +
      'delSubGroup = MSG.IDModelSubGroup) LEFT JOIN'#13#10#9'('#13#10#9#9'SELECT'#13#10#9#9#9'M' +
      'TR.IDMargemTable,'#13#10#9#9#9'MTR.MinValue,'#13#10#9#9#9'MTR.MaxValue,'#13#10#9#9#9'MTR.Pe' +
      'rcentage'#13#10#9#9'FROM'#13#10#9#9#9'MargemTable MT INNER JOIN'#13#10#9#9#9'MargemTableRa' +
      'nge MTR'#13#10#9#9#9#9'ON (MT.IDMargemTable = MTR.IDMargemTable)'#13#10#9#9'WHERE'#13 +
      #10#9#9#9'MT.Desativado = 0'#13#10#13#10#9') MSRP ON'#13#10#9#9'('#13#10#9#9#9'TG.IDMSRPMargemTabl' +
      'e = MSRP.IDMargemTable'#13#10#9#9#9'AND '#13#10#9#9#9'('#13#10#9#9#9#9'(M.VendorCost + M.Oth' +
      'erCost + M.FreightCost >= MSRP.MinValue)'#13#10#9#9#9#9'AND'#13#10#9#9#9#9'(M.Vendor' +
      'Cost + M.OtherCost + M.FreightCost <= MSRP.MaxValue)'#13#10#9#9#9')'#13#10#9#9')'#13 +
      #10#13#10'WHERE'#13#10#9'TG.IDGroup = :ID'#13#10#9'AND'#13#10#9'ISNULL(MG.IDMSRPMargemTable,' +
      ' 0) = 0'#13#10#9'AND'#13#10#9'ISNULL(MG.MSRPMargemPercent, 0) = 0'#13#10#9'AND'#13#10#9'ISNU' +
      'LL(MSG.IDMSRPMargemTable, 0) = 0'#13#10#9'AND'#13#10#9'ISNULL(MSG.MSRPMargemPe' +
      'rcent, 0) = 0'#9#13#10#13#10'GROUP BY'#13#10#9'M.IDModel,'#9#13#10#9'M.VendorCost + M.Othe' +
      'rCost + M.FreightCost,'#13#10#9'CASE '#13#10#9#9'WHEN TG.UseMSRPPercent = 1 THE' +
      'N TG.MSRPMargemPercent'#13#10#9#9'WHEN ISNULL(MSRP.IDMargemTable, 0) = 0' +
      ' THEN TG.MSRPMargemPercent'#13#10#9#9'ELSE'#13#10#9#9#9'MSRP.Percentage'#13#10#13#10#9'END'
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 116
    object quMSRPPriceByCategoryIDModel: TIntegerField
      FieldName = 'IDModel'
    end
    object quMSRPPriceByCategoryCostPrice: TBCDField
      FieldName = 'CostPrice'
      Precision = 19
    end
    object quMSRPPriceByCategoryMSRPPercent: TFloatField
      FieldName = 'MSRPPercent'
    end
  end
  object quSalePriceByCategory: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT'#13#10#9'M.IDModel,'#13#10#9'M.VendorCost + M.OtherCost + M.FreightCost' +
      ' AS CostPrice,'#13#10#9'M.Model,'#13#10#9'M.Description,'#13#10#9'IsNull(M.SellingPri' +
      'ce,0) as SalePrice,'#13#10#9'IsNull(M.SuggRetail,0) as MSRP,'#13#10#9'M.MarkUp' +
      ','#13#10#9'CASE WHEN M.SellingPrice > 0 THEN M.SellingPrice - M.FinalCo' +
      'st END as RealMarkUpValue,'#13#10#9'CASE WHEN M.SellingPrice > 0 AND M.' +
      'FinalCost<>0 THEN (M.SellingPrice - M.FinalCost)/M.FinalCost*100' +
      ' END as RealMarkUpPercent,'#13#10#9'CASE WHEN M.SellingPrice > 0 THEN (' +
      '1 - (M.FinalCost/M.SellingPrice)) * 100 END as MarginPercent,'#13#10#9 +
      'CASE WHEN M.SellingPrice > 0 THEN ((1 - (M.FinalCost/M.SellingPr' +
      'ice)) * M.SellingPrice) END as MarginValue,'#13#10#9'TG.Name Category,'#13 +
      #10#9'MG.ModelGroup SubCategory,'#13#10#9'MSG.ModelSubGroup ModelGroup,'#13#10#9'T' +
      'G.IDGroup,'#13#10#9'MG.IDModelGroup,'#9#13#10#9'MSG.IDModelSubGroup,'#13#10#9'CAST(0.0' +
      '0 as Money) as NewSellingPrice,'#13#10#9'CAST(0.00 as Money) as NewMSRP' +
      'Price,'#13#10#9'CAST(0 as Bit) as IsUpdate,'#13#10#9'CASE '#13#10#9#9'WHEN TG.UseSaleP' +
      'ricePercent = 1 THEN TG.SalePriceMargemPercent'#13#10#9#9'WHEN ISNULL(SP' +
      'M.IDMargemTable, 0) = 0 THEN TG.SalePriceMargemPercent'#13#10#9#9'ELSE'#13#10 +
      #9#9#9'SPM.Percentage'#13#10#13#10#9'END AS SPMPercent,'#13#10#9'CAST(CASE WHEN ((ISNU' +
      'LL(MG.IDSalePriceMargemTable, 0) = 0) AND (ISNULL(MG.SalePriceMa' +
      'rgemPercent, 0) = 0) AND'#13#10#9#9'  (ISNULL(MSG.IDSalePriceMargemTable' +
      ', 0) = 0) AND (ISNULL(MSG.SalePriceMargemPercent, 0) = 0)) THEN ' +
      '1'#13#10#9'     ELSE 0 END  as Bit) as Calc'#9#9#13#10'FROM'#13#10#9'Model M (NOLOCK)'#13 +
      #10#9'INNER JOIN TabGroup TG (NOLOCK) ON (M.GroupID = TG.IDGroup) '#13#10 +
      #9'LEFT JOIN ModelGroup MG (NOLOCK) ON (M.IDModelGroup = MG.IDMode' +
      'lGroup) '#13#10#9'LEFT JOIN ModelSubGroup MSG (NOLOCK) ON (M.IDModelSub' +
      'Group = MSG.IDModelSubGroup) '#13#10#9'LEFT JOIN'#13#10#9'('#13#10#9#9'SELECT'#13#10#9#9#9'MTR.' +
      'IDMargemTable,'#13#10#9#9#9'MTR.MinValue,'#13#10#9#9#9'MTR.MaxValue,'#13#10#9#9#9'MTR.Perce' +
      'ntage'#13#10#9#9'FROM'#13#10#9#9#9'MargemTable MT (NOLOCK)'#13#10#9#9#9'INNER JOIN MargemT' +
      'ableRange MTR (NOLOCK) ON (MT.IDMargemTable = MTR.IDMargemTable)' +
      #13#10#9#9'WHERE'#13#10#9#9#9'MT.Desativado = 0'#13#10#13#10#9') SPM ON'#13#10#9#9'('#13#10#9#9#9'TG.IDSaleP' +
      'riceMargemTable = SPM.IDMargemTable '#13#10#9#9#9'AND '#13#10#9#9#9'('#13#10#9#9#9#9'(M.Vend' +
      'orCost + M.OtherCost + M.FreightCost >= SPM.MinValue)'#13#10#9#9#9#9'AND'#13#10 +
      #9#9#9#9'(M.VendorCost + M.OtherCost + M.FreightCost <= SPM.MaxValue)' +
      #13#10#9#9#9')'#13#10#9#9') '#13#10#13#10'WHERE '#13#10#9'TG.IDGroup = :ID'#13#10#9'--AND'#13#10#9'--ISNULL(MG.' +
      'IDSalePriceMargemTable, 0) = 0'#13#10#9'--AND'#13#10#9'--ISNULL(MG.SalePriceMa' +
      'rgemPercent, 0) = 0'#13#10#9'--AND'#13#10#9'--ISNULL(MSG.IDSalePriceMargemTabl' +
      'e, 0) = 0'#13#10#9'--AND'#13#10#9'--ISNULL(MSG.SalePriceMargemPercent, 0) = 0'#9 +
      #13#10'GROUP BY'#13#10#9'M.IDModel,'#9#13#10#9'M.VendorCost + M.OtherCost + M.Freigh' +
      'tCost,'#13#10#9'M.Model,'#13#10#9'M.Description,'#13#10#9'M.SellingPrice,'#13#10#9'M.SuggRet' +
      'ail,'#13#10#9'M.MarkUp,'#13#10#9'CASE WHEN M.SellingPrice > 0 THEN M.SellingPr' +
      'ice - M.FinalCost END,'#13#10#9'CASE WHEN M.SellingPrice > 0 AND M.Fina' +
      'lCost<>0 THEN (M.SellingPrice - M.FinalCost)/M.FinalCost*100 END' +
      ','#13#10#9'CASE WHEN M.SellingPrice > 0 THEN (1 - (M.FinalCost/M.Sellin' +
      'gPrice)) * 100 END,'#13#10#9'CASE WHEN M.SellingPrice > 0 THEN ((1 - (M' +
      '.FinalCost/M.SellingPrice)) * M.SellingPrice) END,'#13#10#9'TG.Name,'#13#10#9 +
      'MG.ModelGroup,'#13#10#9'MSG.ModelSubGroup,'#13#10#9'TG.IDGroup,'#13#10#9'MG.IDModelGr' +
      'oup,'#9#13#10#9'MSG.IDModelSubGroup,'#13#10#9'CASE '#13#10#9#9'WHEN TG.UseSalePricePerc' +
      'ent = 1 THEN TG.SalePriceMargemPercent'#13#10#9#9'WHEN ISNULL(SPM.IDMarg' +
      'emTable, 0) = 0 THEN TG.SalePriceMargemPercent'#13#10#9#9'ELSE'#13#10#9#9#9'SPM.P' +
      'ercentage'#13#10#13#10#9'END,'#13#10#9'MG.IDSalePriceMargemTable,'#13#10#9'MG.SalePriceMa' +
      'rgemPercent,'#13#10#9'MSG.IDSalePriceMargemTable,'#13#10#9'MSG.SalePriceMargem' +
      'Percent'#13#10#13#10
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 184
    Top = 116
    object quSalePriceByCategoryIDModel: TIntegerField
      FieldName = 'IDModel'
    end
    object quSalePriceByCategoryCostPrice: TBCDField
      FieldName = 'CostPrice'
      Precision = 19
    end
    object quSalePriceByCategorySPMPercent: TFloatField
      FieldName = 'SPMPercent'
    end
    object quSalePriceByCategoryModel: TStringField
      FieldName = 'Model'
      Size = 30
    end
    object quSalePriceByCategoryDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object quSalePriceByCategoryNewSellingPrice: TBCDField
      FieldName = 'NewSellingPrice'
      Precision = 19
    end
    object quSalePriceByCategoryNewMSRPPrice: TBCDField
      FieldName = 'NewMSRPPrice'
      Precision = 19
    end
    object quSalePriceByCategoryIsUpdate: TBooleanField
      FieldName = 'IsUpdate'
    end
    object quSalePriceByCategorySalePrice: TBCDField
      FieldName = 'SalePrice'
      Precision = 19
    end
    object quSalePriceByCategoryMSRP: TBCDField
      FieldName = 'MSRP'
      Precision = 19
    end
    object quSalePriceByCategoryRealMarkUpValue: TBCDField
      FieldName = 'RealMarkUpValue'
      Precision = 19
    end
    object quSalePriceByCategoryRealMarkUpPercent: TBCDField
      FieldName = 'RealMarkUpPercent'
      Precision = 19
    end
    object quSalePriceByCategoryMarginPercent: TBCDField
      FieldName = 'MarginPercent'
      Precision = 19
    end
    object quSalePriceByCategoryMarginValue: TBCDField
      FieldName = 'MarginValue'
      Precision = 19
    end
    object quSalePriceByCategoryCategory: TStringField
      FieldName = 'Category'
      Size = 30
    end
    object quSalePriceByCategorySubCategory: TStringField
      FieldName = 'SubCategory'
      Size = 30
    end
    object quSalePriceByCategoryModelGroup: TStringField
      FieldName = 'ModelGroup'
      Size = 30
    end
    object quSalePriceByCategoryMarkUp: TBCDField
      FieldName = 'MarkUp'
      Precision = 19
    end
    object quSalePriceByCategoryIDGroup: TIntegerField
      FieldName = 'IDGroup'
    end
    object quSalePriceByCategoryIDModelGroup: TIntegerField
      FieldName = 'IDModelGroup'
    end
    object quSalePriceByCategoryIDModelSubGroup: TIntegerField
      FieldName = 'IDModelSubGroup'
    end
    object quSalePriceByCategoryCalc: TBooleanField
      FieldName = 'Calc'
      ReadOnly = True
    end
  end
  object quMSRPPriceByGroup: TADODataSet
    CommandText = 
      'SELECT'#13#10#9'M.IDModel,'#13#10#9'M.VendorCost + M.OtherCost + M.FreightCost' +
      ' AS CostPrice,'#13#10#9'CASE '#13#10#9#9'WHEN MG.UseMSRPPercent = 1 THEN MG.MSR' +
      'PMargemPercent'#13#10#9#9'WHEN ISNULL(MSRP.IDMargemTable, 0) = 0 THEN MG' +
      '.MSRPMargemPercent'#13#10#9#9'ELSE'#13#10#9#9#9'MSRP.Percentage'#13#10#13#10#9'END AS MSRPPe' +
      'rcent'#13#10'FROM'#13#10#9'Model M (NOLOCK)'#13#10#9'INNER JOIN ModelGroup MG (NOLOC' +
      'K)ON (M.IDModelGroup = MG.IDModelGroup) '#13#10#9'LEFT JOIN ModelSubGro' +
      'up MSG (NOLOCK) ON (M.IDModelSubGroup = MSG.IDModelSubGroup) LEF' +
      'T JOIN'#13#10#9'('#13#10#9#9'SELECT'#13#10#9#9#9'MTR.IDMargemTable,'#13#10#9#9#9'MTR.MinValue,'#13#10#9 +
      #9#9'MTR.MaxValue,'#13#10#9#9#9'MTR.Percentage'#13#10#9#9'FROM'#13#10#9#9#9'MargemTable MT (N' +
      'OLOCK)'#13#10#9#9#9'INNER JOIN MargemTableRange MTR (NOLOCK) ON (MT.IDMar' +
      'gemTable = MTR.IDMargemTable)'#13#10#9#9'WHERE'#13#10#9#9#9'MT.Desativado = 0'#13#10#13#10 +
      #9') MSRP ON'#13#10#9#9'('#13#10#9#9#9'MG.IDMSRPMargemTable = MSRP.IDMargemTable'#13#10#9 +
      #9#9'AND '#13#10#9#9#9'('#13#10#9#9#9#9'(M.VendorCost + M.OtherCost + M.FreightCost >=' +
      ' MSRP.MinValue)'#13#10#9#9#9#9'AND'#13#10#9#9#9#9'(M.VendorCost + M.OtherCost + M.Fr' +
      'eightCost <= MSRP.MaxValue)'#13#10#9#9#9')'#13#10#9#9')'#13#10#13#10'WHERE'#13#10#9'MG.IDModelGrou' +
      'p = :ID'#13#10#9'AND'#13#10#9'ISNULL(MSG.IDMSRPMargemTable, 0) = 0'#13#10#9'AND'#13#10#9'ISN' +
      'ULL(MSG.MSRPMargemPercent, 0) = 0'#9#13#10#13#10'GROUP BY'#13#10#9'M.IDModel,'#9#13#10#9'M' +
      '.VendorCost + M.OtherCost + M.FreightCost,'#13#10#9'CASE '#13#10#9#9'WHEN MG.Us' +
      'eMSRPPercent = 1 THEN MG.MSRPMargemPercent'#13#10#9#9'WHEN ISNULL(MSRP.I' +
      'DMargemTable, 0) = 0 THEN MG.MSRPMargemPercent'#13#10#9#9'ELSE'#13#10#9#9#9'MSRP.' +
      'Percentage'#13#10#13#10#9'END'
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 164
    object quMSRPPriceByGroupIDModel: TIntegerField
      FieldName = 'IDModel'
    end
    object quMSRPPriceByGroupCostPrice: TBCDField
      FieldName = 'CostPrice'
      Precision = 19
    end
    object quMSRPPriceByGroupMSRPPercent: TFloatField
      FieldName = 'MSRPPercent'
    end
  end
  object quSalePriceByGroup: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT'#13#10#9'M.IDModel,'#13#10#9'M.VendorCost + M.OtherCost + M.FreightCost' +
      ' AS CostPrice,'#13#10#9'M.Model,'#13#10#9'M.Description,'#13#10#9'IsNull(M.SellingPri' +
      'ce,0) as SalePrice,'#13#10#9'IsNull(M.SuggRetail,0) as MSRP,'#13#10#9'M.MarkUp' +
      ','#13#10#9'CASE WHEN M.SellingPrice > 0 THEN M.SellingPrice - M.FinalCo' +
      'st END as RealMarkUpValue,'#13#10#9'CASE WHEN M.SellingPrice > 0 AND M.' +
      'FinalCost<>0 THEN (M.SellingPrice - M.FinalCost)/M.FinalCost*100' +
      ' END as RealMarkUpPercent,'#13#10#9'CASE WHEN M.SellingPrice > 0 THEN (' +
      '1 - (M.FinalCost/M.SellingPrice)) * 100 END as MarginPercent,'#13#10#9 +
      'CASE WHEN M.SellingPrice > 0 THEN ((1 - (M.FinalCost/M.SellingPr' +
      'ice)) * M.SellingPrice) END as MarginValue,'#13#10#9'TG.Name Category,'#13 +
      #10#9'MG.ModelGroup SubCategory,'#13#10#9'MSG.ModelSubGroup ModelGroup,'#13#10#9'T' +
      'G.IDGroup,'#13#10#9'MG.IDModelGroup,'#9#13#10#9'MSG.IDModelSubGroup,'#13#10#9'CAST(0.0' +
      '0 as Money) as NewSellingPrice,'#13#10#9'CAST(0.00 as Money) as NewMSRP' +
      'Price,'#13#10#9'CAST(0 as Bit) as IsUpdate,'#13#10#9'CASE '#13#10#9#9'WHEN MG.UseSaleP' +
      'ricePercent = 1 THEN MG.SalePriceMargemPercent'#13#10#9#9'WHEN ISNULL(SP' +
      'M.IDMargemTable, 0) = 0 THEN MG.SalePriceMargemPercent'#13#10#9#9'ELSE'#13#10 +
      #9#9#9'SPM.Percentage'#13#10#13#10#9'END AS SPMPercent,'#13#10#9'CAST(CASE WHEN ((ISNU' +
      'LL(MSG.IDSalePriceMargemTable, 0) = 0) AND (ISNULL(MSG.SalePrice' +
      'MargemPercent, 0) = 0)) THEN 1'#13#10#9'     ELSE 0 END  as Bit) as Cal' +
      'c'#9#13#10'FROM'#13#10#9'Model M (NOLOCK)'#13#10#9'INNER JOIN ModelGroup MG (NOLOCK) ' +
      'ON (M.IDModelGroup = MG.IDModelGroup) '#13#10#9'LEFT JOIN TabGroup TG (' +
      'NOLOCK) ON (M.GroupID = TG.IDGroup) '#13#10#9'LEFT JOIN ModelSubGroup M' +
      'SG (NOLOCK) ON (M.IDModelSubGroup = MSG.IDModelSubGroup) '#13#10#9'LEFT' +
      ' JOIN'#13#10#9'('#13#10#9#9'SELECT'#13#10#9#9#9'MTR.IDMargemTable,'#13#10#9#9#9'MTR.MinValue,'#13#10#9#9 +
      #9'MTR.MaxValue,'#13#10#9#9#9'MTR.Percentage'#13#10#9#9'FROM'#13#10#9#9#9'MargemTable MT (NO' +
      'LOCK)'#13#10#9#9#9'INNER JOIN MargemTableRange MTR'#9'ON (MT.IDMargemTable =' +
      ' MTR.IDMargemTable)'#13#10#9#9'WHERE'#13#10#9#9#9'MT.Desativado = 0'#13#10#13#10#9') SPM ON'#13 +
      #10#9#9'('#13#10#9#9#9'MG.IDSalePriceMargemTable = SPM.IDMargemTable '#13#10#9#9#9'AND ' +
      #13#10#9#9#9'('#13#10#9#9#9#9'(M.VendorCost + M.OtherCost + M.FreightCost >= SPM.M' +
      'inValue)'#13#10#9#9#9#9'AND'#13#10#9#9#9#9'(M.VendorCost + M.OtherCost + M.FreightCo' +
      'st <= SPM.MaxValue)'#13#10#9#9#9')'#13#10#9#9') '#13#10#13#10'WHERE'#13#10#9'MG.IDModelGroup = :ID' +
      #13#10#9'--AND'#9#9#13#10#9'--ISNULL(MSG.IDSalePriceMargemTable, 0) = 0'#13#10#9'--AND' +
      #13#10#9'--ISNULL(MSG.SalePriceMargemPercent, 0) = 0'#9#13#10'GROUP BY'#13#10#9'M.ID' +
      'Model,'#9#13#10#9'M.VendorCost + M.OtherCost + M.FreightCost,'#13#10#9'M.Model,' +
      #13#10#9'M.Description,'#13#10#9'M.SellingPrice,'#13#10#9'M.SuggRetail,'#13#10#9'M.MarkUp,'#13 +
      #10#9'CASE WHEN M.SellingPrice > 0 THEN M.SellingPrice - M.FinalCost' +
      ' END,'#13#10#9'CASE WHEN M.SellingPrice > 0 AND M.FinalCost<>0 THEN (M.' +
      'SellingPrice - M.FinalCost)/M.FinalCost*100 END,'#13#10#9'CASE WHEN M.S' +
      'ellingPrice > 0 THEN (1 - (M.FinalCost/M.SellingPrice)) * 100 EN' +
      'D,'#13#10#9'CASE WHEN M.SellingPrice > 0 THEN ((1 - (M.FinalCost/M.Sell' +
      'ingPrice)) * M.SellingPrice) END,'#13#10#9'TG.Name,'#13#10#9'MG.ModelGroup,'#13#10#9 +
      'MSG.ModelSubGroup,'#13#10#9'TG.IDGroup,'#13#10#9'MG.IDModelGroup,'#9#13#10#9'MSG.IDMod' +
      'elSubGroup,'#13#10#9'CASE '#13#10#9#9'WHEN MG.UseSalePricePercent = 1 THEN MG.S' +
      'alePriceMargemPercent'#13#10#9#9'WHEN ISNULL(SPM.IDMargemTable, 0) = 0 T' +
      'HEN MG.SalePriceMargemPercent'#13#10#9#9'ELSE'#13#10#9#9#9'SPM.Percentage'#13#10#13#10#9'END' +
      ','#13#10#9'MSG.IDSalePriceMargemTable,'#13#10#9'MSG.SalePriceMargemPercent'
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 184
    Top = 164
    object quSalePriceByGroupIDModel: TIntegerField
      FieldName = 'IDModel'
    end
    object quSalePriceByGroupCostPrice: TBCDField
      FieldName = 'CostPrice'
      Precision = 19
    end
    object quSalePriceByGroupSPMPercent: TFloatField
      FieldName = 'SPMPercent'
    end
    object quSalePriceByGroupModel: TStringField
      FieldName = 'Model'
      Size = 30
    end
    object quSalePriceByGroupDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object quSalePriceByGroupNewSellingPrice: TBCDField
      FieldName = 'NewSellingPrice'
      Precision = 19
    end
    object quSalePriceByGroupNewMSRPPrice: TBCDField
      FieldName = 'NewMSRPPrice'
      Precision = 19
    end
    object quSalePriceByGroupIsUpdate: TBooleanField
      FieldName = 'IsUpdate'
    end
    object quSalePriceByGroupSalePrice: TBCDField
      FieldName = 'SalePrice'
      Precision = 19
    end
    object quSalePriceByGroupMSRP: TBCDField
      FieldName = 'MSRP'
      Precision = 19
    end
    object quSalePriceByGroupRealMarkUpValue: TBCDField
      FieldName = 'RealMarkUpValue'
      Precision = 19
    end
    object quSalePriceByGroupRealMarkUpPercent: TBCDField
      FieldName = 'RealMarkUpPercent'
      Precision = 19
    end
    object quSalePriceByGroupMarginPercent: TBCDField
      FieldName = 'MarginPercent'
      Precision = 19
    end
    object quSalePriceByGroupMarginValue: TBCDField
      FieldName = 'MarginValue'
      Precision = 19
    end
    object quSalePriceByGroupCategory: TStringField
      FieldName = 'Category'
      Size = 30
    end
    object quSalePriceByGroupSubCategory: TStringField
      FieldName = 'SubCategory'
      Size = 30
    end
    object quSalePriceByGroupModelGroup: TStringField
      FieldName = 'ModelGroup'
      Size = 30
    end
    object quSalePriceByGroupMarkUp: TBCDField
      FieldName = 'MarkUp'
      Precision = 19
    end
    object quSalePriceByGroupIDGroup: TIntegerField
      FieldName = 'IDGroup'
    end
    object quSalePriceByGroupIDModelGroup: TIntegerField
      FieldName = 'IDModelGroup'
    end
    object quSalePriceByGroupIDModelSubGroup: TIntegerField
      FieldName = 'IDModelSubGroup'
    end
    object quSalePriceByGroupCalc: TBooleanField
      FieldName = 'Calc'
      ReadOnly = True
    end
  end
  object quMSRPPriceBySubGroup: TADODataSet
    CommandText = 
      'SELECT'#13#10#9'M.IDModel,'#13#10#9'M.VendorCost + M.OtherCost + M.FreightCost' +
      ' AS CostPrice,'#13#10#9'CASE '#13#10#9#9'WHEN MSG.UseMSRPPercent = 1 THEN MSG.M' +
      'SRPMargemPercent'#13#10#9#9'WHEN ISNULL(MSRP.IDMargemTable, 0) = 0 THEN ' +
      'MSG.MSRPMargemPercent'#13#10#9#9'ELSE'#13#10#9#9#9'MSRP.Percentage'#13#10#13#10#9'END AS MSR' +
      'PPercent'#13#10'FROM'#13#10#9'Model M (NOLOCK)'#13#10#9'INNER JOIN ModelSubGroup MSG' +
      ' (NOLOCK) ON (M.IDModelSubGroup = MSG.IDModelSubGroup) '#13#10#9'LEFT J' +
      'OIN'#13#10#9'('#13#10#9#9'SELECT'#13#10#9#9#9'MTR.IDMargemTable,'#13#10#9#9#9'MTR.MinValue,'#13#10#9#9#9'M' +
      'TR.MaxValue,'#13#10#9#9#9'MTR.Percentage'#13#10#9#9'FROM'#13#10#9#9#9'MargemTable MT (NOLO' +
      'CK)'#13#10#9#9#9'INNER JOIN MargemTableRange MTR (NOLOCK) ON (MT.IDMargem' +
      'Table = MTR.IDMargemTable)'#13#10#9#9'WHERE'#13#10#9#9#9'MT.Desativado = 0'#13#10#13#10#9') ' +
      'MSRP ON'#13#10#9#9'('#13#10#9#9#9'MSG.IDMSRPMargemTable = MSRP.IDMargemTable'#13#10#9#9#9 +
      'AND '#13#10#9#9#9'('#13#10#9#9#9#9'(M.VendorCost + M.OtherCost + M.FreightCost >= M' +
      'SRP.MinValue)'#13#10#9#9#9#9'AND'#13#10#9#9#9#9'(M.VendorCost + M.OtherCost + M.Frei' +
      'ghtCost <= MSRP.MaxValue)'#13#10#9#9#9')'#13#10#9#9')'#13#10#13#10'WHERE'#13#10#9'MSG.IDModelSubGr' +
      'oup = :ID'#13#10'GROUP BY'#13#10#9'M.IDModel,'#9#13#10#9'M.VendorCost + M.OtherCost +' +
      ' M.FreightCost,'#13#10#9'CASE '#13#10#9#9'WHEN MSG.UseMSRPPercent = 1 THEN MSG.' +
      'MSRPMargemPercent'#13#10#9#9'WHEN ISNULL(MSRP.IDMargemTable, 0) = 0 THEN' +
      ' MSG.MSRPMargemPercent'#13#10#9#9'ELSE'#13#10#9#9#9'MSRP.Percentage'#13#10#13#10#9'END'
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 56
    Top = 212
    object quMSRPPriceBySubGroupIDModel: TIntegerField
      FieldName = 'IDModel'
    end
    object quMSRPPriceBySubGroupCostPrice: TBCDField
      FieldName = 'CostPrice'
      Precision = 19
    end
    object quMSRPPriceBySubGroupMSRPPercent: TFloatField
      FieldName = 'MSRPPercent'
    end
  end
  object quSalePriceBySubGroup: TADODataSet
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10#9'M.IDModel,'#13#10#9'M.VendorCost + M.OtherCost + M.FreightCos' +
      't AS CostPrice,'#13#10#9'M.Model,'#13#10#9'M.Description,'#13#10#9'IsNull(M.SellingPr' +
      'ice,0) as SalePrice,'#13#10#9'IsNull(M.SuggRetail,0) as MSRP,'#13#10#9'M.MarkU' +
      'p,'#13#10#9'CASE WHEN M.SellingPrice > 0 THEN M.SellingPrice - M.FinalC' +
      'ost END as RealMarkUpValue,'#13#10#9'CASE WHEN M.SellingPrice > 0 AND M' +
      '.FinalCost<>0 THEN (M.SellingPrice - M.FinalCost)/M.FinalCost*10' +
      '0 END as RealMarkUpPercent,'#13#10#9'CASE WHEN M.SellingPrice > 0 THEN ' +
      '(1 - (M.FinalCost/M.SellingPrice)) * 100 END as MarginPercent,'#13#10 +
      #9'CASE WHEN M.SellingPrice > 0 THEN ((1 - (M.FinalCost/M.SellingP' +
      'rice)) * M.SellingPrice) END as MarginValue,'#13#10#9'TG.Name Category,' +
      #13#10#9'MG.ModelGroup SubCategory,'#13#10#9'MSG.ModelSubGroup ModelGroup,'#13#10#9 +
      'TG.IDGroup,'#13#10#9'MG.IDModelGroup,'#9#13#10#9'MSG.IDModelSubGroup,'#13#10#9'CAST(0.' +
      '00 as Money) as NewSellingPrice,'#13#10#9'CAST(0.00 as Money) as NewMSR' +
      'PPrice,'#13#10#9'CAST(0 as Bit) as IsUpdate,'#13#10#9'CASE '#13#10#9#9'WHEN MSG.UseSal' +
      'ePricePercent = 1 THEN MSG.SalePriceMargemPercent'#13#10#9#9'WHEN ISNULL' +
      '(SPM.IDMargemTable, 0) = 0 THEN MSG.SalePriceMargemPercent'#13#10#9#9'EL' +
      'SE'#13#10#9#9#9'SPM.Percentage'#13#10#13#10#9'END AS SPMPercent,'#13#10#9'CAST(1 as Bit) as' +
      ' Calc'#9#13#10'FROM'#13#10#9'Model M (NOLOCK)'#13#10#9'INNER JOIN ModelGroup MG (NOLO' +
      'CK) ON (M.IDModelGroup = MG.IDModelGroup) '#13#10#9'LEFT JOIN TabGroup ' +
      'TG (NOLOCK) ON (M.GroupID = TG.IDGroup) '#13#10#9'LEFT JOIN ModelSubGro' +
      'up MSG (NOLOCK) ON (M.IDModelSubGroup = MSG.IDModelSubGroup) '#13#10#9 +
      'LEFT JOIN'#13#10#9'('#13#10#9#9'SELECT'#13#10#9#9#9'MTR.IDMargemTable,'#13#10#9#9#9'MTR.MinValue,' +
      #13#10#9#9#9'MTR.MaxValue,'#13#10#9#9#9'MTR.Percentage'#13#10#9#9'FROM'#13#10#9#9#9'MargemTable MT' +
      ' (NOLOCK)'#13#10#9#9#9'INNER JOIN MargemTableRange MTR (NOLOCK) ON (MT.ID' +
      'MargemTable = MTR.IDMargemTable)'#13#10#9#9'WHERE'#13#10#9#9#9'MT.Desativado = 0'#13 +
      #10#13#10#9') SPM ON'#13#10#9#9'('#13#10#9#9#9'MSG.IDSalePriceMargemTable = SPM.IDMargemT' +
      'able '#13#10#9#9#9'AND '#13#10#9#9#9'('#13#10#9#9#9#9'(M.VendorCost + M.OtherCost + M.Freigh' +
      'tCost >= SPM.MinValue)'#13#10#9#9#9#9'AND'#13#10#9#9#9#9'(M.VendorCost + M.OtherCost' +
      ' + M.FreightCost <= SPM.MaxValue)'#13#10#9#9#9')'#13#10#9#9') '#13#10#13#10'WHERE'#13#10#9'MSG.IDM' +
      'odelSubGroup = :ID'#13#10'GROUP BY'#13#10#9'M.IDModel,'#9#13#10#9'M.VendorCost + M.Ot' +
      'herCost + M.FreightCost,'#13#10#9'M.Model,'#13#10#9'M.Description,'#13#10#9'M.Selling' +
      'Price,'#13#10#9'M.SuggRetail,'#13#10#9'M.MarkUp,'#13#10#9'CASE WHEN M.SellingPrice > ' +
      '0 THEN M.SellingPrice - M.FinalCost END,'#13#10#9'CASE WHEN M.SellingPr' +
      'ice > 0 AND M.FinalCost<>0 THEN (M.SellingPrice - M.FinalCost)/M' +
      '.FinalCost*100 END,'#13#10#9'CASE WHEN M.SellingPrice > 0 THEN (1 - (M.' +
      'FinalCost/M.SellingPrice)) * 100 END,'#13#10#9'CASE WHEN M.SellingPrice' +
      ' > 0 THEN ((1 - (M.FinalCost/M.SellingPrice)) * M.SellingPrice) ' +
      'END,'#13#10#9'TG.Name,'#13#10#9'MG.ModelGroup,'#13#10#9'MSG.ModelSubGroup,'#13#10#9'TG.IDGro' +
      'up,'#13#10#9'MG.IDModelGroup,'#9#13#10#9'MSG.IDModelSubGroup,'#13#10#9'CASE '#13#10#9#9'WHEN M' +
      'SG.UseSalePricePercent = 1 THEN MSG.SalePriceMargemPercent'#13#10#9#9'WH' +
      'EN ISNULL(SPM.IDMargemTable, 0) = 0 THEN MSG.SalePriceMargemPerc' +
      'ent'#13#10#9#9'ELSE'#13#10#9#9#9'SPM.Percentage'#13#10#13#10#9'END'#13#10#13#10
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 184
    Top = 212
    object quSalePriceBySubGroupIDModel: TIntegerField
      FieldName = 'IDModel'
    end
    object quSalePriceBySubGroupCostPrice: TBCDField
      FieldName = 'CostPrice'
      Precision = 19
    end
    object quSalePriceBySubGroupSPMPercent: TFloatField
      FieldName = 'SPMPercent'
    end
    object quSalePriceBySubGroupModel: TStringField
      FieldName = 'Model'
      Size = 30
    end
    object quSalePriceBySubGroupDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object quSalePriceBySubGroupNewSellingPrice: TBCDField
      FieldName = 'NewSellingPrice'
      Precision = 19
    end
    object quSalePriceBySubGroupNewMSRPPrice: TBCDField
      FieldName = 'NewMSRPPrice'
      Precision = 19
    end
    object quSalePriceBySubGroupIsUpdate: TBooleanField
      FieldName = 'IsUpdate'
    end
    object quSalePriceBySubGroupSalePrice: TBCDField
      FieldName = 'SalePrice'
      Precision = 19
    end
    object quSalePriceBySubGroupMSRP: TBCDField
      FieldName = 'MSRP'
      Precision = 19
    end
    object quSalePriceBySubGroupRealMarkUpValue: TBCDField
      FieldName = 'RealMarkUpValue'
      Precision = 19
    end
    object quSalePriceBySubGroupRealMarkUpPercent: TBCDField
      FieldName = 'RealMarkUpPercent'
      Precision = 19
    end
    object quSalePriceBySubGroupMarginPercent: TBCDField
      FieldName = 'MarginPercent'
      Precision = 19
    end
    object quSalePriceBySubGroupMarginValue: TBCDField
      FieldName = 'MarginValue'
      Precision = 19
    end
    object quSalePriceBySubGroupCategory: TStringField
      FieldName = 'Category'
      Size = 30
    end
    object quSalePriceBySubGroupSubCategory: TStringField
      FieldName = 'SubCategory'
      Size = 30
    end
    object quSalePriceBySubGroupModelGroup: TStringField
      FieldName = 'ModelGroup'
      Size = 30
    end
    object quSalePriceBySubGroupMarkUp: TBCDField
      FieldName = 'MarkUp'
      Precision = 19
    end
    object quSalePriceBySubGroupIDGroup: TIntegerField
      FieldName = 'IDGroup'
    end
    object quSalePriceBySubGroupIDModelGroup: TIntegerField
      FieldName = 'IDModelGroup'
    end
    object quSalePriceBySubGroupIDModelSubGroup: TIntegerField
      FieldName = 'IDModelSubGroup'
    end
    object quSalePriceBySubGroupCalc: TBooleanField
      FieldName = 'Calc'
      ReadOnly = True
    end
  end
  object quSPMarginByCategory: TADODataSet
    CommandText = 
      'SELECT'#13#10#9'RTR.RoundType,'#13#10#9'RTR.RoundValues,'#13#10#9'CASE '#13#10#9#9'WHEN TG.Us' +
      'eSalePricePercent = 1 THEN TG.SalePriceMargemPercent'#13#10#9#9'WHEN ISN' +
      'ULL(SPM.IDMargemTable, 0) = 0 THEN TG.SalePriceMargemPercent'#13#10#9#9 +
      'ELSE'#13#10#9#9#9'SPM.Percentage'#13#10#13#10#9'END AS SPMPercent'#9#13#10'FROM'#13#10#9'TabGroup ' +
      'TG (NOLOCK)'#13#10#9'LEFT JOIN RoundingTableRange RTR (NOLOCK) ON (TG.I' +
      'DRoundingTable = RTR.IDRoundingTable)'#13#10#9'LEFT JOIN'#13#10#9'('#13#10#9#9'SELECT'#13 +
      #10#9#9#9'MTR.IDMargemTable,'#13#10#9#9#9'MTR.MinValue,'#13#10#9#9#9'MTR.MaxValue,'#13#10#9#9#9'M' +
      'TR.Percentage'#13#10#9#9'FROM'#13#10#9#9#9'MargemTable MT (NOLOCK)'#13#10#9#9#9'INNER JOIN' +
      ' MargemTableRange MTR (NOLOCK) ON (MT.IDMargemTable = MTR.IDMarg' +
      'emTable)'#13#10#9#9'WHERE'#13#10#9#9#9'MT.Desativado = 0'#13#10#9') SPM ON (TG.IDSalePri' +
      'ceMargemTable = SPM.IDMargemTable AND'#13#10#9#9' ((:Cost1 >= SPM.MinVal' +
      'ue) AND (:Cost2 <= SPM.MaxValue)))'#13#10'WHERE'#13#10#9'TG.IDGroup = :ID'#13#10'GR' +
      'OUP BY'#13#10#9'RTR.RoundType,'#13#10#9'RTR.RoundValues,'#13#10#9'CASE '#13#10#9#9'WHEN TG.Us' +
      'eSalePricePercent = 1 THEN TG.SalePriceMargemPercent'#13#10#9#9'WHEN ISN' +
      'ULL(SPM.IDMargemTable, 0) = 0 THEN TG.SalePriceMargemPercent'#13#10#9#9 +
      'ELSE'#13#10#9#9#9'SPM.Percentage'#13#10#13#10#9'END'
    Parameters = <
      item
        Name = 'Cost1'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'Cost2'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 300
    Top = 116
  end
  object quSPMarginByGroup: TADODataSet
    CommandText = 
      'SELECT'#13#10#9'RTR.RoundType,'#13#10#9'RTR.RoundValues,'#13#10#9'CASE '#13#10#9#9'WHEN MG.Us' +
      'eSalePricePercent = 1 THEN MG.SalePriceMargemPercent'#13#10#9#9'WHEN ISN' +
      'ULL(SPM.IDMargemTable, 0) = 0 THEN MG.SalePriceMargemPercent'#13#10#9#9 +
      'ELSE'#13#10#9#9#9'SPM.Percentage'#13#10#13#10#9'END AS SPMPercent'#9#13#10'FROM'#13#10#9'ModelGrou' +
      'p MG (NOLOCK)'#13#10#9'LEFT JOIN TabGroup TG (NOLOCK) ON (MG.IDGroup = ' +
      'TG.IDGroup)'#13#10#9'LEFT JOIN RoundingTableRange RTR (NOLOCK) ON (TG.I' +
      'DRoundingTable = RTR.IDRoundingTable)'#13#10#9'LEFT JOIN ('#13#10#9#9'SELECT'#13#10#9 +
      #9#9'MTR.IDMargemTable,'#13#10#9#9#9'MTR.MinValue,'#13#10#9#9#9'MTR.MaxValue,'#13#10#9#9#9'MTR' +
      '.Percentage'#13#10#9#9'FROM'#13#10#9#9#9'MargemTable MT (NOLOCK)'#13#10#9#9#9'INNER JOIN M' +
      'argemTableRange MTR (NOLOCK) ON (MT.IDMargemTable = MTR.IDMargem' +
      'Table)'#13#10#9#9'WHERE'#13#10#9#9#9'MT.Desativado = 0'#13#10#9') SPM ON (MG.IDSalePrice' +
      'MargemTable = SPM.IDMargemTable AND '#13#10#9#9' ((:Cost1 >= SPM.MinValu' +
      'e) AND (:Cost2 <= SPM.MaxValue)))'#13#10'WHERE'#13#10#9'MG.IDModelGroup = :ID' +
      #13#10'GROUP BY'#13#10#9'RTR.RoundType,'#13#10#9'RTR.RoundValues,'#13#10#9'CASE '#13#10#9#9'WHEN M' +
      'G.UseSalePricePercent = 1 THEN MG.SalePriceMargemPercent'#13#10#9#9'WHEN' +
      ' ISNULL(SPM.IDMargemTable, 0) = 0 THEN MG.SalePriceMargemPercent' +
      #13#10#9#9'ELSE'#13#10#9#9#9'SPM.Percentage'#13#10#13#10#9'END'
    Parameters = <
      item
        Name = 'Cost1'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'Cost2'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 300
    Top = 164
  end
  object quSPMarginBySubGroup: TADODataSet
    CommandText = 
      'SELECT '#13#10#9'RTR.RoundType,'#13#10#9'RTR.RoundValues,'#13#10#9'CASE '#13#10#9#9'WHEN MSG.' +
      'UseSalePricePercent = 1 THEN MSG.SalePriceMargemPercent'#13#10#9#9'WHEN ' +
      'ISNULL(SPM.IDMargemTable, 0) = 0 THEN MSG.SalePriceMargemPercent' +
      #13#10#9#9'ELSE'#13#10#9#9#9'SPM.Percentage'#13#10#13#10#9'END AS SPMPercent'#9#13#10'FROM'#13#10#9'Model' +
      'SubGroup MSG (NOLOCK)'#13#10#9'LEFT JOIN ModelGroup MG (NOLOCK) ON (MSG' +
      '.IDModelGroup = MG.IDModelGroup)'#13#10#9'LEFT JOIN TabGroup TG (NOLOCK' +
      ') ON (MG.IDGroup = TG.IDGroup)'#13#10#9'LEFT JOIN RoundingTableRange RT' +
      'R (NOLOCK) ON (TG.IDRoundingTable = RTR.IDRoundingTable)'#13#10#9'LEFT ' +
      'JOIN ('#13#10#9#9'SELECT'#13#10#9#9#9'MTR.IDMargemTable,'#13#10#9#9#9'MTR.MinValue,'#13#10#9#9#9'MT' +
      'R.MaxValue,'#13#10#9#9#9'MTR.Percentage'#13#10#9#9'FROM'#13#10#9#9#9'MargemTable MT (NOLOC' +
      'K)'#13#10#9#9#9'INNER JOIN MargemTableRange MTR (NOLOCK) ON (MT.IDMargemT' +
      'able = MTR.IDMargemTable)'#13#10#9#9'WHERE'#13#10#9#9#9'MT.Desativado = 0'#13#10#9') SPM' +
      ' ON (MSG.IDSalePriceMargemTable = SPM.IDMargemTable AND'#13#10#9#9' ((:C' +
      'ost1 >= SPM.MinValue) AND (:Cost2 <= SPM.MaxValue)))'#13#10'WHERE'#13#10#9'MS' +
      'G.IDModelSubGroup = :ID'#13#10'GROUP BY'#13#10#9'RTR.RoundType,'#13#10#9'RTR.RoundVa' +
      'lues,'#13#10#9'CASE '#13#10#9#9'WHEN MSG.UseSalePricePercent = 1 THEN MSG.SaleP' +
      'riceMargemPercent'#13#10#9#9'WHEN ISNULL(SPM.IDMargemTable, 0) = 0 THEN ' +
      'MSG.SalePriceMargemPercent'#13#10#9#9'ELSE'#13#10#9#9#9'SPM.Percentage'#13#10#13#10#9'END'
    Parameters = <
      item
        Name = 'Cost1'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'Cost2'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 300
    Top = 212
  end
  object quMSRPMarginByCategory: TADODataSet
    CommandText = 
      'SELECT'#13#10#9'CASE '#13#10#9#9'WHEN TG.UseMSRPPercent = 1 THEN TG.MSRPMargemP' +
      'ercent'#13#10#9#9'WHEN ISNULL(MSRP.IDMargemTable, 0) = 0 THEN TG.MSRPMar' +
      'gemPercent'#13#10#9#9'ELSE'#13#10#9#9#9'MSRP.Percentage'#13#10#13#10#9'END AS MSRPPercent'#13#10'F' +
      'ROM'#13#10#9'TabGroup TG (NOLOCK)'#13#10#9'LEFT JOIN ('#13#10#9#9'SELECT'#13#10#9#9#9'MTR.IDMar' +
      'gemTable,'#13#10#9#9#9'MTR.MinValue,'#13#10#9#9#9'MTR.MaxValue,'#13#10#9#9#9'MTR.Percentage' +
      #13#10#9#9'FROM'#13#10#9#9#9'MargemTable MT (NOLOCK)'#13#10#9#9#9'INNER JOIN MargemTableR' +
      'ange MTR (NOLOCK) ON (MT.IDMargemTable = MTR.IDMargemTable)'#13#10#9#9'W' +
      'HERE'#13#10#9#9#9'MT.Desativado = 0'#13#10#9') MSRP ON (TG.IDMSRPMargemTable = M' +
      'SRP.IDMargemTable AND '#13#10#9#9'  ((:Cost1 >= MSRP.MinValue) AND (:Cos' +
      't2 <= MSRP.MaxValue)))'#13#10'WHERE'#13#10#9'TG.IDGroup = :ID'#13#10'GROUP BY'#13#10#9'CAS' +
      'E '#13#10#9#9'WHEN TG.UseMSRPPercent = 1 THEN TG.MSRPMargemPercent'#13#10#9#9'WH' +
      'EN ISNULL(MSRP.IDMargemTable, 0) = 0 THEN TG.MSRPMargemPercent'#13#10 +
      #9#9'ELSE'#13#10#9#9#9'MSRP.Percentage'#13#10#13#10#9'END'
    Parameters = <
      item
        Name = 'Cost1'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'Cost2'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 428
    Top = 116
  end
  object quMSRPMarginByGroup: TADODataSet
    CommandText = 
      'SELECT'#13#10#9'CASE '#13#10#9#9'WHEN MG.UseMSRPPercent = 1 THEN MG.MSRPMargemP' +
      'ercent'#13#10#9#9'WHEN ISNULL(MSRP.IDMargemTable, 0) = 0 THEN MG.MSRPMar' +
      'gemPercent'#13#10#9#9'ELSE'#13#10#9#9#9'MSRP.Percentage'#13#10#13#10#9'END AS MSRPPercent'#13#10'F' +
      'ROM'#13#10#9'ModelGroup MG (NOLOCK)'#13#10#9'LEFT JOIN ('#13#10#9#9'SELECT'#13#10#9#9#9'MTR.IDM' +
      'argemTable,'#13#10#9#9#9'MTR.MinValue,'#13#10#9#9#9'MTR.MaxValue,'#13#10#9#9#9'MTR.Percenta' +
      'ge'#13#10#9#9'FROM'#13#10#9#9#9'MargemTable MT (NOLOCK)'#13#10#9#9#9'INNER JOIN MargemTabl' +
      'eRange MTR (NOLOCK) ON (MT.IDMargemTable = MTR.IDMargemTable)'#13#10#9 +
      #9'WHERE'#13#10#9#9#9'MT.Desativado = 0'#13#10#13#10#9') MSRP ON (MG.IDMSRPMargemTable' +
      ' = MSRP.IDMargemTable AND'#13#10#9#9'  ((:Cost1 >= MSRP.MinValue)'#9'AND (:' +
      'Cost2 <= MSRP.MaxValue)))'#13#10'WHERE'#13#10#9'MG.IDModelGroup = :ID'#13#10'GROUP ' +
      'BY'#13#10#9'CASE '#13#10#9#9'WHEN MG.UseMSRPPercent = 1 THEN MG.MSRPMargemPerce' +
      'nt'#13#10#9#9'WHEN ISNULL(MSRP.IDMargemTable, 0) = 0 THEN MG.MSRPMargemP' +
      'ercent'#13#10#9#9'ELSE'#13#10#9#9#9'MSRP.Percentage'#13#10#13#10#9'END'#13#10
    Parameters = <
      item
        Name = 'Cost1'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'Cost2'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 428
    Top = 164
  end
  object quMSRPMarginBySubGroup: TADODataSet
    CommandText = 
      'SELECT'#13#10#9'CASE '#13#10#9#9'WHEN MSG.UseMSRPPercent = 1 THEN MSG.MSRPMarge' +
      'mPercent'#13#10#9#9'WHEN ISNULL(MSRP.IDMargemTable, 0) = 0 THEN MSG.MSRP' +
      'MargemPercent'#13#10#9#9'ELSE'#13#10#9#9#9'MSRP.Percentage'#13#10#13#10#9'END AS MSRPPercent' +
      #13#10'FROM'#13#10#9'ModelSubGroup MSG (NOLOCK)'#13#10#9'LEFT JOIN ('#13#10#9#9'SELECT'#13#10#9#9#9 +
      'MTR.IDMargemTable,'#13#10#9#9#9'MTR.MinValue,'#13#10#9#9#9'MTR.MaxValue,'#13#10#9#9#9'MTR.P' +
      'ercentage'#13#10#9#9'FROM'#13#10#9#9#9'MargemTable MT (NOLOCK)'#13#10#9#9#9'INNER JOIN Mar' +
      'gemTableRange MTR'#9'(NOLOCK) ON (MT.IDMargemTable = MTR.IDMargemTa' +
      'ble)'#13#10#9#9'WHERE'#13#10#9#9#9'MT.Desativado = 0'#13#10#9') MSRP ON (MSG.IDMSRPMarge' +
      'mTable = MSRP.IDMargemTable AND'#13#10#9#9'  ((:Cost1 >= MSRP.MinValue) ' +
      'AND (:Cost2 <= MSRP.MaxValue)))'#13#10#13#10'WHERE'#13#10#9'MSG.IDModelSubGroup =' +
      ' :ID'#13#10'GROUP BY'#13#10#9'CASE '#13#10#9#9'WHEN MSG.UseMSRPPercent = 1 THEN MSG.M' +
      'SRPMargemPercent'#13#10#9#9'WHEN ISNULL(MSRP.IDMargemTable, 0) = 0 THEN ' +
      'MSG.MSRPMargemPercent'#13#10#9#9'ELSE'#13#10#9#9#9'MSRP.Percentage'#13#10#13#10#9'END'#13#10
    Parameters = <
      item
        Name = 'Cost1'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'Cost2'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Left = 428
    Top = 212
  end
  object dspModelNewPrices: TDataSetProvider
    Options = [poIncFieldProps]
    Left = 560
    Top = 28
  end
  object quRoundRangeByGroup: TADODataSet
    CommandText = 
      'SELECT'#13#10#9'RTR.RoundValues,'#13#10#9'RTR.RoundType'#13#10'FROM'#13#10#9'TabGroup TG (N' +
      'OLOCK)'#13#10#9'JOIN ModelGroup MG (NOLOCK) ON (MG.IDGroup = TG.IDGroup' +
      ')'#13#10#9'JOIN RoundingTableRange RTR (NOLOCK) ON (TG.IDRoundingTable ' +
      '= RTR.IDRoundingTable)'#13#10'WHERE'#13#10#9'MG.IDModelGroup = :ID'#13#10#9'AND'#13#10#9'RT' +
      'R.MinValue <= :MinValue'#13#10#9'AND'#13#10#9'RTR.MaxValue >= :MaxValue'
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MinValue'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'MaxValue'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 560
    Top = 128
    object StringField1: TStringField
      FieldName = 'RoundValues'
      Size = 100
    end
    object IntegerField1: TIntegerField
      FieldName = 'RoundType'
    end
  end
  object quRoundRangeBySubGroup: TADODataSet
    CommandText = 
      'SELECT'#13#10#9'RTR.RoundValues,'#13#10#9'RTR.RoundType'#13#10'FROM'#13#10#9'TabGroup TG (N' +
      'OLOCK)'#13#10#9'JOIN ModelGroup MG (NOLOCK) ON (MG.IDGroup = TG.IDGroup' +
      ')'#13#10#9'JOIN ModelSubGroup MSG (NOLOCK) ON (MSG.IDModelGroup = MG.ID' +
      'ModelGroup)'#13#10#9'JOIN RoundingTableRange RTR (NOLOCK) ON (TG.IDRoun' +
      'dingTable = RTR.IDRoundingTable)'#13#10'WHERE'#13#10#9'MSG.IDModelSubGroup = ' +
      ':ID'#13#10#9'AND'#13#10#9'RTR.MinValue <= :MinValue'#13#10#9'AND'#13#10#9'RTR.MaxValue >= :M' +
      'axValue'
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MinValue'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'MaxValue'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 4
        Precision = 19
        Size = 8
        Value = Null
      end>
    Left = 564
    Top = 180
    object StringField2: TStringField
      FieldName = 'RoundValues'
      Size = 100
    end
    object IntegerField2: TIntegerField
      FieldName = 'RoundType'
    end
  end
  object quModel: TADODataSet
    CommandText = 
      'SELECT'#13#10#9'GroupID,'#13#10#9'IDModelGroup,'#13#10#9'IDModelSubGroup,'#13#10#9'MarkUp,'#13#10 +
      #9'SellingPrice'#13#10'FROM'#13#10'        Model (NOLOCK)'#13#10'WHERE'#13#10#9'IDModel = :' +
      'IDModel'
    Parameters = <
      item
        Name = 'IDModel'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 564
    Top = 232
    object quModelGroupID: TIntegerField
      FieldName = 'GroupID'
    end
    object quModelIDModelGroup: TIntegerField
      FieldName = 'IDModelGroup'
    end
    object quModelIDModelSubGroup: TIntegerField
      FieldName = 'IDModelSubGroup'
    end
    object quModelMarkUp: TBCDField
      FieldName = 'MarkUp'
      Precision = 19
    end
    object quModelSellingPrice: TBCDField
      FieldName = 'SellingPrice'
      Precision = 19
    end
  end
end