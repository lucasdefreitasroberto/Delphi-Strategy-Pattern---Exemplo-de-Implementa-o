unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, CalculationContext, CalculationStrategyAbstract,
  CalculationContextAbstract;

type
  TfrmMain = class(TForm)
    btnExecuteStrategyA: TButton;
    btnExecuteStrategyB: TButton;
    procedure btnExecuteStrategyAClick(Sender: TObject);
    procedure btnExecuteStrategyBClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FContext: ICalculationContext;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  CalculationStrategy;

{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FContext := TCalculationContext.New;
end;

procedure TfrmMain.btnExecuteStrategyAClick(Sender: TObject);
begin
  FContext.SetStrategy(TAdditionStrategy.New); // Usando a estratégia de adição
  ShowMessage(FContext.ExecuteStrategy);       // Exibe: Resultado da Adição: 8
end;

procedure TfrmMain.btnExecuteStrategyBClick(Sender: TObject);
begin
  FContext.SetStrategy(TMultiplicationStrategy.New);  // Troca para a estratégia de multiplicação
  ShowMessage(FContext.ExecuteStrategy);              // Exibe: Resultado da Multiplicação: 15
end;

end.

