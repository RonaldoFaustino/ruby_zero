Dado("que eu tenho uma tarefa com os atributos:") do |table|
    @tarefas = table.rows_hash
    puts @tarefas
  end
  
  Quando("faço o cadastro desta tarefa") do
    @tasks.adicionar.nova(@tarefa['titulo'], @tarefa['data'])
 
  end
  
  Então("devo ver este cadastrocom status {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end