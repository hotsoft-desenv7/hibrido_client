unit IDataPrincipalUnit;

interface

uses IBQuery;

type

IDataPrincipal = interface
  procedure startTransaction; overload;                     //Inicia uma transa��o no banco de dados

  procedure startTransaction(name: string); overload;       //Inicia uma transa��o nomeada no banco
                                                            //de dados. Geralmente pode chamar a
                                                            //n�o nomeada simplesmente.

  procedure commit; overload;                               //faz commit dos dados da transa��o
                                                            //gen�rica

  procedure commit(name: string); overload;                 //faz o commit de transa��o nomeada

  function getSQLResult(sqlText: string): variant;          //retorna o resultado de uma query
                                                            //ele pode ser de qualquer tipo

  function getSQLIntegerResult(sqlText: string): integer;   //retorna um resultado inteiro
                                                            //de uma query. �til em queries de count e max

  procedure execSQL(sqlText: string);                       //executa um comando SQL sem resultado

  procedure refreshData;                                    //faz refresh dos dados do client
                                                            //em firebird por exemplo � um Commit Work

  function getQuery: TIBQuery;                              //retorna um TIBquery conectado na base
end;

implementation

end.
