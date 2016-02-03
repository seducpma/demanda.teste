require 'test_helper'

class ObservacaoCriancasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:observacao_criancas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create observacao_crianca" do
    assert_difference('ObservacaoCrianca.count') do
      post :create, :observacao_crianca => { }
    end

    assert_redirected_to observacao_crianca_path(assigns(:observacao_crianca))
  end

  test "should show observacao_crianca" do
    get :show, :id => observacao_criancas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => observacao_criancas(:one).to_param
    assert_response :success
  end

  test "should update observacao_crianca" do
    put :update, :id => observacao_criancas(:one).to_param, :observacao_crianca => { }
    assert_redirected_to observacao_crianca_path(assigns(:observacao_crianca))
  end

  test "should destroy observacao_crianca" do
    assert_difference('ObservacaoCrianca.count', -1) do
      delete :destroy, :id => observacao_criancas(:one).to_param
    end

    assert_redirected_to observacao_criancas_path
  end
end
