require 'test_helper'

class DinamicasControllerTest < ActionController::TestCase
  setup do
    @dinamica = dinamicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dinamicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dinamica" do
    assert_difference('Dinamica.count') do
      post :create, dinamica: { material: @dinamica.material, objetivos: @dinamica.objetivos, participantes: @dinamica.participantes }
    end

    assert_redirected_to dinamica_path(assigns(:dinamica))
  end

  test "should show dinamica" do
    get :show, id: @dinamica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dinamica
    assert_response :success
  end

  test "should update dinamica" do
    put :update, id: @dinamica, dinamica: { material: @dinamica.material, objetivos: @dinamica.objetivos, participantes: @dinamica.participantes }
    assert_redirected_to dinamica_path(assigns(:dinamica))
  end

  test "should destroy dinamica" do
    assert_difference('Dinamica.count', -1) do
      delete :destroy, id: @dinamica
    end

    assert_redirected_to dinamicas_path
  end
end
