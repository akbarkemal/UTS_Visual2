object Form1: TForm1
  Left = 500
  Top = 203
  Width = 502
  Height = 457
  Caption = 'satuan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 72
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl2: TLabel
    Left = 72
    Top = 72
    Width = 38
    Height = 13
    Caption = 'Diskripsi'
  end
  object lbl3: TLabel
    Left = 80
    Top = 296
    Width = 80
    Height = 13
    Caption = 'Masukkan  Nama'
  end
  object edt1: TEdit
    Left = 120
    Top = 40
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 120
    Top = 72
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 56
    Top = 112
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 144
    Top = 112
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 232
    Top = 112
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 320
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 152
    Width = 361
    Height = 120
    DataSource = DataModule2.dssatuan
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt3: TEdit
    Left = 176
    Top = 296
    Width = 169
    Height = 21
    TabOrder = 7
    OnChange = edt3Change
  end
end
