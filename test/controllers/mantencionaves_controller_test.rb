require 'test_helper'

class MantencionavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mantencionafe = mantencionaves(:one)
  end

  test "should get index" do
    get mantencionaves_url
    assert_response :success
  end

  test "should get new" do
    get new_mantencionafe_url
    assert_response :success
  end

  test "should create mantencionafe" do
    assert_difference('Mantencionave.count') do
      post mantencionaves_url, params: { mantencionafe: { afecta: @mantencionafe.afecta, area_id: @mantencionafe.area_id, condicion: @mantencionafe.condicion, equipo_id: @mantencionafe.equipo_id, fecha: @mantencionafe.fecha, hora: @mantencionafe.hora, observacion: @mantencionafe.observacion, sector_id: @mantencionafe.sector_id } }
    end

    assert_redirected_to mantencionafe_url(Mantencionave.last)
  end

  test "should show mantencionafe" do
    get mantencionafe_url(@mantencionafe)
    assert_response :success
  end

  test "should get edit" do
    get edit_mantencionafe_url(@mantencionafe)
    assert_response :success
  end

  test "should update mantencionafe" do
    patch mantencionafe_url(@mantencionafe), params: { mantencionafe: { afecta: @mantencionafe.afecta, area_id: @mantencionafe.area_id, condicion: @mantencionafe.condicion, equipo_id: @mantencionafe.equipo_id, fecha: @mantencionafe.fecha, hora: @mantencionafe.hora, observacion: @mantencionafe.observacion, sector_id: @mantencionafe.sector_id } }
    assert_redirected_to mantencionafe_url(@mantencionafe)
  end

  test "should destroy mantencionafe" do
    assert_difference('Mantencionave.count', -1) do
      delete mantencionafe_url(@mantencionafe)
    end

    assert_redirected_to mantencionaves_url
  end
end
