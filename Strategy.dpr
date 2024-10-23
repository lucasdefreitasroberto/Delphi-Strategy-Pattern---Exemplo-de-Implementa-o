program Strategy;

uses
  Vcl.Forms,
  Main in 'Main.pas' {frmMain},
  CalculationStrategyAbstract in 'CalculationStrategyAbstract.pas',
  CalculationStrategy in 'CalculationStrategy.pas',
  CalculationContext in 'CalculationContext.pas',
  CalculationContextAbstract in 'CalculationContextAbstract.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
