unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Menus;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtSenha: TMaskEdit;
    btnEntrar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    edtNome: TEdit;
    btnSair: TBitBtn;
    RadioGroup1: TRadioGroup;
    Image1: TImage;
    Image2: TImage;
    procedure btnEntrarClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses principal, modulo;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
  frmPrincipal.Show;
  Close;
end;

procedure TfrmLogin.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
