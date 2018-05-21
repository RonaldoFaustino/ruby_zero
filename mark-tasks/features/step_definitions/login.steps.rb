Quando("faço login com {string} e {string}") do |email, senha|
    visit "https://marktasks.herokuapp.com/login"

    find('input[placeholder="example@gmail.com"]').set email
    find('input[type="password"]').set senha
    find('button[id="btLogin"]').click
    sleep 5
  end
  
  Então("sou autenticado com sucesso") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("vejo as minhas tarefas") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("devo ver a mensagem {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end