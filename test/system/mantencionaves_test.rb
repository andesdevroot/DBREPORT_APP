require "application_system_test_case"

class MantencionavesTest < ApplicationSystemTestCase
  setup do
    @mantencionafe = mantencionaves(:one)
  end

  test "visiting the index" do
    visit mantencionaves_url
    assert_selector "h1", text: "Mantencionaves"
  end

  test "creating a Mantencionave" do
    visit mantencionaves_url
    click_on "New Mantencionave"

    fill_in "Afecta", with: @mantencionafe.afecta
    fill_in "Area", with: @mantencionafe.area_id
    fill_in "Condicion", with: @mantencionafe.condicion
    fill_in "Equipo", with: @mantencionafe.equipo_id
    fill_in "Fecha", with: @mantencionafe.fecha
    fill_in "Hora", with: @mantencionafe.hora
    fill_in "Observacion", with: @mantencionafe.observacion
    fill_in "Sector", with: @mantencionafe.sector_id
    click_on "Create Mantencionave"

    assert_text "Mantencionave was successfully created"
    click_on "Back"
  end

  test "updating a Mantencionave" do
    visit mantencionaves_url
    click_on "Edit", match: :first

    fill_in "Afecta", with: @mantencionafe.afecta
    fill_in "Area", with: @mantencionafe.area_id
    fill_in "Condicion", with: @mantencionafe.condicion
    fill_in "Equipo", with: @mantencionafe.equipo_id
    fill_in "Fecha", with: @mantencionafe.fecha
    fill_in "Hora", with: @mantencionafe.hora
    fill_in "Observacion", with: @mantencionafe.observacion
    fill_in "Sector", with: @mantencionafe.sector_id
    click_on "Update Mantencionave"

    assert_text "Mantencionave was successfully updated"
    click_on "Back"
  end

  test "destroying a Mantencionave" do
    visit mantencionaves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mantencionave was successfully destroyed"
  end
end
