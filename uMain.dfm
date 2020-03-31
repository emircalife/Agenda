object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Agenda de Compromissos'
  ClientHeight = 532
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcAgenda: TPageControl
    Left = 0
    Top = 32
    Width = 761
    Height = 489
    ActivePage = tsAgenda
    TabOrder = 0
    object tsAgenda: TTabSheet
      Caption = 'Agenda'
      object lblIrPara: TLabel
        Left = 3
        Top = 3
        Width = 72
        Height = 25
        Caption = 'Ir para:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dtpData: TDateTimePicker
        Left = 81
        Top = 3
        Width = 132
        Height = 31
        Date = 43913.000000000000000000
        Time = 0.628139131942589300
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = dtpDataChange
      end
      object cboMes: TComboBox
        Left = 473
        Top = 3
        Width = 145
        Height = 33
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnChange = cboMesChange
      end
      object cboAno: TComboBox
        Left = 648
        Top = 3
        Width = 102
        Height = 33
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnChange = cboAnoChange
      end
      object calCalendario: TCalendarView
        Left = 219
        Top = 40
        Width = 531
        Height = 313
        Date = 43913.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = []
        HeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        HeaderInfo.DaysOfWeekFont.Color = clWindowText
        HeaderInfo.DaysOfWeekFont.Height = -13
        HeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        HeaderInfo.DaysOfWeekFont.Style = []
        HeaderInfo.Font.Charset = DEFAULT_CHARSET
        HeaderInfo.Font.Color = clWindowText
        HeaderInfo.Font.Height = -20
        HeaderInfo.Font.Name = 'Segoe UI'
        HeaderInfo.Font.Style = []
        OnChange = calCalendarioChange
        OnDrawDayItem = calCalendarioDrawDayItem
        ParentFont = False
        TabOrder = 3
      end
      object btnAdicionar: TBitBtn
        Left = 3
        Top = 232
        Width = 190
        Height = 25
        Caption = '&Adicionar'
        TabOrder = 4
        OnClick = btnAdicionarClick
      end
      object btnEditar: TBitBtn
        Left = 3
        Top = 263
        Width = 190
        Height = 25
        Caption = '&Editar'
        TabOrder = 5
        OnClick = btnEditarClick
      end
      object btnExcluir: TBitBtn
        Left = 3
        Top = 325
        Width = 190
        Height = 25
        Caption = '&Excluir'
        TabOrder = 6
        OnClick = btnExcluirClick
      end
      object btnTransferir: TBitBtn
        Left = 3
        Top = 294
        Width = 190
        Height = 25
        Caption = '&Transferir'
        TabOrder = 7
        OnClick = btnTransferirClick
      end
      object grdAtrasados: TDBGrid
        Left = 3
        Top = 72
        Width = 190
        Height = 120
        DataSource = dsAtrasados
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'QTDEATRASADOS'
            Title.Caption = 'Qtde'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTAGENDA'
            Title.Alignment = taCenter
            Title.Caption = 'Atrasados'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 124
            Visible = True
          end>
      end
      object grdCompromissos: TDBGrid
        Left = 3
        Top = 359
        Width = 574
        Height = 102
        DataSource = dsCompromisso
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'COMPROMISSO'
            Title.Caption = 'Compromisso'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 404
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HORA'
            Title.Alignment = taCenter
            Title.Caption = 'Hora'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CONCLUIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Conclu'#237'do'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end>
      end
      object memDetalhe: TMemo
        Left = 583
        Top = 359
        Width = 167
        Height = 102
        TabOrder = 10
      end
    end
    object Pesquisa: TTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 1
      object lblDe: TLabel
        Left = 3
        Top = 7
        Width = 13
        Height = 13
        Caption = 'De'
      end
      object lblAte: TLabel
        Left = 131
        Top = 7
        Width = 17
        Height = 13
        Caption = 'At'#233
      end
      object lblTotalPesquisaCompromissos: TLabel
        Left = 3
        Top = 308
        Width = 145
        Height = 13
        Caption = 'Total de Compromissos: 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dtpDe: TDateTimePicker
        Left = 22
        Top = 3
        Width = 94
        Height = 21
        Date = 43913.000000000000000000
        Time = 0.689070798609464000
        TabOrder = 0
      end
      object dtpAte: TDateTimePicker
        Left = 154
        Top = 3
        Width = 94
        Height = 21
        Date = 43913.000000000000000000
        Time = 0.689070798609464000
        TabOrder = 1
      end
      object chkNaoConcluidos: TCheckBox
        Left = 288
        Top = 6
        Width = 161
        Height = 17
        Caption = 'Somente N'#195'O conclu'#237'dos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object btnPesquisar: TBitBtn
        Left = 472
        Top = 3
        Width = 105
        Height = 25
        Caption = '&Pesquisar'
        TabOrder = 3
        OnClick = btnPesquisarClick
      end
      object grdPesquisaCompromissos: TDBGrid
        Left = 3
        Top = 47
        Width = 747
        Height = 250
        DataSource = dsPesquisaCompromisso
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTAGENDA'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HORA'
            Title.Alignment = taCenter
            Title.Caption = 'Hora'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPROMISSO'
            Title.Caption = 'Compromisso'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 514
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CONCLUIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Conclu'#237'do'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 61
            Visible = True
          end>
      end
      object btnImprimir: TBitBtn
        Left = 645
        Top = 303
        Width = 105
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 5
        OnClick = btnImprimirClick
      end
      object memPesquisaCompromissos: TMemo
        Left = 3
        Top = 334
        Width = 747
        Height = 124
        TabOrder = 6
      end
    end
  end
  object tlbMenu: TToolBar
    Left = 0
    Top = 0
    Width = 774
    Height = 29
    Caption = 'tlbMenu'
    TabOrder = 1
  end
  object dsAtrasados: TDataSource
    DataSet = DM.qryAtrasados
    Left = 80
    Top = 184
  end
  object dsCompromisso: TDataSource
    DataSet = DM.qryCompromissos
    Left = 44
    Top = 456
  end
  object dsPesquisaCompromisso: TDataSource
    DataSet = DM.qryConsultaCompromissos
    Left = 460
    Top = 152
  end
  object tmrAlerta: TTimer
    Enabled = False
    Interval = 501
    OnTimer = tmrAlertaTimer
    Left = 380
    Top = 56
  end
end
