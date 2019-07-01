require "application_system_test_case"

class OperecionesaverisTest < ApplicationSystemTestCase
  setup do
    @operecionesaveri = operecionesaveris(:one)
  end

  test "visiting the index" do
    visit operecionesaveris_url
    assert_selector "h1", text: "Operecionesaveris"
  end

  test "creating a Operecionesaveri" do
    visit operecionesaveris_url
    click_on "New Operecionesaveri"

    fill_in "Afecta", with: @operecionesaveri.afecta
    fill_in "Area", with: @operecionesaveri.area_id
    fill_in "Condicion", with: @operecionesaveri.condicion
    fill_in "Equipo", with: @operecionesaveri.equipo_id
    fill_in "Fecha", with: @operecionesaveri.fecha
    fill_in "Hora averia", with: @operecionesaveri.hora_averia
    fill_in "Observacion", with: @operecionesaveri.observacion
    fill_in "Sector", with: @operecionesaveri.sector_id
    click_on "Create Operecionesaveri"

    assert_text "Operecionesaveri was successfully created"
    click_on "Back"
  end

  test "updating a Operecionesaveri" do
    visit operecionesaveris_url
    click_on "Edit", match: :first

    fill_in "Afecta", with: @operecionesaveri.afecta
    fill_in "Area", with: @operecionesaveri.area_id
    fill_in "Condicion", with: @operecionesaveri.condicion
    fill_in "Equipo", with: @operecionesaveri.equipo_id
    fill_in "Fecha", with: @operecionesaveri.fecha
    fill_in "Hora averia", with: @operecionesaveri.hora_averia
    fill_in "Observacion", with: @operecionesaveri.observacion
    fill_in "Sector", with: @operecionesaveri.sector_id
    click_on "Update Operecionesaveri"

    assert_text "Operecionesaveri was successfully updated"
    click_on "Back"
  end

  test "destroying a Operecionesaveri" do
    visit operecionesaveris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Operecionesaveri was successfully destroyed"
  end
end
