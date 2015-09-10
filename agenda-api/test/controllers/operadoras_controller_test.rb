require 'test_helper'

class OperadorasControllerTest < ActionController::TestCase
  setup do
    @operadora = operadoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operadoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operadora" do
    assert_difference('Operadora.count') do
      post :create, operadora: { categoria: @operadora.categoria, codigo: @operadora.codigo, nome: @operadora.nome, preco: @operadora.preco }
    end

    assert_redirected_to operadora_path(assigns(:operadora))
  end

  test "should show operadora" do
    get :show, id: @operadora
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operadora
    assert_response :success
  end

  test "should update operadora" do
    patch :update, id: @operadora, operadora: { categoria: @operadora.categoria, codigo: @operadora.codigo, nome: @operadora.nome, preco: @operadora.preco }
    assert_redirected_to operadora_path(assigns(:operadora))
  end

  test "should destroy operadora" do
    assert_difference('Operadora.count', -1) do
      delete :destroy, id: @operadora
    end

    assert_redirected_to operadoras_path
  end
end
