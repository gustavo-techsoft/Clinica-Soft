object dm: Tdm
  OldCreateOrder = False
  Height = 376
  Width = 744
  object conexao: TFDConnection
    Params.Strings = (
      'Database=C:\Clinica Soft\Dados\CLINICA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 48
    Top = 40
  end
  object qrLogin: TFDQuery
    Connection = conexao
    Left = 120
    Top = 40
  end
end
