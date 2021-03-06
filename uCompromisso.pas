unit uCompromisso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.WinXPickers, Vcl.Buttons;

type
  TfrmCompromisso = class(TForm)
    lblTitulo: TLabel;
    edtTitulo: TEdit;
    lblTexto: TLabel;
    memTexto: TMemo;
    dtpData: TDateTimePicker;
    tipHora: TTimePicker;
    chkConcluido: TCheckBox;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    chkAlertaCompromisso: TCheckBox;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
    function validaAgenda():boolean;
    procedure adicionaAgenda();
    procedure editaAgenda();
    procedure transfereAgenda();
    procedure limparTudo;
  public
    { Public declarations }
    var
      nAcao : integer;
      nidAgenda: integer;
  end;

var
  frmCompromisso: TfrmCompromisso;

implementation

{$R *.dfm}

uses uDM, uMain;

procedure TfrmCompromisso.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCompromisso.btnGravarClick(Sender: TObject);
begin
  case nAcao of
    1:
    begin
      if validaAgenda() then
      begin
        adicionaAgenda();
      end;
    end;

    2:
    begin
      if validaAgenda() then
      begin
        editaAgenda();
      end;
    end;

    3:
    begin
      if validaAgenda() then
      begin
        transfereAgenda();
      end;
    end;
  end;

  close;
end;

procedure TfrmCompromisso.FormShow(Sender: TObject);
begin
  case nAcao of
    1:
     begin
       Caption      := 'Adi��o de Agenda';

       dtpData.Date := now();
       tipHora.Time := Time();
     end;
    2:
     begin
       Caption                      := 'Edi��o de Agenda';

       edtTitulo.Text               := DM.qryCompromissos.FieldByName('TITULO').AsString;
       memTexto.Text                := DM.qryCompromissos.FieldByName('COMPROMISSO').AsString;
       dtpData.Date                 := DM.qryCompromissos.FieldByName('DTAGENDA').AsDateTime;
       tipHora.Time                 := DM.qryCompromissos.FieldByName('HORA').AsDateTime;
       chkConcluido.Checked         := DM.qryCompromissos.FieldByName('CONCLUIDO').AsBoolean;
       chkAlertaCompromisso.Checked := DM.qryCompromissos.FieldByName('ALERTA').AsBoolean;

       dtpData.Enabled              := false;
     end;
    3:
     begin
       Caption                      := 'Transferir Agenda';

       edtTitulo.Text               := DM.qryCompromissos.FieldByName('TITULO').AsString;
       memTexto.Text                := DM.qryCompromissos.FieldByName('COMPROMISSO').AsString;
       dtpData.Date                 := DM.qryCompromissos.FieldByName('DTAGENDA').AsDateTime;
       tipHora.Time                 := DM.qryCompromissos.FieldByName('HORA').AsDateTime;
       chkConcluido.Checked         := DM.qryCompromissos.FieldByName('CONCLUIDO').AsBoolean;
       chkAlertaCompromisso.Checked := DM.qryCompromissos.FieldByName('ALERTA').AsBoolean;

       edtTitulo.Enabled            := false;
       memTexto.Enabled             := false;
       chkConcluido.Enabled         := false;
       chkAlertaCompromisso.Checked := false;
     end;
  end;
end;

function TfrmCompromisso.ValidaAgenda():boolean;
var
  bRetorno:Boolean;
begin
  bRetorno := true;

  case nAcao of
    1:
    begin
      if edtTitulo.Text = '' then
      begin
        bRetorno := false;
        Application.MessageBox('Campo t�tulo n�o pode estar vazio','Valida��o');
      end;

      if bRetorno and (memTexto.Text = '') then
      begin
        bRetorno := false;
        Application.MessageBox('Campo texto n�o pode estar vazio','Valida��o');
      end;
    end;

    2:
    begin
      if edtTitulo.Text = '' then
      begin
      bRetorno := false;
      Application.MessageBox('Campo t�tulo n�o pode estar vazio','Valida��o');
      end;

      if bRetorno and (memTexto.Text = '') then
      begin
        bRetorno := false;
        Application.MessageBox('Campo texto n�o pode estar vazio','Valida��o');
      end;
    end;
  end;

  Result := bRetorno;
end;

procedure TfrmCompromisso.limparTudo;
var
  i:integer;

begin
  For i:= 0 to frmCompromisso.ComponentCount-1 do
  Begin
    If(frmCompromisso.Components[I] is TEdit)Then
      TEdit(frmCompromisso.Components[I]).Text:= '';

    If(frmCompromisso.Components[I] is TMemo)Then
      TMemo(frmCompromisso.Components[I]).Text:= '';

    If(frmCompromisso.Components[I] is TCheckBox)Then
      TCheckBox(frmCompromisso.Components[I]).Checked:= false;
  End;
end;

procedure TfrmCompromisso.adicionaAgenda();
const
  c_SQL_Adicionar:string = 'INSERT INTO AGENDA (                                      '+
                           ' TITULO, DTAGENDA, HORA, COMPROMISSO, CONCLUIDO, ALERTA   '+
                           ' )VALUES(                                                 '+
                           ' :pTITULO, :pDTAGENDA, :pHORA, :pCOMPROMISSO, :pCONCLUIDO,'+
                           ' :pALERTA)';
begin
  try
    with DM.qryManutencao do
    begin
      Close;
      SQL.Clear;
      SQL.Add(c_SQL_Adicionar);
      ParamByName('pTITULO').AsString := edtTitulo.Text;
      ParamByName('pDTAGENDA').AsDate := dtpData.Date;
      ParamByName('pHORA').AsTime := tipHora.Time;
      ParamByName('pCOMPROMISSO').AsString := memTexto.Text;
      ParamByName('pCONCLUIDO').AsBoolean  := chkConcluido.Checked;
      ParamByName('pALERTA').AsBoolean  := chkAlertaCompromisso.Checked;
      ExecSQL;
    end;
  except
    Application.MessageBox('Erro na inclus�o da agenda. Feche e abra novamente o sistema', 'Erro', MB_ICONERROR);
  end;

  limparTudo;

  frmMain.listarPorData;
  frmMain.listaAtrasados;
  frmMain.listaParaAlerta;
end;

procedure TfrmCompromisso.editaAgenda();
const
  c_SQL_Editar:string = 'UPDATE AGENDA SET '+
                              'TITULO = :pTITULO,           '+
                              'DTAGENDA = :pDTAGENDA,       '+
                              'HORA = :pHORA,               '+
                              'COMPROMISSO = :pCOMPROMISSO, '+
                              'CONCLUIDO = :pCONCLUIDO,     '+
                              'ALERTA = :pALERTA            '+
                              'WHERE IDAGENDA = :pIDAGENDA  ';
begin
  try
    with DM.qryManutencao do
    begin
      Close;
      SQL.Clear;
      SQL.Add(c_SQL_Editar);
      ParamByName('pTITULO').AsString := edtTitulo.Text;
      ParamByName('pDTAGENDA').AsDate := dtpData.Date;
      ParamByName('pHORA').AsTime := tipHora.Time;
      ParamByName('pCOMPROMISSO').AsString := memTexto.Text;
      ParamByName('pCONCLUIDO').AsBoolean  := chkConcluido.Checked;
      ParamByName('pALERTA').AsBoolean  := chkAlertaCompromisso.Checked;
      ParamByName('pIDAGENDA').AsInteger  := nidAgenda;
      ExecSQL;
    end;
  except
    Application.MessageBox('Erro na edi��o da agenda. Feche e abra novamente o sistema', 'Erro', MB_ICONERROR);
  end;

  limparTudo;

  frmMain.listarPorData;
  frmMain.listaAtrasados;
  frmMain.listaParaAlerta;
end;

procedure TfrmCompromisso.transfereAgenda();
const
  c_SQL_Transferir:string = 'UPDATE AGENDA SET '+
                              'DTAGENDA = :pDTAGENDA,       '+
                              'HORA = :pHORA                '+
                              'WHERE IDAGENDA = :pIDAGENDA  ';
begin
  try
    with DM.qryManutencao do
    begin
      Close;
      SQL.Clear;
      SQL.Add(c_SQL_Transferir);
      ParamByName('pDTAGENDA').AsDate     := dtpData.Date;
      ParamByName('pHORA').AsTime         := tipHora.Time;
      ParamByName('pIDAGENDA').AsInteger  := nidAgenda;
      ExecSQL;
    end;
  except
    Application.MessageBox('Erro na transfer�ncia da agenda. Feche e abra novamente o sistema', 'Erro', MB_ICONERROR);
  end;

  limparTudo;

  frmMain.listarPorData;
  frmMain.listaAtrasados;
  frmMain.listaParaAlerta;
end;

end.
