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

  # Remover

  Dado("que eu tenho uma tarefa cadastrada") do 
    @tarefa_para_remover = {
      'titulo' => "Tarefa muito legal para remover - #{Faker::Lorem.characters(10)}",
      'data' => '01/06/2018'
    }
    @tags =[]

    @tasks.botao_novo.click
    @tasks.adicionar.nova(@tarefa_para_remover, @tags) 
  end
  
  Quando("eu solicito a exclusão dessa tarefa") do
    @tasks.wait_for_itens
    @tasks.apaga_por_titulo(@tarefa_para_remover['titulo'])
    sleep 1 #simula usuario pensando a exclusão pelo modal
  end
  
  Quando("confirmo a solicitaçao") do
    @tasks.confirmar_modal.click
  end
  
  Quando("cancelo a solicitação") do
    @tasks.cancela_modal.click
  end

  Então("esta tarefa não deve ser  exibida na lista") do
    
    #validando através da busca
    #@tasks.busca(@tarefa_para_remover['titulo'])
    #expect(@tasks.conteudo_pagina).to have_content 'Hmm... nenhuma tarefa encontrada :('
  
    #validando quando a busca está com bug
    @tasks.wait_for_itens
    expect(@tasks.itens).not_to have_content @tarefa_para_remover['titulo']
    
  end

  Então("esta tarefa permanece cadastrada na lista") do
    @tasks.busca(@tarefa_para_remover['titulo'])
    expect(@tasks.itens.first).to have_content @tarefa_para_remover['titulo']
  end