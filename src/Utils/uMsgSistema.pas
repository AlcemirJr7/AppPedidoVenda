unit uMsgSistema;

interface

type

  TMsgSistema = class public

  public
    const ERRO_GENERICO  = 'Ocorreu um erro inesperado. ';
    const ERRO_INSERIR   = 'Ocorreu um erro ao inserir %s. ';
    const ERRO_GRAVAR    = 'Ocorreu um erro ao gravar %s. ';
    const ERRO_EXCLUIR   = 'Ocorreu um erro ao excluir %s. ';
    const ERRO_ALTERAR   = 'Ocorreu um erro ao alterar %s. ';
    const ERRO_PESQUISAR = 'Ocorreu um erro ao pesquisar %s. ';
    const ERRO_CONSULTAR = 'Ocorreu um erro ao consultar %s. ';
    const VALIDACAO_MODEL = 'Campo [ %s ] inválido ou não informado. ';

end;

implementation

end.
