object FormExemplo: TFormExemplo
  Left = 0
  Top = 0
  ClientHeight = 504
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnExecutar: TButton
    Left = 309
    Top = 368
    Width = 185
    Height = 57
    Caption = 'Executar (5 segundos)'
    TabOrder = 0
    OnClick = btnExecutarClick
  end
end
