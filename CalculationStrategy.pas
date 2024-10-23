unit CalculationStrategy;

interface

uses
  CalculationStrategyAbstract;

type
  TAdditionStrategy = class(TInterfacedObject, ICalculationStrategy)
    function ExecuteCalculation: string;
    class function New: ICalculationStrategy;
  end;

  TMultiplicationStrategy = class(TInterfacedObject, ICalculationStrategy)
    function ExecuteCalculation: string;
    class function New: ICalculationStrategy;
  end;

implementation

uses
  System.SysUtils;

{ TAdditionStrategy }

class function TMultiplicationStrategy.New: ICalculationStrategy;
begin
  Result := Self.Create;
end;

function TAdditionStrategy.ExecuteCalculation: string;
var
  A, B, Sum: Integer;
begin
  A := 5;
  B := 3;
  Sum := A + B;
  Result := 'Resultado da Adição: ' + IntToStr(Sum);
end;

class function TAdditionStrategy.New: ICalculationStrategy;
begin
  Result := Self.Create;
end;

{ TMultiplicationStrategy }

function TMultiplicationStrategy.ExecuteCalculation: string;
var
  A, B, Product: Integer;
begin
  A := 5;
  B := 3;
  Product := A * B;
  Result := 'Resultado da Multiplicação: ' + IntToStr(Product);
end;

end.

