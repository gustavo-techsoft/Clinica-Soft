unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    btnAluno: TBitBtn;
    btnOrientador: TBitBtn;
    BitBtn1: TBitBtn;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    O1: TMenuItem;
    Aluno1: TMenuItem;
    Paciente1: TMenuItem;
    Utilitarios1: TMenuItem;
    lblUsuario: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Login, modulo;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente sair do sistema ?', 'Atenção', MB_YESNO + MB_ICONQUESTION)=IDYES then
  begin
    Application.Terminate;
    Exit;
  end;

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  try
    frmLogin := TfrmLogin.Create(Self);
    frmLogin.ShowModal
  finally
    FreeAndNil(frmLogin);
  end;
end;

end.
