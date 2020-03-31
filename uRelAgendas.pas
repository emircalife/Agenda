unit uRelAgendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfrmRelAgendas = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    lblTitulo: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    lsysDePagina: TRLSystemInfo;
    lsysAtePagina: TRLSystemInfo;
    lblDe: TRLLabel;
    lblPagina: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAgendas: TfrmRelAgendas;

implementation

{$R *.dfm}

uses uDM, uMain;

end.
