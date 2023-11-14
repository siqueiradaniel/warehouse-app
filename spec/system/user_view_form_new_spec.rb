require 'rails_helper'

describe 'Usuário vê formulário de cadastro de galpão' do 
    it 'a partir da tela inicial' do
        # Act
        visit(root_path)
        click_on 'Cadastrar galpão'

        # Assent
        expect(current_path).to eq(new_warehouse_path)
        expect(page).to have_field('Nome')
        expect(page).to have_field('Código')
        expect(page).to have_field('Cidade')
        expect(page).to have_field('Área')
        expect(page).to have_field('Endereço')
        expect(page).to have_field('CEP')
        expect(page).to have_field('Descrição')
    end

    it 'e cadastra um galpão' do 
        # Arrange

        # Act 
        visit root_path 
        click_on 'Cadastrar galpão'
        fill_in 'Nome', with: 'Rio de Janeiro'
        fill_in 'Código', with: 'RIO'
        fill_in 'Cidade', with: 'Rio de Janeiro'
        fill_in 'Área', with: '32000'
        fill_in 'Endereço', with: 'Avenida do Museu do Amanhã, 1000'
        fill_in 'CEP', with: '20100-000'
        fill_in 'Descrição', with: 'Galpão da zona portuária'
        click_on 'Salvar'

        # Assent
        expect(current_path).to eq(root_path)
        expect(page).to have_content('Rio de Janeiro')
        expect(page).to have_content('RIO')
        expect(page).to have_content('32000')
    end
end