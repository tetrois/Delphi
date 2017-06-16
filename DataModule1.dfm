object DM1: TDM1
  OldCreateOrder = False
  Height = 330
  Width = 1082
  object DS1: TDataSource
    DataSet = znaki1
    Left = 48
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 88
    Top = 8
  end
  object znaki1: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'znak1'
    TableName = 'znak1'
    Left = 8
    Top = 56
  end
  object FDC1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      'OpenMode=ReadOnly'
      'Database=A:\Delphi\'#1040#1074#1090#1086#1084#1086#1073#1080#1083#1100#1085#1099#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' (SQLite)\BD1.db')
    Connected = True
    LoginPrompt = False
    BeforeConnect = FDC1BeforeConnect
    Left = 8
    Top = 8
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 128
    Top = 8
  end
  object znaki2: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'znak2'
    TableName = 'znak2'
    Left = 48
    Top = 56
  end
  object znaki3: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'znak3'
    TableName = 'znak3'
    Left = 88
    Top = 56
  end
  object znaki4: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'znak4'
    TableName = 'znak4'
    Left = 8
    Top = 104
  end
  object znaki5: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'znak5'
    TableName = 'znak5'
    Left = 48
    Top = 104
  end
  object znaki6: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'znak6'
    TableName = 'znak6'
    Left = 88
    Top = 104
  end
  object znaki7: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'znak7'
    TableName = 'znak7'
    Left = 8
    Top = 152
  end
  object znaki8: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'znak8'
    TableName = 'znak8'
    Left = 48
    Top = 152
  end
  object shtraf1: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'Shtraf1'
    TableName = 'Shtraf1'
    Left = 168
    Top = 56
  end
  object shtraf2: TFDTable
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'Shtraf2'
    TableName = 'Shtraf2'
    Left = 208
    Top = 56
  end
  object shtraf3: TFDTable
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'Shtraf3'
    TableName = 'Shtraf3'
    Left = 248
    Top = 56
  end
  object shtraf4: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'Shtraf4'
    TableName = 'Shtraf4'
    Left = 168
    Top = 104
  end
  object shtraf5: TFDTable
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'Shtraf5'
    TableName = 'Shtraf5'
    Left = 208
    Top = 104
  end
  object shtraf6: TFDTable
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'Shtraf6'
    TableName = 'Shtraf6'
    Left = 248
    Top = 104
  end
  object shtraf7: TFDTable
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'Shtraf7'
    TableName = 'Shtraf7'
    Left = 168
    Top = 152
  end
  object shtraf8: TFDTable
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'Shtraf8'
    TableName = 'Shtraf8'
    Left = 208
    Top = 152
  end
  object shtraf9: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'Shtraf9'
    TableName = 'Shtraf9'
    Left = 248
    Top = 152
  end
  object DS2: TDataSource
    Left = 200
    Top = 8
  end
  object DS3: TDataSource
    DataSet = tblPDD1
    Left = 408
    Top = 8
  end
  object tblPDD1: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD1'
    TableName = 'PDD1'
    Left = 368
    Top = 64
  end
  object tblPDD2: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD2'
    TableName = 'PDD2'
    Left = 408
    Top = 64
  end
  object tblPDD3: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD3'
    TableName = 'PDD3'
    Left = 448
    Top = 64
  end
  object tblPDD4: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD4'
    TableName = 'PDD4'
    Left = 488
    Top = 65
  end
  object tblPDD5: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD5'
    TableName = 'PDD5'
    Left = 528
    Top = 64
  end
  object tblPDD6: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD6'
    TableName = 'PDD6'
    Left = 368
    Top = 112
  end
  object tblPDD7: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD7'
    TableName = 'PDD7'
    Left = 408
    Top = 112
  end
  object tblPDD8: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD8'
    TableName = 'PDD8'
    Left = 448
    Top = 112
  end
  object tblPDD9: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD9'
    TableName = 'PDD9'
    Left = 488
    Top = 112
  end
  object tblPDD10: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD10'
    TableName = 'PDD10'
    Left = 528
    Top = 112
  end
  object tblPDD11: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD11'
    TableName = 'PDD11'
    Left = 368
    Top = 160
  end
  object tblPDD12: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD12'
    TableName = 'PDD12'
    Left = 408
    Top = 160
  end
  object tblPDD13: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD13'
    TableName = 'PDD13'
    Left = 448
    Top = 160
  end
  object tblPDD14: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD14'
    TableName = 'PDD14'
    Left = 488
    Top = 160
  end
  object tblPDD15: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD15'
    TableName = 'PDD15'
    Left = 528
    Top = 160
  end
  object tblPDD16: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD16'
    TableName = 'PDD16'
    Left = 368
    Top = 208
  end
  object tblPDD17: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD17'
    TableName = 'PDD17'
    Left = 408
    Top = 208
  end
  object tblPDD18: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD18'
    TableName = 'PDD18'
    Left = 448
    Top = 208
  end
  object tblPDD19: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD19'
    TableName = 'PDD19'
    Left = 488
    Top = 208
  end
  object tblPDD20: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD20'
    TableName = 'PDD20'
    Left = 528
    Top = 208
  end
  object tblPDD21: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD21'
    TableName = 'PDD21'
    Left = 368
    Top = 256
  end
  object tblPDD22: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD22'
    TableName = 'PDD22'
    Left = 408
    Top = 254
  end
  object tblPDD23: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD23'
    TableName = 'PDD23'
    Left = 448
    Top = 254
  end
  object tblPDD24: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD24'
    TableName = 'PDD24'
    Left = 488
    Top = 254
  end
  object tblPDD25: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD25'
    TableName = 'PDD25'
    Left = 528
    Top = 254
  end
  object tblPDD0: TFDTable
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'PDD0'
    TableName = 'PDD0'
    Left = 472
    Top = 8
  end
  object DS4: TDataSource
    DataSet = tblDriveLicType
    Left = 640
    Top = 8
  end
  object tblDriveLicPick: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'DriveLic1'
    TableName = 'DriveLic1'
    Left = 640
    Top = 64
  end
  object tblDriveLicType: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'DriveLicenseType'
    TableName = 'DriveLicenseType'
    Left = 640
    Top = 112
  end
  object DS5: TDataSource
    DataSet = tblMainInsurance
    Left = 768
    Top = 8
  end
  object tblMainInsurance: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDC1
    UpdateOptions.UpdateTableName = 'Main'
    TableName = 'Main'
    Left = 768
    Top = 64
  end
end
