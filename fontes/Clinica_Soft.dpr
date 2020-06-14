program Clinica_Soft;

uses
  Vcl.Forms,
  principal in 'principal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  modulo in 'modulo.pas' {dm: TDataModule},
  Login in 'Login.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
