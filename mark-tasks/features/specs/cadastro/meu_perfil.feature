#language:pt

Funcionalidade: Meu Perfil
    Para que eu possa  ter meus dados atualizados 
    Sendo um usuário
    Posso completar o meu cadastro

    @perfil @logout
    Esquema do Cenário: Atualizar Perfil
    
    Dado que estou autenticado com "ohnirucse@msn.com" e "123456"
    E acesso meu Perfil
    Quando completo meu cadastro com "<empresa>" e "<cargo>"
    Então vejo a mensagem "Perfil atualizado com sucesso."

    Exemplos:
      | empresa   | cargo      |
      | Qa NInja  | Developer  |
      | Dotz      | QA         |
      | Spread    | CTO        |
      | Google    | Estagiario |
      | Microsoft | CEO        |


