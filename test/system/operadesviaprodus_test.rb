require "application_system_test_case"

class OperadesviaprodusTest < ApplicationSystemTestCase
  setup do
    @operadesviaprodu = operadesviaprodus(:one)
  end

  test "visiting the index" do
    visit operadesviaprodus_url
    assert_selector "h1", text: "Operadesviaprodus"
  end

  test "creating a Operadesviaprodu" do
    visit operadesviaprodus_url
    click_on "New Operadesviaprodu"

    fill_in "Afecta parcial", with: @operadesviaprodu.afecta_parcial
    fill_in "Area", with: @operadesviaprodu.area_id
    fill_in "Equipo", with: @operadesviaprodu.equipo_id
    fill_in "Fecha", with: @operadesviaprodu.fecha
    fill_in "Hora inicio", with: @operadesviaprodu.hora_inicio
    fill_in "Hora termino", with: @operadesviaprodu.hora_termino
    fill_in "Sector", with: @operadesviaprodu.sector_id
    fill_in "Total proceso", with: @operadesviaprodu.total_proceso
    fill_in "Tratamiento promedio", with: @operadesviaprodu.tratamiento_promedio
    click_on "Create Operadesviaprodu"

    assert_text "Operadesviaprodu was successfully created"
    click_on "Back"
  end

  test "updating a Operadesviaprodu" do
    visit operadesviaprodus_url
    click_on "Edit", match: :first

    fill_in "Afecta parcial", with: @operadesviaprodu.afecta_parcial
    fill_in "Area", with: @operadesviaprodu.area_id
    fill_in "Equipo", with: @operadesviaprodu.equipo_id
    fill_in "Fecha", with: @operadesviaprodu.fecha
    fill_in "Hora inicio", with: @operadesviaprodu.hora_inicio
    fill_in "Hora termino", with: @operadesviaprodu.hora_termino
    fill_in "Sector", with: @operadesviaprodu.sector_id
    fill_in "Total proceso", with: @operadesviaprodu.total_proceso
    fill_in "Tratamiento promedio", with: @operadesviaprodu.tratamiento_promedio
    click_on "Update Operadesviaprodu"

    assert_text "Operadesviaprodu was successfully updated"
    click_on "Back"
  end

  test "destroying a Operadesviaprodu" do
    visit operadesviaprodus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Operadesviaprodu was successfully destroyed"
  end
end
