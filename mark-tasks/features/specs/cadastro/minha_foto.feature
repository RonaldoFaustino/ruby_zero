#language: pt

Funcionalidade: Minha foto
    Para que meu perfil fique muito bonito
    Sendo um usuário cadastrado
    Posso fazer upload da minha foto

    @auth @foto @logout
    Cenário: Carregar minha foto

        Dado que eu tenho uma foto muito bonita
        E acesso meu Perfil
        Quando faço o upload da mina foto
        Então devo ver a mensagem de upload com o texto "Agora seu perfil está bem legal."



