
class NavBar < SitePrism::Page
 element :menu_usuario, 'a[href="/user_settings dropdown-toggle"]'
 element :meu_perfil, '#navbar a[href="/user_settings"]'
 element :sair, 'a[href="/logout"]'

end