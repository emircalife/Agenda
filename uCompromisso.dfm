object frmCompromisso: TfrmCompromisso
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Compromisso'
  ClientHeight = 255
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
    Left = 192
    Top = 210
    Width = 91
    Height = 35
    Caption = '&Gravar'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFECECECCDCDCDC5C5C5CFCFCFE0E0E0F0F0F0F9F9F9FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFAFBAAF37833B20A43021972D27812D417243667B66909690
      B6B6B6CFCFCFE4E4E4F3F3F3FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F00F99191CBE2F22C83C1FC5381DC63713
      C22D96BA9981AD846291625281525071516E7F6E999C99BCBCBCD3D3D3E8E8E8
      F5F5F5FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8DED818A92428C13C22C8
      3F21C63B1EC23715BF2DABB8AB45E07051E47AA6C5AFCDD5CDAAC1AB7DA87E58
      8B594B784B547255778577A3A4A3C2C2C2D8D8D8EDEDEDFDFDFDFFFFFFC3CDC3
      26B33331C64624CA4223C63E1FC6391CBD34ACBDAD37D85B39E0619FC4A7CFD8
      D0C6D0C7C1C9C1BCC3BDB8B6B660DE8641D165058F0F1D83213474366E7E6EDE
      DEDEFFFFFFAFBEAF37BF4538CA4E27CC4424CA4022C73C23BB3BABBFAD25CF46
      29D24AB1C8B3D2DDD3CCD5CDC6D0C6BEC8BEB5B7B34BD9703BCD5C05AC1409B4
      1908B619198520CECECEFFFFFF9CB89C48C8563BCE542ACE4828CA4524C9402E
      BB44A1C1A418C5331FC239C0CFC1D7E2D8D0DCD2CAD6CCC5CFC5B4BBB339D15B
      29BC4307AF1709B11A09B41A208226D7D7D7FFFFFF86B58758CF663CD1582CD0
      4B29CC4726CB4342BD5588BB8D06BB1E12B527CFD9CFDCE7DCD7E2D7D1DCD0CB
      D6CBB1BFB126CA451AAF2F0AB31B0AB21A09B51B2C7D30E0E0E0FFFFFF70AC72
      68D5763DD45A2FD24F2DD04C29CD463FBC53C9CDC791BC937AB67FE9EFEAE4EE
      E5DDE8DED7E1D8D1DBD2A9BFAA17C23111A4220CB61E0AB31D0AB61B3B7A3EE9
      E9E9FFFFFF60A66374DB823BD75C32D35330D24F29CE481FCA3D25BC3D37B749
      51B85F64B46E80BA859BBF9DB1C6B2C7CFC687AF8A0CB7200B9E1A0EB8210DB4
      1D0BB51C4D794FF0F0F0FFFFFF58A85D7CDD8B3BD85E36D5582DD24E64DF8E99
      EDCA85E7B96EE19F56DA823ED2652BCB4E1AC33610BB260EB2220AAB1909A415
      0CB01C0EB6210EB6200CB61D607D61F4F4F4FFFFFF55AB5B82DF913BDC5F37D8
      5B48DA6CD2FBFEC6FAFEC4F9FEC0F9FEBFFAFEBDFBFEB7F9FEAFF8FEA3F5F392
      EFDD81EAC86BE1B156D8951CBD380EB5210CB21E718572F7F7F7FFFFFF56AF5D
      86E2953CDD6239DA5D60E186D6FBFECCFBFEC8FAFEC4FAFEC0F9FEBCF9FEB8F8
      FEB4F8FEAFF8FEABF7FEA7F7FEA4F7FEA1F8FE82EAD00BB51B0DAE1D839183FA
      FAFAF5F6F55EB96786E5993DE1653CDC6174E69ADBFDFEC0D8DABCD4D5BBD7D9
      BBDDDEBAE2E3B8E7E8B7EBEEB4F1F5B1F5FAADF7FCA9F8FDA4F8FE8CEEDA0DB7
      1E0DA91C959E95FDFDFDDFE3DF70C77A85E69940E26A3EDF6588EBABDEFBFED6
      FAFDD2F8FBCDF5F7C8F0F1C2E9EABEE4E5B9DEE0B5D9DBB1D4D6AED1D2ABCED0
      AADDE387EBC80CB81D0EA11CACAFACFFFFFFCAD2CA83D48F81E89944E6703EE1
      679EF0BFE1FCFEDCFCFED9FDFED5FCFED2FCFECEFBFECAFBFEC7FBFEC3FBFEBF
      FAFEBBFAFEB6FBFEB4FAFE7EE5B80FBA2213981FBEBEBEFFFFFFB8C4B896DEA0
      7DEB9848E77340E46AB4F4CEE3FAFCC5D2D2C3D2D2C2D4D5C0D4D5C0D6D7BFD8
      DABEDADCBDDEE0BBE1E1B9E4E5B7E5E6BAF3F872E0A612BE281A9026CACACAFF
      FFFFA4BAA4A9EBB477ED974BEB7942E66EC7F7DAE8FCFEE5FCFDE2FCFDDEFAFC
      DBF9FBD7F7FAD2F5F6CEF3F4CAEDEEC6EBECC0E7E8BDE5E4C2F3F766DB9117C1
      2D22892BD3D3D3FFFFFF8FB990B5EFC172F09650EE7E47E974D8FAE9ECFDFEEB
      FEFEE8FEFEE5FEFEE2FEFEDFFDFEDBFDFED8FDFED5FDFED1FDFECEFDFECAFCFE
      CBFAFE58D67E19C4312D8133DCDCDCFFFFFF7EAF80BFF4CB6DF39553ED814CED
      7AEAFCF5DDE5E5C9D0D0C9D0D0C7D0D0C6D0D0C4D0D0C3D0D0C1D0D0C0D0D0BE
      D0D0BCCFD0BCD2D3D3FCFE4AD16B1CC535397D3EE7E7E7FFFFFF71AA73C7F9D4
      59E07D34CD534ADC71F3FCFCF3FDFEF2FEFEEFFEFEEDFEFEEAFEFEE8FEFEE5FE
      FEE2FEFEDEFCFEDBFCFED8FDFED5FCFED9FDFE39C15423BE3D4A7A4CEDEDEDFF
      FFFF6BAB6FCAFAD551E17920BB3858E57FFBFDFEF5FCFEF3FDFEF0FDFEEFFDFE
      ECFDFEEAFBFEE7FBFEE4FBFEE1FCFEDEFCFEDBFBFED8FBFEDBFCFE2EC5481BBB
      30688769F7F7F7FFFFFF70B275CFFBDA74FEA56AFE9E7EFCA7FEFEFEFEFEFEFD
      FEFEFCFEFEFCFEFEFCFEFEFBFEFEF9FEFEF8FEFEF3FEFEF3FEFEF0FDFBEDFBF7
      DCF5E84CBC5D519C55E0E1E0FFFFFFFFFFFF81B58277B97D77B67C76B37B82B3
      837EB17F7DAF7D7EB07E7EAE7E81B08181AF8185B3858BB48B8DB98E97BD9797
      BE97A2B3A2A5B7A6AEBDAEDEE2DEFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 6
    OnClick = btnGravarClick
  end
  object btnCancelar: TBitBtn
    Left = 289
    Top = 210
    Width = 88
    Height = 35
    Caption = '&Cancelar'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8
      E8E8DBCFCAEEEAE8FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFDBDBDBAC73569D5833C09C8BFCFCFCFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFBFBFBF9F9F9F7F7F7F6F6F6
      F6F6F6F6F6F6F7F7F7F9F9F9FBFBFBFCFCFCE4D0C7964C268C4321AB6D4EF6F1
      EFFFFFFFFFFFFFFFFFFFFFFFFFE5CFC6CCA18FCDA190CDA190CEA190CEA190CE
      A190CEA190CEA190CEA190CEA190CDA190CDA190CCA18FF1E6E2FFFFFFCA9D86
      8E4623914422AF6F50F6F1F0FFFFFFFFFFFFFFFFFFAF5C2EAF5B2EAF5B2EAF5A
      2DB05B2EB05B2EAF5B2EAF5B2EAF5B2EAF5A2EAF5A2DAF5A2DB26032C7927AFF
      FFFFFFFFFFF7F2F0A95F39853A1C9A4A25C99C85FFFFFFFFFFFFFFFFFFB15E31
      B05C2EAE592DAD582CAC572BAB552BAA542AA95229A75128A64F27A54D26B161
      37CC9A7FFFFFFFFFFFFFFFFFFFFFFFFFCFA088934624964220A55229F1E6E2FF
      FFFFFFFFFFB15E31B46131B25F30B05B2EAF5A2DAD592CAC572CAB552BAA542A
      A85229B5683CCF9D83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6D0C7A2522B9541
      20A24C26D8B2A0FFFFFFFFFFFFB15E32B86633B96734B46131B15D2FB05C2EAF
      5A2DAD592CAC572BB46438D1A186FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F8F2F0A6532C964221A04723C48665FFFFFFFFFFFFB05D30BC6B36BD6C37BD6C
      36B56231B25F30B15D2FB05C2EB86A3DD2A181FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFF8F3F0AA572E994321A34B25B0623AFFFFFFFFFFFFB56438
      C0703AC0713AC0723BBE6F39B56332B36030B25F2FBA6E3FCD9570F9F3F0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C8BBAE5C339D4522A64F27AD592FFF
      FFFFFFFFFFC2794AC2753EC2753FC3763FC37640BF703CB66332B46231B36030
      BB6F40CA8D64EFDFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC98C66A44E28A24A
      25A95329BA734DFFFFFFFFFFFFC17748C47943C57A44C57A44C57A44C57A44C0
      723EB86634B56332B46130B56435C47F51DBB093E6CCBDF9F4F1E5CCBDCC9472
      AF5D33A34C26A65027AC572BD19D7CFFFFFFFFFFFFC17748C67D48C77E48C77E
      49CA8553C77E49C77E48C47944B96836B66432B46131B35F30B76839BF7748BB
      7042BC7144AF5D33A75128A54E27AE592DBA6C3DDCB8A5FFFFFFFFFFFFC17848
      C9824DCA834ECD8A5ADCB19BD7A280C9834EC9814DC77F4AC0723FB66432B562
      31B36030B15D2FAF5B2DAD582CAB562BA95329B05D2EB56231C37E51F9F3F0FF
      FFFFFFFFFFC17848CC8854D09060DEB59FF1E2D8E0BAA5D9A785CC8854CB8652
      CA844FC77E49C07340B96937B36030B15D2FAF5B2DB05D2FB86633BB6A35C47D
      4AE9D0C1FFFFFFFFFFFFFFFFFFC27848D29565DFB7A1F1E2D8FFFFFFFFFFFFE5
      C6B3DEB399D19262CD8A56CC8753CA844FC8804BC67D48C57A45C37741C2743E
      C0713ACA8552D9AC8CFFFFFFFFFFFFFFFFFFFFFFFFC27848E0B8A3F2E3D8FFFF
      FFFFFFFFFFFFFFFFFFFFEEDACDE2BDA8DFB499D69E74CD8955CB8551C8814CC7
      7D48C57A45D19465D3996CE7CBB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC17645
      F2E3D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E3D9E5C6B2E6C8
      B6D39C76CF9166DCAD8CE1BA9EE9CEBAFAF5F1FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
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
