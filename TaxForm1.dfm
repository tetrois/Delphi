object TaxForm: TTaxForm
  Left = 0
  Top = 0
  Caption = #1056#1072#1089#1095#1077#1090' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1085#1086#1075#1086' '#1085#1072#1083#1086#1075#1072
  ClientHeight = 337
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 67
    Width = 102
    Height = 13
    Caption = #1052#1086#1097#1085#1086#1089#1090#1100' '#1058#1057' ('#1083'.'#1089'.):'
  end
  object Label2: TLabel
    Left = 40
    Top = 19
    Width = 38
    Height = 13
    Caption = #1058#1080#1087' '#1058#1057':'
  end
  object Label3: TLabel
    Left = 24
    Top = 107
    Width = 114
    Height = 30
    Caption = #1055#1077#1088#1080#1086#1076' '#1074#1083#1072#1076#1077#1085#1080#1077#1084' '#1058#1057'('#1084#1077#1089#1103#1094#1099'):'
    WordWrap = True
  end
  object btnTax1: TButton
    Left = 144
    Top = 192
    Width = 75
    Height = 25
    Caption = #1056#1072#1089#1095#1080#1090#1072#1090#1100
    TabOrder = 0
    OnClick = btnTax1Click
  end
  object Edit1: TEdit
    Left = 144
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 144
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object ComboBox1: TComboBox
    Left = 144
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'ComboBox1'
  end
  object Edit3: TEdit
    Left = 144
    Top = 149
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit3'
  end
end
