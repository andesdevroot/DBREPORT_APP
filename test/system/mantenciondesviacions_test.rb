require "application_system_test_case"

class MantenciondesviacionsTest < ApplicationSystemTestCase
  setup do
    @mantenciondesviacion = mantenciondesviacions(:one)
  end

  test "visiting the index" do
    visit mantenciondesviacions_url
    assert_selector "h1", text: "Mantenciondesviacions"
  end

  test "creating a Mantenciondesviacion" do
    visit mantenciondesviacions_url
    click_on "New Mantenciondesviacion"

    fill_in "Afecta", with: @mantenciondesviacion.afecta
    fill_in "Area", with: @mantenciondesviacion.area_id
    fill_in "Equipos", with: @mantenciondesviacion.equipos_id
    fill_in "Fecha", with: @mantenciondesviacion.fecha
    fill_in "Hora inicio", with: @mantenciondesviacion.hora_inicio
    fill_in "Hora termino", with: @mantenciondesviacion.hora_termino
    fill_in "Sector", with: @mantenciondesviacion.sector_id
    fill_in "Tratamiento", with: @mantenciondesviacion.tratamiento
    click_on "Create Mantenciondesviacion"

    assert_text "Mantenciondesviacion was successfully created"
    click_on "Back"
  end

  test "updating a Mantenciondesviacion" do
    visit mantenciondesviacions_url
    click_on "Edit", match: :first

    fill_in "Afecta", with: @mantenciondesviacion.afecta
    fill_in "Area", with: @mantenciondesviacion.area_id
    fill_in "Equipos", with: @mantenciondesviacion.equipos_id
    fill_in "Fecha", with: @mantenciondesviacion.fecha
    fill_in "Hora inicio", with: @mantenciondesviacion.hora_inicio
    fill_in "Hora termino", with: @mantenciondesviacion.hora_termino
    fill_in "Sector", with: @mantenciondesviacion.sector_id
    fill_in "Tratamiento", with: @mantenciondesviacion.tratamiento
    click_on "Update Mantenciondesviacion"

    assert_text "Mantenciondesviacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Mantenciondesviacion" do
    visit mantenciondesviacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mantenciondesviacion was successfully destroyed"
  end
end
