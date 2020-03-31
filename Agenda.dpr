program Agenda;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uCompromisso in 'uCompromisso.pas' {frmCompromisso},
  uDM in 'uDM.pas' {DM: TDataModule},
  uRelAgendas in 'uRelAgendas.pas' {frmRelAgendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
