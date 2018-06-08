	#language:pt
    Funcionalidade: Login
		Para que soemnte eu possa ver minhas tarefas
		Sendo um usuário
		Posso logar no sistema com meus dados de acesso previamente cadastrados
        @login @logout
		Cenário: Login do usuário

			Quando faço login com "ohnirucse@msn.com" e "123456"
			Então sou autenticado com sucesso
			E vejo meu painel de atividades
        @invalido
        Esquema do Cenário: Tentatita de login

            Quando faço login com "<email>" e "<senha>"
            Então não sou autenticado
			E devo ver a mensagem "<alerta>"

            Exemplos:
             | email                  | senha  | alerta                  |
             | ohnirucse@msn.com      | 123457 | Senha inválida.         |
             | padrekevedo@yahoo.com  | 123456 | Usuário não cadastrado. |
             | ohnirucse@msn.com      |        | Senha ausente. |
             |                        | 123456 | Email incorreto ou ausente. |



#359:00
		

	

	

	