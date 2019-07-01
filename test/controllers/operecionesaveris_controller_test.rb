require 'test_helper'

class OperecionesaverisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operecionesaveri = operecionesaveris(:one)
  end

  test "should get index" do
    get operecionesaveris_url
    assert_response :success
  end

  test "should get new" do
    get new_operecionesaveri_url
    assert_response :success
  end

  test "should create operecionesaveri" do
    assert_difference('Operecionesaveri.count') do
      post operecionesaveris_url, params: { operecionesaveri: { afecta: @operecionesaveri.afecta, area_id: @operecionesaveri.area_id, condicion: @operecionesaveri.condicion, equipo_id: @operecionesaveri.equipo_id, fecha: @operecionesaveri.fecha, hora_averia: @operecionesaveri.hora_averia, observacion: @operecionesaveri.observacion, sector_id: @operecionesaveri.sector_id } }
    end

    assert_redirected_to operecionesaveri_url(Operecionesaveri.last)
  end

  test "should show operecionesaveri" do
    get operecionesaveri_url(@operecionesaveri)
    assert_response :success
  end

  test "should get edit" do
    get edit_operecionesaveri_url(@operecionesaveri)
    assert_response :success
  end

  test "should update operecionesaveri" do
    patch operecionesaveri_url(@operecionesaveri), params: { operecionesaveri: { afecta: @operecionesaveri.afecta, area_id: @operecionesaveri.area_id, condicion: @operecionesaveri.condicion, equipo_id: @operecionesaveri.equipo_id, fecha: @operecionesaveri.fecha, hora_averia: @operecionesaveri.hora_averia, observacion: @operecionesaveri.observacion, sector_id: @operecionesaveri.sector_id } }
    assert_redirected_to operecionesaveri_url(@operecionesaveri)
  end

  test "should destroy operecionesaveri" do
    assert_difference('Operecionesaveri.count', -1) do
      delete operecionesaveri_url(@operecionesaveri)
    end

    assert_redirected_to operecionesaveris_url
  end
end
