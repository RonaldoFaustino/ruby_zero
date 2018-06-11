require_relative 'sections'

class Adicionar < SitePrism::Section
    element :input_titulo, 'input[name=title]'
    element :input_data, 'input[name=dueDate]'
    element :input_tags, '.bootstrap-tagsinput input'
    element :salvar, '#form-submit-button'

    element :mensagem, '.alert-warn'
   
    def nova(tarefas, tags)
        input_titulo.set tarefas['titulo']
        input_data.set tarefas ['data']
        #input_tags.set
        tags.each do |tag|
            puts tag ['tag']
            input_tags.set tag ['tag']
            input_tags.send_keys :tab
        end

        salvar.click
    end
    
   
end

class TarefasPage < SitePrism::Page
    section :nav, NavBar, '#navbar'
    section :adicionar, Adicionar, '#add-task-view'

    
    element :titulo, '.header-title'
    element :botao_novo, '#insert-button'
    element :campo_busca, 'input[name=search]'
    element :botao_buscar, '#search-button'

    element :table_body, 'table tbody'
    elements :itens, 'table tbody tr'

    def busca(titulo)
        campo_busca.set titulo
        botao_buscar.click
    end
end