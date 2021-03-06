unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCalendars, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, DateUtils,
  Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    pgcAgenda: TPageControl;
    tsAgenda: TTabSheet;
    Pesquisa: TTabSheet;
    tlbMenu: TToolBar;
    lblIrPara: TLabel;
    dtpData: TDateTimePicker;
    cboMes: TComboBox;
    cboAno: TComboBox;
    calCalendario: TCalendarView;
    btnAdicionar: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    btnTransferir: TBitBtn;
    grdAtrasados: TDBGrid;
    grdCompromissos: TDBGrid;
    memDetalhe: TMemo;
    lblDe: TLabel;
    lblAte: TLabel;
    dtpDe: TDateTimePicker;
    dtpAte: TDateTimePicker;
    chkNaoConcluidos: TCheckBox;
    btnPesquisar: TBitBtn;
    grdPesquisaCompromissos: TDBGrid;
    lblTotalPesquisaCompromissos: TLabel;
    btnImprimir: TBitBtn;
    memPesquisaCompromissos: TMemo;
    dsAtrasados: TDataSource;
    dsCompromisso: TDataSource;
    dsPesquisaCompromisso: TDataSource;
    tmrAlerta: TTimer;
    traySIstema: TTrayIcon;
    sbtTray: TSpeedButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cboMesChange(Sender: TObject);
    procedure cboAnoChange(Sender: TObject);
    procedure calCalendarioChange(Sender: TObject);
    procedure calCalendarioDrawDayItem(Sender: TObject;
      DrawParams: TDrawViewInfoParams; CalendarViewViewInfo: TCellItemViewInfo);
    procedure dtpDataChange(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmrAlertaTimer(Sender: TObject);
    procedure sbtTrayClick(Sender: TObject);
    procedure traySIstemaDblClick(Sender: TObject);
  private
    { Private declarations }
    var
      arrDias: array[0..31] of integer;

    procedure carregaComboMes;
    procedure carregaComboAno;
    procedure buscarCompromissos(dtIni:TDate;dtFim:TDate;lNAOConluidos:boolean);

  public
    { Public declarations }
    var
      qtdeAlertas:integer;
    procedure listarPorData;
    procedure listaAtrasados;
    procedure listaParaAlerta;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uCompromisso, uDM, uRelAgendas, uLembrete;

procedure TfrmMain.btnAdicionarClick(Sender: TObject);
begin
  frmCompromisso := TfrmCompromisso.Create(nil);
  frmCompromisso.nAcao := 1;
  frmCompromisso.ShowModal;
  FreeAndNil(frmCompromisso);

  listarPorData;
  listaAtrasados;
  listaParaAlerta;
end;

procedure TfrmMain.btnEditarClick(Sender: TObject);
begin
  if DM.qryCompromissos.FieldByName('IDAGENDA').AsInteger <> 0 then
  begin
    frmCompromisso := TfrmCompromisso.Create(nil);

    frmCompromisso.nAcao := 2;
    frmCompromisso.nidAgenda :=  DM.qryCompromissos.FieldByName('IDAGENDA').AsInteger;

    frmCompromisso.ShowModal;
    FreeAndNil(frmCompromisso);

    listarPorData;
    listaAtrasados;
    listaParaAlerta;
  end;
end;

procedure TfrmMain.btnExcluirClick(Sender: TObject);
const
  c_SQL_Excluir:string = 'DELETE FROM AGENDA      '+
                         'WHERE IDAGENDA=:pIDAGENDA ';
begin
  if DM.qryCompromissos.FieldByName('IDAGENDA').AsInteger <> 0 then
  begin
    if Application.MessageBox('Deseja excluir o compromisso selecionado?','Confirmar',MB_ICONQUESTION + MB_YESNO + MB_SYSTEMMODAL) = mrYes then
    begin
      try
         with DM.qryManutencao do
         begin
           Close;
           SQL.Clear;
           SQL.Add(c_SQL_Excluir);
           ParamByName('pIDAGENDA').AsInteger  :=  DM.qryCompromissos.FieldByName('IDAGENDA').AsInteger;
           ExecSQL;
         end;
      except
        Application.MessageBox('Erro na exclus�o da agenda. Feche e abra novamente o sistema', 'Erro', MB_ICONERROR);
      end;

      listarPorData;
      listaParaAlerta;
    end;
  end;
end;

procedure TfrmMain.btnImprimirClick(Sender: TObject);
var
  lcTitulo:string;

begin
  lcTitulo := 'Agendas de ' + DateToStr(dtpDe.Date) + ' at� ' + DateToStr(dtpAte.Date);

  frmRelAgendas := TfrmRelAgendas.Create(nil);

  frmRelAgendas.lblTitulo.Caption := lcTitulo;

  frmRelAgendas.RLReport1.Preview();
  //frmRelAgendas.RLReport1.Print;
end;

procedure TfrmMain.btnPesquisarClick(Sender: TObject);
begin
  buscarCompromissos(dtpDe.Date, dtpAte.Date, chkNaoConcluidos.Checked);
end;

procedure TfrmMain.btnTransferirClick(Sender: TObject);
begin
  if DM.qryCompromissos.FieldByName('IDAGENDA').AsInteger <> 0 then
  begin
    frmCompromisso := TfrmCompromisso.Create(nil);

    frmCompromisso.nAcao := 3;
    frmCompromisso.nidAgenda := DM.qryCompromissos.FieldByName('IDAGENDA').AsInteger;

    frmCompromisso.ShowModal;
    FreeAndNil(frmCompromisso);
  end;
end;

procedure TfrmMain.listarPorData;
const
  c_SQL_ListaPorData:string = 'SELECT IDAGENDA, TITULO, DTAGENDA, HORA, '+
                              'COMPROMISSO, CONCLUIDO, ALERTA           '+
                              'FROM AGENDA                              '+
                              'WHERE DTAGENDA = :pDTAGENDA              ';
var
  nCont: integer;
  nContLista: integer;

begin
   nCont := -1;

   memDetalhe.Clear;

   with DM.qryCompromissos do
   begin
     Close;
     SQL.Clear;
     SQL.Add(c_SQL_ListaPorData);
     ParamByName('pDTAGENDA').AsDate := calCalendario.Date;
     Open;

     TTimeField(FieldByName('HORA')).DisplayFormat:='hh:mm';
     {
     First;
     while not Eof do
     begin
       nCont := 0;
       arrDias[nCont] := DayOf(FieldByName('DTAGENDA').AsDateTime);
       nCont := nCont + 1;
     end;
     }
   end;
end;

procedure TfrmMain.sbtTrayClick(Sender: TObject);
begin
  with traySIstema do
  begin
    Hint    := 'Restaurar Agenda de Compromissos';
    Visible := True;
  end;

  frmMain.Hide;
end;

procedure TfrmMain.tmrAlertaTimer(Sender: TObject);
var
  cDtAgenda : string;
  cHoraAgenda : string;
  cTitulo : string;
  cCompromisso : string;
  cMsg : string;
  cHoraAtual:string;
  cHoraAlerta:string;

begin
  DM.qryAlertas.First;

  while not DM.qryAlertas.Eof do
  begin
    if DM.qryAlertas.FieldByName('DTAGENDA').AsDateTime = date() then
    begin
      cHoraAtual  := FormatDateTime('hh:mm', now) + ':00';
      cHoraAlerta := FormatDateTime('hh:mm', DM.qryAlertas.FieldByName('HORA').AsVariant) + ':00';

      if cHoraAlerta = cHoraAtual then
      begin
      {
        cDtAgenda     := DateToStr(DM.qryAlertas.FieldByName('DTAGENDA').AsDateTime);
        cHoraAgenda   := FormatDateTime('hh:mm', DM.qryAlertas.FieldByName('HORA').AsDateTime);
        cCompromisso  := DM.qryAlertas.FieldByName('COMPROMISSO').AsString;

        cTitulo       := DM.qryAlertas.FieldByName('TITULO').AsString;

        cMsg          := cDtAgenda + ' ' + cHoraAgenda + CHR(13) + cCompromisso;
       }
        tmrAlerta.Enabled := False;

        frmLembrete := TfrmLembrete.Create(nil);

        frmLembrete.edtTitulo.Text    := DM.qryAlertas.FieldByName('TITULO').AsString;
        frmLembrete.memTexto.Text     := DM.qryAlertas.FieldByName('COMPROMISSO').AsString;
        frmLembrete.dtpData.DateTime  := DM.qryAlertas.FieldByName('DTAGENDA').AsDateTime;
        frmLembrete.tipHora.Time      := DM.qryAlertas.FieldByName('HORA').AsDateTime;

        frmLembrete.ShowModal;

        FreeAndNil(frmLembrete);

        if frmLembrete = nil then
        begin
          listaParaAlerta;

          tmrAlerta.Enabled := (not DM.qryAlertas.RecordCount = 0);
        end;
      end;
    end;

    DM.qryAlertas.Next;
  end;
end;

procedure TfrmMain.traySIstemaDblClick(Sender: TObject);
begin
  with traySIstema do
  begin
    Visible := False;
  end;

  frmMain.Show;
end;

procedure TfrmMain.listaAtrasados;
const
  c_SQL_ListaAtrasados:string = 'SELECT COUNT(IDAGENDA) QTDEATRASADOS, '+
                                'DTAGENDA, CONCLUIDO                   '+
                                'FROM AGENDA                           '+
                                'WHERE DTAGENDA < :pDTAGENDA           '+
                                //'  AND HORA < :pHORA                      '+
                                '  AND CONCLUIDO = false               '+
                                'GROUP BY DTAGENDA, CONCLUIDO          ';
begin
   with DM.qryAtrasados do
   begin
     Close;
     SQL.Clear;
     SQL.Add(c_SQL_ListaAtrasados);
     ParamByName('pDTAGENDA').AsDate := Date();
     //ParamByName('pHORA').AsDateTime := Now();
     Open;

     //TTimeField(FieldByName('HORA')).DisplayFormat:='hh:mm';
   end;
end;

procedure TfrmMain.carregaComboMes;
begin
  cboMes.Items.Add('Janeiro');
  cboMes.Items.Add('Fevereiro');
  cboMes.Items.Add('Mar�o');
  cboMes.Items.Add('Abril');
  cboMes.Items.Add('Maio');
  cboMes.Items.Add('Junho');
  cboMes.Items.Add('Julho');
  cboMes.Items.Add('Agosto');
  cboMes.Items.Add('Setembro');
  cboMes.Items.Add('Outubro');
  cboMes.Items.Add('Novembro');
  cboMes.Items.Add('Dezembro');
end;

procedure TfrmMain.cboAnoChange(Sender: TObject);
var
  dia:word;
  mes:word;
  ano:word;
  dataCombo:TDate;
begin
  dia := DayOf(date());
  mes := cboMes.ItemIndex + 1;
  ano := StrToInt(cboAno.Text);

  dataCombo := StrToDate(IntToStr(dia) + '/' + IntToStr(mes) + '/' + IntToStr(ano));
  calCalendario.Date := dataCombo;
end;

procedure TfrmMain.cboMesChange(Sender: TObject);
var
  dia:word;
  mes:word;
  ano:word;
  dataCombo:TDate;
begin
  dia := DayOf(date());
  mes := cboMes.ItemIndex + 1;
  ano := StrToINt(cboAno.Text);

  dataCombo := StrToDate(IntToStr(dia) + '/' + IntToStr(mes) + '/' + IntToStr(ano));
  calCalendario.Date := dataCombo;
end;

procedure TfrmMain.dtpDataChange(Sender: TObject);
begin
  calCalendario.Date :=  dtpData.Date;
  calCalendario.OnChange(sender);
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
 dia, mes, ano: word;
begin
  qtdeAlertas:= 0;

  carregaComboMes;

  carregaComboAno;

  decodeDate(now(), ano, mes, dia);


  dtpData.Date := now();

  dtpDe.Date  := now() -1;
  dtpAte.Date := now();

  cboMes.ItemIndex   := mes - 1;
  cboAno.ItemIndex   := cboAno.Items.IndexOf(IntToStr(ano));
  calCalendario.Date := now();

  listarPorData;
  listaAtrasados;
  listaParaAlerta;
end;

procedure TfrmMain.calCalendarioChange(Sender: TObject);
begin
  listarPorData;
  listaAtrasados;
end;

procedure TfrmMain.calCalendarioDrawDayItem(Sender: TObject;
  DrawParams: TDrawViewInfoParams; CalendarViewViewInfo: TCellItemViewInfo);
var
  nDiaArr, nDia:integer;
begin
  if DayOfWeek(CalendarViewViewInfo.Date) in [1, 7] then
    DrawParams.ForegroundColor := clRed;
  {
  nDia := DayOf(CalendarViewViewInfo.Date);
  for nDiaArr in arrDias do
    if nDiaArr = nDia then
      DrawParams.ForegroundColor := clGreen;
  }
end;


procedure TfrmMain.carregaComboAno;
var
 nAno : integer;

begin
  for nAno := 2000 to YearOf(now()) do
  begin
    cboAno.Items.Add(IntToStr(nAno));
  end;

  cboAno.Items.Add(IntToStr(nAno));
  cboAno.Items.Add(IntToStr(nAno + 1));
end;

procedure TfrmMain.buscarCompromissos(dtIni:TDate;dtFim:TDate;lNAOConluidos:boolean);
const
  c_SQL_BuscaCompromissos : string =  'SELECT IDAGENDA, DTAGENDA, COMPROMISSO     '+
                                      'HORA, CONCLUIDO, TITULO, ALERTA            '+
                                      'FROM AGENDA                                '+
                                      'WHERE DTAGENDA BETWEEN :pDTINI AND :pDTFIM ';

  c_SQL_BuscaCompromissosNAOConluidos : string = 'SELECT IDAGENDA, DTAGENDA, COMPROMISSO     '+
                                                 'HORA, CONCLUIDO, TITULO, ALERTA            '+
                                                 'FROM AGENDA                                '+
                                                 'WHERE DTAGENDA BETWEEN :pDTINI AND :pDTFIM '+
                                                 '  AND CONCLUIDO = false                    ';

begin
  try
    with DM.qryConsultaCompromissos do
    begin
      Close;
      SQL.Clear;

      if lNAOConluidos then
        SQL.Add(c_SQL_BuscaCompromissosNAOConluidos)
      else
        SQL.Add(c_SQL_BuscaCompromissos);

      ParamByName('pDTINI').AsDate  := dtIni;
      ParamByName('pDTFIM').AsDate  := dtFim;
      Open;


      TTimeField(FieldByName('HORA')).DisplayFormat:='hh:mm';
      lblTotalPesquisaCompromissos.Caption := 'Total de Compromissos: ' + IntToStr(DM.qryConsultaCompromissos.RecordCount);
    end;
  except
    Application.MessageBox('Erro na consulta da agenda. Feche e abra novamente o sistema', 'Erro', MB_ICONERROR);
  end;
end;

procedure TfrmMain.listaParaAlerta;
const
  c_SQL_ListaAlertas:string = 'SELECT IDAGENDA, TITULO, DTAGENDA, HORA, '+
                              'COMPROMISSO, CONCLUIDO, ALERTA           '+
                              'FROM AGENDA                              '+
                              'WHERE CONCLUIDO = false                  '+
                              '  AND ALERTA = true                      '+
                              '  AND DTAGENDA >= :pDTAGENDA             '+
                              '  AND HORA     >= :pHORA                 '+
                              'ORDER BY DTAGENDA, HORA                  ';
begin
   with DM.qryAlertas do
   begin
     Close;
     SQL.Clear;
     SQL.Add(c_SQL_ListaAlertas);
     ParamByName('pDTAGENDA').AsDate  := now();
     ParamByName('pHORA').AsTime      := Time();
     Open;

     qtdeAlertas := DM.qryAlertas.RecordCount;
   end;

   tmrAlerta.Enabled := qtdeAlertas > 0;
end;

end.
