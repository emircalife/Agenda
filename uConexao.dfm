object frmConexao: TfrmConexao
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Conex'#227'o'
  ClientHeight = 225
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblBancoDados: TLabel
    Left = 13
    Top = 19
    Width = 77
    Height = 13
    Caption = 'Banco de Dados'
  end
  object lblServidor: TLabel
    Left = 13
    Top = 46
    Width = 40
    Height = 13
    Caption = 'Servidor'
  end
  object lblPorta: TLabel
    Left = 351
    Top = 46
    Width = 26
    Height = 13
    Caption = 'Porta'
  end
  object lblUsuario: TLabel
    Left = 13
    Top = 73
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object lblSenha: TLabel
    Left = 269
    Top = 73
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object edtBancoDados: TEdit
    Left = 96
    Top = 16
    Width = 327
    Height = 21
    TabOrder = 0
  end
  object edtServidor: TEdit
    Left = 96
    Top = 43
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object edtPorta: TEdit
    Left = 383
    Top = 43
    Width = 66
    Height = 21
    TabOrder = 2
  end
  object edtUsuario: TEdit
    Left = 96
    Top = 70
    Width = 153
    Height = 21
    TabOrder = 3
  end
  object edtSenha: TEdit
    Left = 320
    Top = 70
    Width = 129
    Height = 21
    PasswordChar = '*'
    TabOrder = 4
  end
  object btnGravar: TBitBtn
    Left = 192
    Top = 113
    Width = 75
    Height = 25
    Caption = '&Gravar'
    TabOrder = 5
    OnClick = btnGravarClick
  end
  object btnConectar: TBitBtn
    Left = 273
    Top = 113
    Width = 75
    Height = 25
    Caption = '&Conectar'
    TabOrder = 6
    OnClick = btnConectarClick
  end
  object btnFechar: TBitBtn
    Left = 374
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Fecha&r'
    TabOrder = 7
    OnClick = btnFecharClick
  end
  object btnBuscarBD: TBitBtn
    Left = 424
    Top = 14
    Width = 25
    Height = 25
    Caption = '...'
    TabOrder = 8
    OnClick = btnBuscarBDClick
  end
  object otfdBancoDeDados: TOpenTextFileDialog
    Left = 256
  end
end
