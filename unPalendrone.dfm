object Form15: TForm15
  Left = 0
  Top = 0
  Caption = 'Palendrone'
  ClientHeight = 316
  ClientWidth = 210
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object shpColorPanedroneTwoWords: TShape
    Left = 13
    Top = 121
    Width = 184
    Height = 72
    Brush.Color = clLime
    Visible = False
  end
  object shpColorPanedroneOneWord: TShape
    Left = 13
    Top = 8
    Width = 184
    Height = 41
    Brush.Color = clLime
    Visible = False
  end
  object lblNotes: TLabel
    Left = -2
    Top = 302
    Width = 206
    Height = 13
    Caption = 'Whitespaces, ? and commas will be ingored'
  end
  object btnPanedroneTwoWords: TButton
    Left = 12
    Top = 197
    Width = 185
    Height = 34
    Caption = 'Compare Two Words'
    TabOrder = 0
    OnClick = btnPanedroneTwoWordsClick
  end
  object edtPanedroneTwoWords_string1: TEdit
    Left = 21
    Top = 129
    Width = 167
    Height = 24
    TabOrder = 1
  end
  object edtPanedroneTwoWords_string2: TEdit
    Left = 21
    Top = 161
    Width = 167
    Height = 23
    TabOrder = 2
  end
  object btnPalendroneOneWord: TButton
    Left = 13
    Top = 52
    Width = 185
    Height = 38
    Caption = 'Is word a Palendron'
    TabOrder = 3
    OnClick = btnPalendroneOneWordClick
  end
  object edtPanedroneOneWord: TEdit
    Left = 21
    Top = 16
    Width = 168
    Height = 23
    TabOrder = 4
  end
  object btnReset: TBitBtn
    Left = 10
    Top = 268
    Width = 184
    Height = 29
    Caption = 'Reset'
    TabOrder = 5
    OnClick = btnResetClick
  end
  object btnExample: TButton
    Left = 11
    Top = 240
    Width = 66
    Height = 25
    Caption = 'Example'
    TabOrder = 6
    OnClick = btnExampleClick
  end
end
