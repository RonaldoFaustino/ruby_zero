#language: pt

Funcionalidade: Cadastro
	Sendo um usuário que possui muitas tarefas
	Posso Fazer meu cadastro no sistema
	Para poder gerenciar as minhas tarefas

    @doing
	Cenário: Cadastro simplificado

	Dado que eu acessei a pagina de cadastro
	E possuo os seguintes dados:
			|Nome|Fernando|
			|Email|ohnirucse@yahoo.com.br|
			|Senha|123456|
	Quando faço o meu cadastro
	Então sou redirecionado para meu paineil de tarefas
	
	Cenário: Email não enviado	

	Dado que eu acessei a pagina de cadastro
	E possuo os seguintes dados:
			|Nome|Fernando|
			|Email||
			|Senha|123456|
	Quando faço o meu cadastro
	Então devo ver uma mensagem de alerta "Email é obrigatório."

	Cenário: Senha não informada	

	Dado que eu acessei a pagina de cadastro
	E possuo os seguintes dados:
			|Nome|Fernando|
			|Email|ohnirucse@yahoo.com.br|
			|Senha||
	Quando faço o meu cadastro
	Então devo ver uma mensagem de alerta "Senha é obrigatório."

	Cenário: Minimo de caracteres para senha	

	Dado que eu acessei a pagina de cadastro
	E possuo os seguintes dados:
			|Nome|Fernando|
			|Email|ohnirucse@yahoo.com.br|
			|Senha|12345|
	Quando faço o meu cadastro
	Então devo ver uma mensagem de alerta "Sua senha deve ter pelo menos 6 caracteres."