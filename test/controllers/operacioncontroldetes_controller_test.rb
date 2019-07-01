require 'test_helper'

class OperacioncontroldetesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operacioncontroldete = operacioncontroldetes(:one)
  end

  test "should get index" do
    get operacioncontroldetes_url
    assert_response :success
  end

  test "should get new" do
    get new_operacioncontroldete_url
    assert_response :success
  end

  test "should create operacioncontroldete" do
    assert_difference('Operacioncontroldete.count') do
      post operacioncontroldetes_url, params: { operacioncontroldete: { area_id: @operacioncontroldete.area_id, equipo_id: @operacioncontroldete.equipo_id, especialidad: @operacioncontroldete.especialidad, fecha: @operacioncontroldete.fecha, hora_final: @operacioncontroldete.hora_final, hora_inicio: @operacioncontroldete.hora_inicio, observacion: @operacioncontroldete.observacion, sector_id: @operacioncontroldete.sector_id } }
    end

    assert_redirected_to operacioncontroldete_url(Operacioncontroldete.last)
  end

  test "should show operacioncontroldete" do
    get operacioncontroldete_url(@operacioncontroldete)
    assert_response :success
  end

  test "should get edit" do
    get edit_operacioncontroldete_url(@operacioncontroldete)
    assert_response :success
  end

  test "should update operacioncontroldete" do
    patch operacioncontroldete_url(@operacioncontroldete), params: { operacioncontroldete: { area_id: @operacioncontroldete.area_id, equipo_id: @operacioncontroldete.equipo_id, especialidad: @operacioncontroldete.especialidad, fecha: @operacioncontroldete.fecha, hora_final: @operacioncontroldete.hora_final, hora_inicio: @operacioncontroldete.hora_inicio, observacion: @operacioncontroldete.observacion, sector_id: @operacioncontroldete.sector_id } }
    assert_redirected_to operacioncontroldete_url(@operacioncontroldete)
  end

  test "should destroy operacioncontroldete" do
    assert_difference('Operacioncontroldete.count', -1) do
      delete operacioncontroldete_url(@operacioncontroldete)
    end

    assert_redirected_to operacioncontroldetes_url
  end
end
