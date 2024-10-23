unit CalculationContext;

interface

uses
  CalculationStrategyAbstract, CalculationContextAbstract;

type
  TCalculationContext = class(TInterfacedObject, ICalculationContext)
  private
    FStrategy: ICalculationStrategy;
  public
    procedure SetStrategy(AStrategy: ICalculationStrategy);
    function ExecuteStrategy: string;

    class function New: ICalculationContext;
  end;

implementation

{ TCalculationContext }

class function TCalculationContext.New: ICalculationContext;
begin
  Result := Self.Create;
end;

procedure TCalculationContext.SetStrategy(AStrategy: ICalculationStrategy);
begin
  FStrategy := AStrategy;
end;

function TCalculationContext.ExecuteStrategy: string;
begin
  Result := FStrategy.ExecuteCalculation;
end;

end.

