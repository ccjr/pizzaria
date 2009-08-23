require 'test_helper'

class PizzasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pizzas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pizza" do
    assert_difference('Pizza.count') do
      post :create, :pizza => { }
    end

    assert_redirected_to pizza_path(assigns(:pizza))
  end

  test "should show pizza" do
    get :show, :id => pizzas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pizzas(:one).to_param
    assert_response :success
  end

  test "should update pizza" do
    put :update, :id => pizzas(:one).to_param, :pizza => { }
    assert_redirected_to pizza_path(assigns(:pizza))
  end

  test "should destroy pizza" do
    assert_difference('Pizza.count', -1) do
      delete :destroy, :id => pizzas(:one).to_param
    end

    assert_redirected_to pizzas_path
  end
end
