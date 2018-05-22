require_relative 'sections'

class TarefasPage < SitePrism::Page
    section :nav, NavBar, '#navbar'
    
    element :titulo, '.header-title'
end