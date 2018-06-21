#language: pt

Funcionalidade: Cadastro tarefas
    Para que eu possa organizar minhas atividades
    Sendo um usuário organizado
    Posso cadastrar novas tarefas

    @nova_tasks @auth @logout @smoke
    Cenário: Nova tarefa

        Dado que eu tenho uma tarefa com os atributos:
            | titulo | Ler um livro de Ruby       |
            | data   | 31/03/2018                 |
           
        E eu quero taguear esta tarefas com:
           | tag     |
           | ruby    |
           | leitura |
           | livro   |
           | estudar |
        Quando faço o cadastro desta tarefa
        Então devo ver este cadastrocom status "Em andamento"
    @tarefa_dup @auth @logout
    Cenário: Tarefa Duplicada

        Dados que eu tenho uma tarefa com os atributos:
            | titulo | Ler um livro de Go Lang      |
            | data   | 01/04/2018                   |
           
        E eu quero taguear esta tarefas com:
           | tag     |
           | go    |
           | leitura |
           | livro   |
           | hardcore|
        Mas eu já cadastrei essa tarefa e não tinha percebido
        Quando faço o cadastro desta tarefa
        Então devo ver a mensagem "Tarefa duplicada." ao tentar fazer o cadastro.


        # Dado que eu tenho uma nova tarefa com o titulo "Ler um livro de Ruby"
        # E a data de finalização desta tarefa é "31/03/2018"
        # E alem disso eu quero taguear esta tarefa com:
        #     |tags|
        #     |livro|
        #     |ruby|
        #     |estudar|
        #     |leitura|

        # Quando faço o cadastro desta tarefa
        # Então devo ver este cadastro no painel de atividades com status "Em andamento"