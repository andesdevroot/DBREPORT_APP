require 'test_helper'

class OperadesviaprodusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operadesviaprodu = operadesviaprodus(:one)
  end

  test "should get index" do
    get operadesviaprodus_url
    assert_response :success
  end

  test "should get new" do
    get new_operadesviaprodu_url
    assert_response :success
  end

  test "should create operadesviaprodu" do
    assert_difference('Operadesviaprodu.count') do
      post operadesviaprodus_url, params: { operadesviaprodu: { afecta_parcial: @operadesviaprodu.afecta_parcial, area_id: @operadesviaprodu.area_id, equipo_id: @operadesviaprodu.equipo_id, fecha: @operadesviaprodu.fecha, hora_inicio: @operadesviaprodu.hora_inicio, hora_termino: @operadesviaprodu.hora_termino, sector_id: @operadesviaprodu.sector_id, total_proceso: @operadesviaprodu.total_proceso, tratamiento_promedio: @operadesviaprodu.tratamiento_promedio } }
    end

    assert_redirected_to operadesviaprodu_url(Operadesviaprodu.last)
  end

  test "should show operadesviaprodu" do
    get operadesviaprodu_url(@operadesviaprodu)
    assert_response :success
  end

  test "should get edit" do
    get edit_operadesviaprodu_url(@operadesviaprodu)
    assert_response :success
  end

  test "should update operadesviaprodu" do
    patch operadesviaprodu_url(@operadesviaprodu), params: { operadesviaprodu: { afecta_parcial: @operadesviaprodu.afecta_parcial, area_id: @operadesviaprodu.area_id, equipo_id: @operadesviaprodu.equipo_id, fecha: @operadesviaprodu.fecha, hora_inicio: @operadesviaprodu.hora_inicio, hora_termino: @operadesviaprodu.hora_termino, sector_id: @operadesviaprodu.sector_id, total_proceso: @operadesviaprodu.total_proceso, tratamiento_promedio: @operadesviaprodu.tratamiento_promedio } }
    assert_redirected_to operadesviaprodu_url(@operadesviaprodu)
  end

  test "should destroy operadesviaprodu" do
    assert_difference('Operadesviaprodu.count', -1) do
      delete operadesviaprodu_url(@operadesviaprodu)
    end

    assert_redirected_to operadesviaprodus_url
  end
end
