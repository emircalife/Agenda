object frmRelAgendas: TfrmRelAgendas
  Left = 0
  Top = 0
  Caption = 'relAgendas'
  ClientHeight = 517
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = frmMain.dsPesquisaCompromisso
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 21
      BandType = btHeader
      object lblTitulo: TRLLabel
        Left = 0
        Top = 2
        Width = 716
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Agendas de 1900 at'#233' 1900'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 59
      Width = 718
      Height = 22
      BandType = btTitle
      object RLLabel3: TRLLabel
        Left = 193
        Top = 3
        Width = 35
        Height = 16
        Caption = 'Titulo'
      end
      object RLLabel2: TRLLabel
        Left = 82
        Top = 2
        Width = 31
        Height = 16
        Caption = 'Hora'
      end
      object RLLabel1: TRLLabel
        Left = 21
        Top = 2
        Width = 31
        Height = 16
        Caption = 'Data'
      end
      object RLLabel4: TRLLabel
        Left = 126
        Top = 2
        Width = 61
        Height = 16
        Caption = 'Conclu'#237'do'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 16
      object RLDBText1: TRLDBText
        Left = 4
        Top = -1
        Width = 75
        Height = 16
        DataField = 'DTAGENDA'
        DataSource = frmMain.dsPesquisaCompromisso
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 79
        Top = 0
        Width = 41
        Height = 16
        DataField = 'HORA'
        DataSource = frmMain.dsPesquisaCompromisso
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 126
        Top = 0
        Width = 63
        Height = 16
        Alignment = taCenter
        DataField = 'CONCLUIDO'
        DataSource = frmMain.dsPesquisaCompromisso
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 193
        Top = 0
        Width = 525
        Height = 16
        DataField = 'TITULO'
        DataSource = frmMain.dsPesquisaCompromisso
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 18
      BandType = btFooter
      object lsysDePagina: TRLSystemInfo
        Left = 608
        Top = 1
        Width = 41
        Height = 16
        Info = itPageNumber
        SecondHolder = lsysDePagina
        Text = ''
      end
      object lsysAtePagina: TRLSystemInfo
        Left = 672
        Top = 1
        Width = 42
        Height = 16
        Info = itLastPageNumber
        Text = ''
      end
      object lblDe: TRLLabel
        Left = 652
        Top = 1
        Width = 18
        Height = 16
        Caption = 'de'
      end
      object lblPagina: TRLLabel
        Left = 561
        Top = 1
        Width = 44
        Height = 16
        Caption = 'P'#225'gina'
      end
    end
  end
end
