object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1072' '#1088#1086#1073#1086#1090#1072' '#8470'2'
  ClientHeight = 423
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 18
    Width = 151
    Height = 16
    Caption = #1042#1074#1077#1076#1110#1090#1100' '#1085#1086#1084#1077#1088' '#1082#1072#1088#1090#1082#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 175
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MaskEdit1: TMaskEdit
    Left = 40
    Top = 40
    Width = 120
    Height = 21
    EditMask = '0000 0000 0000 0000;1;_'
    MaxLength = 19
    TabOrder = 0
    Text = '                   '
    OnChange = MaskEdit1Change
  end
  object Button1: TButton
    Left = 197
    Top = 36
    Width = 75
    Height = 25
    Caption = #1055#1077#1088#1077#1074#1110#1088#1080#1090#1080
    TabOrder = 1
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 40
    Top = 67
    Width = 369
    Height = 102
    ColCount = 16
    DefaultColWidth = 20
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    TabOrder = 2
    RowHeights = (
      24
      22
      24
      24)
  end
end
