# Delphi Strategy Pattern - Exemplo de Implementação

## O que é um Padrão de Projeto?

Um **Padrão de Projeto** é uma solução reutilizável para problemas comuns que surgem no desenvolvimento de software. Eles fornecem um plano que pode ser usado em diferentes situações, ajudando a resolver problemas de design, como reutilização de código, flexibilidade, e organização do sistema. Entre os padrões mais comuns estão o Singleton, Factory, Observer, e o **Strategy**.

## O que é o Padrão Strategy?

O **Padrão Strategy** (ou Padrão de Estratégia) é um padrão de projeto comportamental que permite que você defina uma família de algoritmos, encapsule cada um deles, e os torne intercambiáveis. O padrão permite que o comportamento varie de acordo com o algoritmo escolhido, sem modificar o código do cliente.

### Principais Elementos do Padrão Strategy:
1. **Strategy (Estratégia)**: Uma interface comum para todas as estratégias.
2. **Concrete Strategies (Estratégias Concretas)**: Implementações específicas de algoritmos que seguem a interface Strategy.
3. **Context (Contexto)**: A classe que usa uma estratégia e permite a troca dinâmica da mesma.

### Benefícios do Padrão Strategy:
- **Substituição de condicional**: Elimina o uso de estruturas de controle condicionais (`if`, `switch`), facilitando a leitura e manutenção do código.
- **Facilidade de extensão**: Novos algoritmos podem ser adicionados sem modificar o código existente.
- **Flexibilidade**: Algoritmos podem ser alterados dinamicamente durante a execução.

## Estrutura do Projeto

Neste projeto, implementamos duas estratégias de cálculo: **Adição** e **Multiplicação**, utilizando o Padrão Strategy.

### Classes e Interfaces:

- **ICalculationStrategy**: Interface que define o método `ExecuteCalculation`, que todas as estratégias de cálculo devem implementar.

- **TAdditionStrategy**: Implementa a estratégia de **Adição**.

- **TMultiplicationStrategy**: Implementa a estratégia de **Multiplicação**.

- **TCalculationContext**: Classe que armazena a estratégia e executa o cálculo com base na estratégia definida.

## Exemplo de Implementação

### Interface da Estratégia

```delphi
unit CalculationStrategyAbstract;

interface

type
  ICalculationStrategy = interface
    ['{FA4E5B27-93A6-4F42-8347-B5B7CCF7E033}']
    function ExecuteCalculation: string;
  end;

implementation

end.
```
### Estratégias Concretas
```delphi
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

class function TAdditionStrategy.New: ICalculationStrategy;
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

{ TMultiplicationStrategy }

class function TMultiplicationStrategy.New: ICalculationStrategy;
begin
  Result := Self.Create;
end;

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

```
### Contexto
```delphi
unit CalculationContext;

interface

uses
  CalculationStrategyAbstract;

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
```
### Exemplo de Uso no Formulário Delphi
```delphi
unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, CalculationContext, CalculationStrategyAbstract;

type
  TForm1 = class(TForm)
    btnExecuteStrategyA: TButton;
    btnExecuteStrategyB: TButton;
    procedure btnExecuteStrategyAClick(Sender: TObject);
    procedure btnExecuteStrategyBClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FContext: ICalculationContext;
  end;

var
  frmMain: TfrmMain;


implementation

uses
  CalculationStrategy;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  FContext := TCalculationContext.New;
end;

procedure TForm1.btnExecuteStrategyAClick(Sender: TObject);
begin
  FContext.SetStrategy(TAdditionStrategy.New); // Usando a estratégia de adição
  ShowMessage(FContext.ExecuteStrategy);       // Exibe: Resultado da Adição: 8
end;

procedure TForm1.btnExecuteStrategyBClick(Sender: TObject);
begin
  FContext.SetStrategy(TMultiplicationStrategy.New);  // Troca para a estratégia de multiplicação
  ShowMessage(FContext.ExecuteStrategy);              // Exibe: Resultado da Multiplicação: 15
end;

end.
```
Esse `README.md` oferece uma visão clara e direta sobre o projeto, destacando o uso do padrão Strategy e orientando os desenvolvedores sobre como ele foi implementado no Delphi.


