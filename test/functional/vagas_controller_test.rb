require 'test_helper'

class VagasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vagas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vaga" do
    assert_difference('Vaga.count') do
      post :create, :vaga => { }
    end

    assert_redirected_to vaga_path(assigns(:vaga))
  end

  test "should show vaga" do
    get :show, :id => vagas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vagas(:one).to_param
    assert_response :success
  end

  test "should update vaga" do
    put :update, :id => vagas(:one).to_param, :vaga => { }
    assert_redirected_to vaga_path(assigns(:vaga))
  end

  test "should destroy vaga" do
    assert_difference('Vaga.count', -1) do
      delete :destroy, :id => vagas(:one).to_param
    end

    assert_redirected_to vagas_path
  end
end
