Dado("que eu tenho uma tarefa com os atributos:") do |table|
    @tarefas = table.rows_hash
    puts @tarefas
    @tarefas['titulo'] ="#{@tarefas['titulo']} #{Faker::Lorem.characters(10)}"
  end

  Dado("eu quero taguear esta tarefas com:") do |table|
    @tags = table.hashes

  end

  Dados("eu já cadastrei essa tarefa e não tinha percebido") do
    @tasks.botao_novo.click
    @tasks.adicionar.nova(@tarefas, @tags) 
  end
  
  Quando("faço o cadastro desta tarefa") do
    puts @tags
    @tasks.botao_novo.click
    @tasks.adicionar.nova(@tarefas, @tags)  
 
  end
  
  Então("devo ver este cadastrocom status {string}") do |status_tarefas|
    #expect(page).to have_content status_tarefas
    @tasks.wait_for_itens
    expect(@tasks.itens.first).to have_content status_tarefas

    @tasks.busca(@tarefas['titulo'])

  expect(@tasks.itens.size).to eql 1
  end

  Então("devo ver a mensagem {string} ao tentar fazer o cadastro.") do |mensagem|
   expect(@tasks.adicionar.mensagem.text).to eql mensagem
  end