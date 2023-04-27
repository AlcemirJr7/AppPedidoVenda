object AppDBContexto: TAppDBContexto
  OldCreateOrder = False
  Height = 145
  Width = 172
  object MySQL: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=testewk;Persist Security Info=True;U' +
      'ser ID=wk;Data Source=MySQLWK;Initial Catalog=dbapppedidovendawk'
    DefaultDatabase = 'dbapppedidovendawk'
    IsolationLevel = ilRepeatableRead
    KeepConnection = False
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'MSDASQL.1'
    OnBeginTransComplete = MySQLBeginTransComplete
    OnCommitTransComplete = MySQLCommitTransComplete
    OnRollbackTransComplete = MySQLRollbackTransComplete
    Left = 72
    Top = 64
  end
end
