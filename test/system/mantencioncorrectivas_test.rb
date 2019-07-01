require "application_system_test_case"

class MantencioncorrectivasTest < ApplicationSystemTestCase
  setup do
    @mantencioncorrectiva = mantencioncorrectivas(:one)
  end

  test "visiting the index" do
    visit mantencioncorrectivas_url
    assert_selector "h1", text: "Mantencioncorrectivas"
  end

  test "creating a Mantencioncorrectiva" do
    visit mantencioncorrectivas_url
    click_on "New Mantencioncorrectiva"

    fill_in "Area", with: @mantencioncorrectiva.area_id
    fill_in "Equipo", with: @mantencioncorrectiva.equipo_id
    fill_in "Especialidad", with: @mantencioncorrectiva.especialidad
    fill_in "Fecha", with: @mantencioncorrectiva.fecha
    fill_in "Hora final", with: @mantencioncorrectiva.hora_final
    fill_in "Hora inicio", with: @mantencioncorrectiva.hora_inicio
    fill_in "Observacion", with: @mantencioncorrectiva.observacion
    fill_in "Sector", with: @mantencioncorrectiva.sector_id
    click_on "Create Mantencioncorrectiva"

    assert_text "Mantencioncorrectiva was successfully created"
    click_on "Back"
  end

  test "updating a Mantencioncorrectiva" do
    visit mantencioncorrectivas_url
    click_on "Edit", match: :first

    fill_in "Area", with: @mantencioncorrectiva.area_id
    fill_in "Equipo", with: @mantencioncorrectiva.equipo_id
    fill_in "Especialidad", with: @mantencioncorrectiva.especialidad
    fill_in "Fecha", with: @mantencioncorrectiva.fecha
    fill_in "Hora final", with: @mantencioncorrectiva.hora_final
    fill_in "Hora inicio", with: @mantencioncorrectiva.hora_inicio
    fill_in "Observacion", with: @mantencioncorrectiva.observacion
    fill_in "Sector", with: @mantencioncorrectiva.sector_id
    click_on "Update Mantencioncorrectiva"

    assert_text "Mantencioncorrectiva was successfully updated"
    click_on "Back"
  end

  test "destroying a Mantencioncorrectiva" do
    visit mantencioncorrectivas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mantencioncorrectiva was successfully destroyed"
  end
end
