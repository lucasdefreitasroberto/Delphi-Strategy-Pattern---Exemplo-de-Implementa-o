object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Padr'#227'o Strategy'
  ClientHeight = 467
  ClientWidth = 841
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 841
    Height = 345
    Align = alTop
    Lines.Strings = (
      
        'O padr'#227'o Strategy '#233' um dos padr'#245'es de projeto de comportamento d' +
        'o livro Design Patterns de Erich Gamma e outros.'
      ''
      
        ' O objetivo do padr'#227'o Strategy '#233' definir uma fam'#237'lia de algoritm' +
        'os e encapsul'#225'-los, permitindo que os algoritmos sejam trocados ' +
        'dinamicamente em tempo '
      'de execu'#231#227'o sem modificar os clientes que os utilizam.'
      ''
      
        'Em vez de definir uma s'#233'rie de comportamentos dentro de uma '#250'nic' +
        'a classe com v'#225'rias condi'#231#245'es (como if-else ou switch-case), o p' +
        'adr'#227'o Strategy separa '
      
        'essas responsabilidades em classes individuais, que implementam ' +
        'uma interface comum.'
      ''
      
        #10#10'Estrutura do Padr'#227'o Strategy'#10'Context: Mant'#233'm uma refer'#234'ncia pa' +
        'ra um objeto Strategy. '
      ''
      
        'O Context interage com o Strategy para realizar o algoritmo.'#10'Str' +
        'ategy: Define a interface comum para todos os algoritmos (estrat' +
        #233'gias). '
      ''
      'Cada classe concreta de estrat'#233'gia implementa essa interface.'
      
        #10'ConcreteStrategy: Implementa uma vers'#227'o espec'#237'fica do algoritmo' +
        '. '
      ''
      
        'V'#225'rias classes concretas implementam diferentes variantes do alg' +
        'oritmo.'#10
      ''
      
        'Vantagens'#10'Desacoplamento: O cliente (Context) n'#227'o precisa conhec' +
        'er os detalhes de como os diferentes algoritmos funcionam, apena' +
        's como cham'#225'-los.'#10
      ''
      
        'Flexibilidade: Novos algoritmos podem ser facilmente adicionados' +
        ' sem modificar o c'#243'digo do cliente.'
      ''
      
        #10'Substitui'#231#227'o din'#226'mica: Permite a troca de algoritmos em tempo d' +
        'e execu'#231#227'o, o que facilita personaliza'#231#245'es e adapta'#231#245'es.')
    ReadOnly = True
    TabOrder = 0
  end
  object btnExecuteStrategyA: TButton
    Left = 104
    Top = 384
    Width = 137
    Height = 41
    Caption = 'Execute Strategy - A'
    TabOrder = 1
    OnClick = btnExecuteStrategyAClick
  end
  object btnExecuteStrategyB: TButton
    Left = 608
    Top = 384
    Width = 137
    Height = 41
    Caption = 'Execute Strategy - B'
    TabOrder = 2
    OnClick = btnExecuteStrategyBClick
  end
end
