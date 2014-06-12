require 'test_helper'

class EndorseesControllerTest < ActionController::TestCase
  setup do
    @endorsee = endorsees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:endorsees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create endorsee" do
    assert_difference('Endorsee.count') do
      post :create, endorsee: { link: @endorsee.link }
    end

    assert_redirected_to endorsee_path(assigns(:endorsee))
  end

  test "should show endorsee" do
    get :show, id: @endorsee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @endorsee
    assert_response :success
  end

  test "should update endorsee" do
    patch :update, id: @endorsee, endorsee: { link: @endorsee.link }
    assert_redirected_to endorsee_path(assigns(:endorsee))
  end

  test "should destroy endorsee" do
    assert_difference('Endorsee.count', -1) do
      delete :destroy, id: @endorsee
    end

    assert_redirected_to endorsees_path
  end
end
