require 'test_helper'

class MsGendersControllerTest < ActionController::TestCase
  setup do
    @ms_gender = ms_genders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ms_genders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ms_gender" do
    assert_difference('MsGender.count') do
      post :create, ms_gender: { is_active: @ms_gender.is_active, name: @ms_gender.name, user_id: @ms_gender.user_id }
    end

    assert_redirected_to ms_gender_path(assigns(:ms_gender))
  end

  test "should show ms_gender" do
    get :show, id: @ms_gender
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ms_gender
    assert_response :success
  end

  test "should update ms_gender" do
    patch :update, id: @ms_gender, ms_gender: { is_active: @ms_gender.is_active, name: @ms_gender.name, user_id: @ms_gender.user_id }
    assert_redirected_to ms_gender_path(assigns(:ms_gender))
  end

  test "should destroy ms_gender" do
    assert_difference('MsGender.count', -1) do
      delete :destroy, id: @ms_gender
    end

    assert_redirected_to ms_genders_path
  end
end
