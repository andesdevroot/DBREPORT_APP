require 'test_helper'

class MantencioncorrectivasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mantencioncorrectiva = mantencioncorrectivas(:one)
  end

  test "should get index" do
    get mantencioncorrectivas_url
    assert_response :success
  end

  test "should get new" do
    get new_mantencioncorrectiva_url
    assert_response :success
  end

  test "should create mantencioncorrectiva" do
    assert_difference('Mantencioncorrectiva.count') do
      post mantencioncorrectivas_url, params: { mantencioncorrectiva: { area_id: @mantencioncorrectiva.area_id, equipo_id: @mantencioncorrectiva.equipo_id, especialidad: @mantencioncorrectiva.especialidad, fecha: @mantencioncorrectiva.fecha, hora_final: @mantencioncorrectiva.hora_final, hora_inicio: @mantencioncorrectiva.hora_inicio, observacion: @mantencioncorrectiva.observacion, sector_id: @mantencioncorrectiva.sector_id } }
    end

    assert_redirected_to mantencioncorrectiva_url(Mantencioncorrectiva.last)
  end

  test "should show mantencioncorrectiva" do
    get mantencioncorrectiva_url(@mantencioncorrectiva)
    assert_response :success
  end

  test "should get edit" do
    get edit_mantencioncorrectiva_url(@mantencioncorrectiva)
    assert_response :success
  end

  test "should update mantencioncorrectiva" do
    patch mantencioncorrectiva_url(@mantencioncorrectiva), params: { mantencioncorrectiva: { area_id: @mantencioncorrectiva.area_id, equipo_id: @mantencioncorrectiva.equipo_id, especialidad: @mantencioncorrectiva.especialidad, fecha: @mantencioncorrectiva.fecha, hora_final: @mantencioncorrectiva.hora_final, hora_inicio: @mantencioncorrectiva.hora_inicio, observacion: @mantencioncorrectiva.observacion, sector_id: @mantencioncorrectiva.sector_id } }
    assert_redirected_to mantencioncorrectiva_url(@mantencioncorrectiva)
  end

  test "should destroy mantencioncorrectiva" do
    assert_difference('Mantencioncorrectiva.count', -1) do
      delete mantencioncorrectiva_url(@mantencioncorrectiva)
    end

    assert_redirected_to mantencioncorrectivas_url
  end
end
