object Form1: TForm1
  Left = 487
  Top = 259
  BorderStyle = bsDialog
  Caption = #1050#1086#1084#1084#1080#1074#1086#1103#1078#1077#1088
  ClientHeight = 493
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000099990000000000000000000000000009999999000000000000
    000000000000999FFF9900000000000000000000000999F99999900000000000
    0000000000999999999990000000000000000000099999999999900000000000
    0000000099999999999990000000000000000009999999999999900000000000
    0000009999999999999900000000000000000999999999999990000000000000
    0000999199999999990000000000000000009919999999991000000000000000
    0000991999999991000000000000000000009919999999911000000000000000
    000009999999999919000000000000000FFFFF99999999999990000000000000
    FFFF77F99999999999990000000000FFFFF7F7F09999999999999000000000F7
    777FF7FF0999999999999F00000000FFFFFFF7FF009999999999F1F0000000FF
    00FFF7FF00099999999F1F1F0000000000FF7FF00000999999F1F1F000000000
    0FF77FF0000009999F1F1F00000000000FF7FF0000000099F1F1F00000000000
    0FF7FF000000000F1F1F0000000000000FF7F00000000000F1F0000000000000
    00FFF000000000000F0000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFC3FFFFFF80FFFFFF00FFFFFE007FFFFC003FFFF8003FFFF0003FFFE0
    003FFFC0003FFF80007FFF0000FFFE0001FFFE0003FFFE0007FFFE0003FFF800
    01FFF00000FFC000007F8000003F8000001F8000000F80040007C80E000FF00F
    001FF01F803FF01FC07FF03FE0FFF83FF1FFFC7FFBFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 8
    Top = 360
    Width = 213
    Height = 16
    Caption = #1053#1072#1081#1076#1077#1085#1085#1099#1077' '#1074#1072#1088#1080#1072#1085#1090#1099' '#1087#1091#1090#1077#1081':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 392
    Top = 360
    Width = 132
    Height = 16
    Caption = #1053#1072#1080#1084#1077#1085#1100#1096#1080#1081' '#1087#1091#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object matrica: TStringGrid
    Left = 8
    Top = 8
    Width = 450
    Height = 330
    ColCount = 7
    DefaultColWidth = 35
    DefaultRowHeight = 25
    RowCount = 7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnDrawCell = matricaDrawCell
  end
  object GroupBox1: TGroupBox
    Left = 480
    Top = 8
    Width = 265
    Height = 193
    Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1090#1072#1073#1083#1080#1094#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 115
      Height = 16
      Caption = #1063#1080#1089#1083#1086' '#1075#1086#1088#1086#1076#1086#1074':'
      Transparent = True
    end
    object Edit1: TEdit
      Left = 144
      Top = 24
      Width = 97
      Height = 24
      HelpType = htKeyword
      TabOrder = 0
      Text = '6'
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object Randombox: TCheckBox
      Left = 16
      Top = 48
      Width = 241
      Height = 25
      Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1086#1077' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1077
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = RandomboxClick
    end
    object TabCreate: TBitBtn
      Left = 16
      Top = 144
      Width = 113
      Height = 33
      Caption = #1057#1086#1079#1076#1072#1090#1100
      TabOrder = 2
      OnClick = TabCreateClick
      Kind = bkOK
    end
    object RandOtDo: TGroupBox
      Left = 16
      Top = 80
      Width = 233
      Height = 57
      Caption = #1056#1072#1085#1076#1086#1084
      TabOrder = 3
      object Label2: TLabel
        Left = 16
        Top = 24
        Width = 20
        Height = 16
        Caption = #1054#1090
      end
      object Label3: TLabel
        Left = 136
        Top = 24
        Width = 20
        Height = 16
        Caption = #1044#1086
      end
      object randot: TEdit
        Left = 40
        Top = 24
        Width = 49
        Height = 24
        TabOrder = 0
        Text = '1'
        OnKeyPress = Edit1KeyPress
      end
      object randdo: TEdit
        Left = 160
        Top = 24
        Width = 49
        Height = 24
        TabOrder = 1
        Text = '100'
        OnKeyPress = Edit1KeyPress
      end
    end
    object TabClear: TBitBtn
      Left = 136
      Top = 144
      Width = 113
      Height = 33
      Caption = #1054#1090#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 4
      OnClick = TabClearClick
      Kind = bkAbort
    end
  end
  object StartGroup: TGroupBox
    Left = 480
    Top = 208
    Width = 265
    Height = 129
    Caption = #1047#1072#1087#1091#1089#1082' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label6: TLabel
      Left = 16
      Top = 40
      Width = 129
      Height = 16
      Caption = #1057#1090#1072#1088#1090#1086#1074#1099#1081' '#1075#1086#1088#1086#1076
    end
    object Start: TBitBtn
      Left = 16
      Top = 80
      Width = 113
      Height = 33
      Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
      Enabled = False
      TabOrder = 0
      OnClick = StartClick
      Kind = bkOK
    end
    object Edit2: TEdit
      Left = 160
      Top = 40
      Width = 97
      Height = 24
      TabOrder = 1
      Text = '1'
      OnChange = Edit2Change
      OnKeyPress = Edit1KeyPress
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 380
    Width = 369
    Height = 80
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 392
    Top = 380
    Width = 369
    Height = 80
    TabOrder = 4
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 464
    Width = 289
    Height = 17
    Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1087#1091#1090#1080'('#1091#1084#1077#1085#1100#1096#1072#1077#1090' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100')'
    TabOrder = 5
  end
end
