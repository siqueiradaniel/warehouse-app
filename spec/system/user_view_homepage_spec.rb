require 'rails_helper'

describe 'Usuário abre a tela inicial' do 
  it 'e vê o nome da app' do 
    # Arrange 

    # Act 
    visit('/')

    # Assert 
    expect(page).to have_content('Galpões & Estoque')
  end
end