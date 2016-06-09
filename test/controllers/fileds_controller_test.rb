require 'test_helper'

class FiledsControllerTest < ActionController::TestCase
  setup do
    @filed = fileds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fileds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filed" do
    assert_difference('Filed.count') do
      post :create, filed: { Company: @filed.Company, Service: @filed.Service, address: @filed.address, phone: @filed.phone, website: @filed.website }
    end

    assert_redirected_to filed_path(assigns(:filed))
  end

  test "should show filed" do
    get :show, id: @filed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filed
    assert_response :success
  end

  test "should update filed" do
    patch :update, id: @filed, filed: { Company: @filed.Company, Service: @filed.Service, address: @filed.address, phone: @filed.phone, website: @filed.website }
    assert_redirected_to filed_path(assigns(:filed))
  end

  test "should destroy filed" do
    assert_difference('Filed.count', -1) do
      delete :destroy, id: @filed
    end

    assert_redirected_to fileds_path
  end
end
