object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Informa'#231'oes do Computador'
  ClientHeight = 385
  ClientWidth = 360
  Color = 13092783
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 0
    Width = 137
    Height = 16
    Caption = 'Nome do computador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 125
    Width = 131
    Height = 16
    Caption = 'Diretorio do sistema'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 12
    Top = 197
    Width = 137
    Height = 16
    Caption = 'Diretorio do windows'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 12
    Top = 333
    Width = 128
    Height = 16
    Caption = 'Versao do Windows'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 12
    Top = 267
    Width = 113
    Height = 16
    Caption = 'Pasta temporaria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 18
    Top = 64
    Width = 107
    Height = 16
    Caption = 'Nome do usuario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edt_CompNome: TEdit
    Left = 10
    Top = 19
    Width = 337
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object Edt_WinVersao: TEdit
    Left = 12
    Top = 352
    Width = 335
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object Edt_PastaTemp: TEdit
    Left = 12
    Top = 286
    Width = 335
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object Edt_WinDiretorio: TEdit
    Left = 10
    Top = 220
    Width = 337
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object Edt_PastaSys: TEdit
    Left = 10
    Top = 148
    Width = 337
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object Edt_usurnome: TEdit
    Left = 10
    Top = 83
    Width = 337
    Height = 21
    ReadOnly = True
    TabOrder = 5
  end
end
