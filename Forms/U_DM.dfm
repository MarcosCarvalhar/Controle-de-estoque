object DM: TDM
  OldCreateOrder = True
  Height = 405
  Width = 481
  object conexao: TFDConnection
    ConnectionName = 'ESTOQUE'
    Params.Strings = (
      
        'Database=C:\Fontes\Estoque\Controle-de-estoque\XE\BANCO\ESTOQUE.' +
        'FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 40
  end
  object transacao: TFDTransaction
    Connection = conexao
    Left = 88
    Top = 40
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 152
    Top = 40
  end
end
