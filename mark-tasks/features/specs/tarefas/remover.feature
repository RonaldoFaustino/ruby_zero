#language: pt

Funcionalidade:  Remover tarefa
    Para que eu possa organizar  minhas atividades
    Sendo um usuario cadastrado
    Posso excluir  uma tarefa indesejada

    @auth @remover
    Cenário: Remover uma tarefa indesejada

        Dado que eu tenho uma tarefa cadastrada 
        Quando eu solicito a exclusão dessa tarefa
        E confirmo a solicitaçao
        Então esta tarefa não deve ser  exibida na lista 
    
    @auth @cancela
    Cenário: Desistir da remoção

        Dado que eu tenho uma tarefa cadastrada 
        Quando eu solicito a exclusão dessa tarefa
        E cancelo a solicitação
        Então esta tarefa permanece cadastrada na lista


