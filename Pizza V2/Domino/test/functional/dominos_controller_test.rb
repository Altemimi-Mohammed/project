require 'test_helper'

class DominosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dominos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create domino" do
    assert_difference('Domino.count') do
      post :create, :domino => { }
    end

    assert_redirected_to domino_path(assigns(:domino))
  end

  test "should show domino" do
    get :show, :id => dominos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => dominos(:one).to_param
    assert_response :success
  end

  test "should update domino" do
    put :update, :id => dominos(:one).to_param, :domino => { }
    assert_redirected_to domino_path(assigns(:domino))
  end

  test "should destroy domino" do
    assert_difference('Domino.count', -1) do
      delete :destroy, :id => dominos(:one).to_param
    end

    assert_redirected_to dominos_path
  end
end
