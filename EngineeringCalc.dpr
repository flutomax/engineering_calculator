program EngineeringCalc;

uses
  Forms,
  uFrmCalc in 'uFrmCalc.pas' {FrmCalc},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Carbon');
  Application.CreateForm(TFrmCalc, FrmCalc);
  Application.Run;
end.
