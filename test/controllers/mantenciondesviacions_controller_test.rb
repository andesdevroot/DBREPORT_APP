require 'test_helper'

class MantenciondesviacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mantenciondesviacion = mantenciondesviacions(:one)
  end

  test "should get index" do
    get mantenciondesviacions_url
    assert_response :success
  end

  test "should get new" do
    get new_mantenciondesviacion_url
    assert_response :success
  end

  test "should create mantenciondesviacion" do
    assert_difference('Mantenciondesviacion.count') do
      post mantenciondesviacions_url, params: { mantenciondesviacion: { afecta: @mantenciondesviacion.afecta, area_id: @mantenciondesviacion.area_id, equipos_id: @mantenciondesviacion.equipos_id, fecha: @mantenciondesviacion.fecha, hora_inicio: @mantenciondesviacion.hora_inicio, hora_termino: @mantenciondesviacion.hora_termino, sector_id: @mantenciondesviacion.sector_id, tratamiento: @mantenciondesviacion.tratamiento } }
    end

    assert_redirected_to mantenciondesviacion_url(Mantenciondesviacion.last)
  end

  test "should show mantenciondesviacion" do
    get mantenciondesviacion_url(@mantenciondesviacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_mantenciondesviacion_url(@mantenciondesviacion)
    assert_response :success
  end

  test "should update mantenciondesviacion" do
    patch mantenciondesviacion_url(@mantenciondesviacion), params: { mantenciondesviacion: { afecta: @mantenciondesviacion.afecta, area_id: @mantenciondesviacion.area_id, equipos_id: @mantenciondesviacion.equipos_id, fecha: @mantenciondesviacion.fecha, hora_inicio: @mantenciondesviacion.hora_inicio, hora_termino: @mantenciondesviacion.hora_termino, sector_id: @mantenciondesviacion.sector_id, tratamiento: @mantenciondesviacion.tratamiento } }
    assert_redirected_to mantenciondesviacion_url(@mantenciondesviacion)
  end

  test "should destroy mantenciondesviacion" do
    assert_difference('Mantenciondesviacion.count', -1) do
      delete mantenciondesviacion_url(@mantenciondesviacion)
    end

    assert_redirected_to mantenciondesviacions_url
  end
end
