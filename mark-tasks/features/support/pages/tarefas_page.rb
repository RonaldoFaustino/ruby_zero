require_relative 'sections'

class Adicionar < SitePrism::Section
    element :input_titulo, 'input[name=title]'
    element :input_data, 'input[name=dueDate]'
    
    element :salvar, '#form-submit-button'

    def nova (titulo, data)
        input_titulo.set titulo
        input_data.set data
        salvar.click
    end    
end

class TarefasPage < SitePrism::Page
    section :nav, NavBar, '#navbar'

    section :adicionar, Adicionar, '#add-task-view'

    element :titulo, '.header-title'
    element :novo, '#insert-button'
end