object frmCompromisso: TfrmCompromisso
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Compromisso'
  ClientHeight = 249
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
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
    TabOrder = 2
  end
  object dtpData: TDateTimePicker
    Left = 8
    Top = 183
    Width = 97
    Height = 21
    Date = 43913.000000000000000000
    Time = 0.702747129631461600
    TabOrder = 3
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
    TabOrder = 4
    Time = 43913.703445462960000000
    TimeFormat = 'hh:mm'
  end
  object chkConcluido: TCheckBox
    Left = 427
    Top = 183
    Width = 65
    Height = 17
    Caption = 'Conclu'#237'do'
    TabOrder = 5
  end
  object btnGravar: TBitBtn
    Left = 184
    Top = 216
    Width = 75
    Height = 25
    Caption = '&Gravar'
    TabOrder = 6
    OnClick = btnGravarClick
  end
  object btnCancelar: TBitBtn
    Left = 265
    Top = 216
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 7
    OnClick = btnCancelarClick
  end
  object chkAlertaCompromisso: TCheckBox
    Left = 40
    Top = 35
    Width = 185
    Height = 20
    Caption = 'Utilizar alerta na data e hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
end
