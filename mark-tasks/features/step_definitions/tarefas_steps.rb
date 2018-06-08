Dado("que eu tenho uma tarefa com os atributos:") do |table|
    @tarefas = table.rows_hash
    puts @tarefas
    @tarefas['titulo'] ="#{@tarefas['titulo']} #{Faker::Lorem.characters(10)}"
  end

  Dado("eu quero taguear esta tarefas com:") do |table|
    @tags = table.hashes

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
  end