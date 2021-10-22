object Form1: TForm1
  Left = 367
  Top = 190
  Caption = 'Form1'
  ClientHeight = 514
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 953
    Height = 514
    Align = alClient
    ExplicitLeft = 280
    ExplicitTop = 128
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5
    OnTimer = Timer1Timer
    Left = 8
    Top = 16
  end
end
