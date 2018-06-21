#language: pt

Funcionalidade: Cadastro
	Sendo um usuário que possui muitas tarefas
	Posso Fazer meu cadastro no sistema
	Para poder gerenciar as minhas tarefas

    @smoke
	Cenário: Cadastro simplificado

	Dado que eu acessei a pagina de cadastro
	E possuo os seguintes dados:
			|Nome|Fernando|
			|Email|ohnirucse@yahoo.com.br|
			|Senha|123456|
	Quando faço o meu cadastro
	Então sou redirecionado para meu paineil de tarefas
	
	Esquema do Cenário: Tentativa de cadasdro

	Dado que eu acessei a pagina de cadastro
	E possuo os seguintes dados:
	  | Nome  | <nome>  |
      | Email | <email> |
      | Senha | <senha> |
	Quando faço o meu cadastro
	Então devo ver uma mensagem de alerta "<alerta>"

	Exemplos:
	|nome   |email                 |senha |alerta                                     |
	|Fenando|                      |123456|Email é obrigatório.                       |
	|Fenando|ohnirucse@yahoo.com.br|      |Informe uma senha.                         |
	|Fenando|ohnirucse@yahoo.com.br|12345 |Sua senha deve ter pelo menos 6 caracteres.|
	|Fenando|ohnirucse@yahoo.com.br|1234  |Sua senha deve ter pelo menos 6 caracteres.|
	|Fenando|ohnirucse@yahoo.com.br|123   |Sua senha deve ter pelo menos 6 caracteres.|
	|Fenando|ohnirucse@yahoo.com.br|12    |Sua senha deve ter pelo menos 6 caracteres.|
	|Fenando|ohnirucse@yahoo.com.br|1     |Sua senha deve ter pelo menos 6 caracteres.|
	
	
	
	
	