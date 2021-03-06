unit uConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, uTConexao,
  Vcl.ExtDlgs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, IniFiles;

type
  TfrmConexao = class(TForm)
    edtBancoDados: TEdit;
    edtServidor: TEdit;
    edtPorta: TEdit;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    lblBancoDados: TLabel;
    lblServidor: TLabel;
    lblPorta: TLabel;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    btnGravar: TBitBtn;
    btnConectar: TBitBtn;
    btnFechar: TBitBtn;
    btnBuscarBD: TBitBtn;
    otfdBancoDeDados: TOpenTextFileDialog;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnBuscarBDClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure fdConnBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConexao: TfrmConexao;
  conexaoClass : TConexao;
implementation

{$R *.dfm}

uses uDM, uMain;

procedure TfrmConexao.btnBuscarBDClick(Sender: TObject);
begin
    if otfdBancoDeDados.Execute then
    begin
        edtBancoDados.Text := otfdBancoDeDados.FileName;
    end;
end;

procedure TfrmConexao.btnConectarClick(Sender: TObject);
begin
{
  if not fdConn.Connected then
  begin
    fdConn.Connected       := True;
    btnConectar.Font.Color := clRed;
    btnConectar.Caption    := 'Desconectar';
  end
  else
  begin
    fdConn.Connected       := false;
    btnConectar.Font.Color := clGreen;
    btnConectar.Caption    := 'Conectar';
  end;

  if fdConn.Connected then
  begin
    frmMain.Show;
    frmConexao.Hide;
  end;
  }
end;

procedure TfrmConexao.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConexao.btnGravarClick(Sender: TObject);
begin
{
  //conexaoClass := TConexao.Create(ExtractFilePath(Application.ExeName) + 'Config.ini', 'Conexao');

  conexaoClass.GravaINI(edtUsuario.Text, edtSenha.Text, edtServidor.Text, edtBancoDados.Text, StrToInt(edtPorta.Text));

  Application.MessageBox('Gravado com sucesso!', 'Conex�o', MB_ICONINFORMATION);
  }
end;

procedure TfrmConexao.fdConnBeforeConnect(Sender: TObject);
begin

//  if not fdConn.Connected then
//    conexaoClass.Conectar(fdConn);
end;

procedure TfrmConexao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
{
  if fdConn.Connected then
  begin
    fdConn.Connected  := false;
  end;
}
end;

procedure TfrmConexao.FormCreate(Sender: TObject);
begin
{
  frmMain.Hide;

  conexaoClass := TConexao.Create(ExtractFilePath(Application.ExeName) + 'Config.ini', 'Conexao');
  conexaoClass.LeINI;

  edtBancoDados.Text := conexaoClass.Database;
  edtServidor.Text   := conexaoClass.Servidor;
  edtPorta.Text      := IntToStr(conexaoClass.Porta);
  edtUsuario.Text    := conexaoClass.Usuario;
  edtSenha.Text      := conexaoClass.Senha;
}
end;

end.
