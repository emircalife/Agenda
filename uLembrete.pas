unit uLembrete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPickers, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmLembrete = class(TForm)
    lblTitulo: TLabel;
    lblTexto: TLabel;
    edtTitulo: TEdit;
    memTexto: TMemo;
    dtpData: TDateTimePicker;
    tipHora: TTimePicker;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLembrete: TfrmLembrete;

implementation

{$R *.dfm}

procedure TfrmLembrete.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
