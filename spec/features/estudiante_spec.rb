require 'rails_helper'

RSpec.feature "Estudiante want to create a new estudiante successfully", type: :feature do
  scenario "Crear un nuevo estudiante" do
    visit new_estudiante_path

    fill_in "Nombres", with: "Pedro"
    fill_in "Apellidos", with: "Pérez"
    fill_in "Carrera", with: "Ingeniería en Sistemas"
    fill_in "Carnet", with: "20250001"
    
    click_button "Create Estudiante"

    expect(page).to have_text("Estudiante was successfully created")
  end
end

RSpec.feature "Estudiante want to see all estudiantes created" do
  scenario "Estudiante is on index page" do
    visit new_estudiante_path
    click_link "Back"
    expect(page).to have_content("Estudiantes")
  end
end
