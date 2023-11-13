require 'rails_helper'

describe 'Usuário vê formulário de cadastro de galpão' do 
    it 'e cadastra um galpão' do 
        # Arrange

        # Act 
        visit root_path 
        click_on 'Cadastrar galpão'

        # Assent
        expect(current_path).to eq(new_warehouse_path)
    end
end