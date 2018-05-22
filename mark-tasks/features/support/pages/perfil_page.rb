
class PerfilPage < SitePrism::Page
    element :formulario, '#user-settings-profile-edit-form'
    element :input_empresa, 'input[name="profile.company"]'
    element :combo_cargo, 'select[name$=job]'
    element :salvar, '#form-submit-button'

    def atualiza(empresa, cargo)
        input_empresa.set empresa
        combo_cargo.find('option', text: cargo).select_option
        salvar.click
    end
end