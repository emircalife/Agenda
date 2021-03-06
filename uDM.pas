unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    qryManutencao: TFDQuery;
    qryAtrasados: TFDQuery;
    qryConsultaCompromissos: TFDQuery;
    qryCompromissos: TFDQuery;
    qryCompromissosIDAGENDA: TIntegerField;
    qryCompromissosTITULO: TStringField;
    qryCompromissosDTAGENDA: TDateField;
    qryCompromissosHORA: TTimeField;
    qryCompromissosCOMPROMISSO: TStringField;
    qryCompromissosCONCLUIDO: TBooleanField;
    qryConsultaCompromissosIDAGENDA: TIntegerField;
    qryConsultaCompromissosTITULO: TStringField;
    qryConsultaCompromissosDTAGENDA: TDateField;
    qryConsultaCompromissosHORA: TTimeField;
    qryConsultaCompromissosCOMPROMISSO: TStringField;
    qryConsultaCompromissosCONCLUIDO: TBooleanField;
    fdConn: TFDConnection;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    qryCompromissosALERTA: TBooleanField;
    qryConsultaCompromissosALERTA: TBooleanField;
    qryAlertas: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryCompromissosAfterScroll(DataSet: TDataSet);
    procedure qryConsultaCompromissosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uMain, uTConexao, uConexao;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  with fdConn do
  begin
    Connected := false;
    LoginPrompt := false;
    Params.Clear;
    Params.Add('hostname=localhost');
    Params.Add('user_name=SYSDBA');
    Params.Add('password=masterkey');
    Params.Add('port=3050');
    Params.Add('Database=' + ExtractFilePath(ParamStr(0)) + '\BD\DBAGENDA.FDB');
    Params.Add('DriverID=FB');
    Connected := true;
  end;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  with fdConn do
  begin
    Connected := false;
    Params.Clear;
  end;
end;

procedure TDM.qryCompromissosAfterScroll(DataSet: TDataSet);
begin
  frmMain.memDetalhe.Clear;
  frmMain.memDetalhe.Text := qryCompromissos.FieldByName('COMPROMISSO').AsString;
end;

procedure TDM.qryConsultaCompromissosAfterScroll(DataSet: TDataSet);
begin
  frmMain.memPesquisaCompromissos.Clear;
  frmMain.memPesquisaCompromissos.Text := qryConsultaCompromissos.FieldByName('COMPROMISSO').AsString;
end;

end.
