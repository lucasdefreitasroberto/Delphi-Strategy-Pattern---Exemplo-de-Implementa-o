unit CalculationContextAbstract;

interface

uses
  CalculationStrategyAbstract;

type
  ICalculationContext = interface
    ['{03DF5AC6-7B4F-4373-B7AD-5DDFE75F87D2}']
    procedure SetStrategy(AStrategy: ICalculationStrategy);
    function ExecuteStrategy: string;
  end;

implementation

end.

