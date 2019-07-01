require "application_system_test_case"

class OperacioncontroldetesTest < ApplicationSystemTestCase
  setup do
    @operacioncontroldete = operacioncontroldetes(:one)
  end

  test "visiting the index" do
    visit operacioncontroldetes_url
    assert_selector "h1", text: "Operacioncontroldetes"
  end

  test "creating a Operacioncontroldete" do
    visit operacioncontroldetes_url
    click_on "New Operacioncontroldete"

    fill_in "Area", with: @operacioncontroldete.area_id
    fill_in "Equipo", with: @operacioncontroldete.equipo_id
    fill_in "Especialidad", with: @operacioncontroldete.especialidad
    fill_in "Fecha", with: @operacioncontroldete.fecha
    fill_in "Hora final", with: @operacioncontroldete.hora_final
    fill_in "Hora inicio", with: @operacioncontroldete.hora_inicio
    fill_in "Observacion", with: @operacioncontroldete.observacion
    fill_in "Sector", with: @operacioncontroldete.sector_id
    click_on "Create Operacioncontroldete"

    assert_text "Operacioncontroldete was successfully created"
    click_on "Back"
  end

  test "updating a Operacioncontroldete" do
    visit operacioncontroldetes_url
    click_on "Edit", match: :first

    fill_in "Area", with: @operacioncontroldete.area_id
    fill_in "Equipo", with: @operacioncontroldete.equipo_id
    fill_in "Especialidad", with: @operacioncontroldete.especialidad
    fill_in "Fecha", with: @operacioncontroldete.fecha
    fill_in "Hora final", with: @operacioncontroldete.hora_final
    fill_in "Hora inicio", with: @operacioncontroldete.hora_inicio
    fill_in "Observacion", with: @operacioncontroldete.observacion
    fill_in "Sector", with: @operacioncontroldete.sector_id
    click_on "Update Operacioncontroldete"

    assert_text "Operacioncontroldete was successfully updated"
    click_on "Back"
  end

  test "destroying a Operacioncontroldete" do
    visit operacioncontroldetes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Operacioncontroldete was successfully destroyed"
  end
end
