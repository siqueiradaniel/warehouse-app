require 'rails_helper'

describe 'Usuário abre a tela inicial' do
  it 'e vê o nome da app' do
    # Arrange

    # Act
    visit(root_path)

    # Assert
    expect(page).to have_content('Galpões & Estoque')
  end

  it 'e vê os galpões cadastrados' do
    # Assent
    Warehouse.create(name: 'Rio de Janeiro', code: 'RGU', city: 'Rio de Janeiro', area: '80000')
    Warehouse.create(name: 'Maceio', code: 'MGU', city: 'Maceio', area: '60000')

    # Act
    visit(root_path)

    # Assent
    expect(page).not_to have_content('Não existem galpões cadastrados')

    expect(page).to have_content('Rio de Janeiro')
    expect(page).to have_content('Código: RGU')
    expect(page).to have_content('Cidade: Rio de Janeiro')
    expect(page).to have_content('80000 m2')

    expect(page).to have_content('Maceio')
    expect(page).to have_content('Código: MGU')
    expect(page).to have_content('Cidade: Maceio')
    expect(page).to have_content('60000 m2')
  end

  it 'e não existem galpões cadastrados' do
    # Arrange

    # Act
    visit(root_path)

    # Assert
    expect(page).to have_content('Não existem galpões cadastrados')
  end
end
