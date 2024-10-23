object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Padr'#227'o Strategy'
  ClientHeight = 92
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 15
  object btnExecuteStrategyA: TButton
    Left = 86
    Top = 26
    Width = 137
    Height = 41
    Caption = 'Execute Strategy - A'
    TabOrder = 0
    OnClick = btnExecuteStrategyAClick
  end
  object btnExecuteStrategyB: TButton
    Left = 318
    Top = 26
    Width = 137
    Height = 41
    Caption = 'Execute Strategy - B'
    TabOrder = 1
    OnClick = btnExecuteStrategyBClick
  end
end
