object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 180
  Width = 312
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\tugas smstr4\visual2\libmysql.dll'
    Left = 32
    Top = 24
  end
  object zqsatuan: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 88
    Top = 24
  end
  object dssatuan: TDataSource
    DataSet = zqsatuan
    Left = 88
    Top = 80
  end
end
