object frmLembrete: TfrmLembrete
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lembrete'
  ClientHeight = 238
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 8
    Top = 16
    Width = 26
    Height = 13
    Caption = 'T'#237'tulo'
  end
  object lblTexto: TLabel
    Left = 8
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Texto'
  end
  object edtTitulo: TEdit
    Left = 40
    Top = 13
    Width = 452
    Height = 21
    TabOrder = 0
  end
  object memTexto: TMemo
    Left = 8
    Top = 67
    Width = 484
    Height = 110
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object dtpData: TDateTimePicker
    Left = 8
    Top = 183
    Width = 97
    Height = 21
    Date = 43913.000000000000000000
    Time = 0.702747129631461600
    TabOrder = 2
  end
  object tipHora: TTimePicker
    Left = 111
    Top = 183
    Width = 98
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    TabOrder = 3
    Time = 43913.703445462960000000
    TimeFormat = 'hh:mm'
  end
  object btnFechar: TBitBtn
    Left = 417
    Top = 208
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 4
    OnClick = btnFecharClick
  end
end
