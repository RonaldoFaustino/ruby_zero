	#language:pt
    Funcionalidade: Login
		Para que soemnte eu possa ver minhas tarefas
		Sendo um usuário
		Posso logar no sistema com meus dados de acesso previamente cadastrados
        @doing
		Cenário: Login do usuário

			Quando faço login com "ohnirucse@msn.com" e "123456"
			Então sou autenticado com sucesso
			E vejo as minhas tarefas

        Esquema do Cenário: Tentatita de login

            Quando faço login com "<email>" e "<senha>"
			Então devo ver a mensagem "<alerta>"

            Exemplos:
             | email                  | senha  | alerta                  |
             | ohnirucse@yahoo.com.br | 123457 | Senha inválida.         |
             | padrekevedo@yahoo.com  | 123456 | Usuário não cadastrado. |
             | ohnirucse@yahoo.com.br |        | Usuário não cadastrado. |
             |                        | 123456 | Usuário não cadastrado. |



#359:00
		

	

	

	