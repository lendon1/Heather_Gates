require 'test_helper'

class AccessDevicesControllerTest < ActionController::TestCase
  setup do
    @access_device = access_devices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:access_devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create access_device" do
    assert_difference('AccessDevice.count') do
      post :create, access_device: { device_id: @access_device.device_id, device_manufacturer: @access_device.device_manufacturer, device_serial: @access_device.device_serial, device_type: @access_device.device_type }
    end

    assert_redirected_to access_device_path(assigns(:access_device))
  end

  test "should show access_device" do
    get :show, id: @access_device
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @access_device
    assert_response :success
  end

  test "should update access_device" do
    put :update, id: @access_device, access_device: { device_id: @access_device.device_id, device_manufacturer: @access_device.device_manufacturer, device_serial: @access_device.device_serial, device_type: @access_device.device_type }
    assert_redirected_to access_device_path(assigns(:access_device))
  end

  test "should destroy access_device" do
    assert_difference('AccessDevice.count', -1) do
      delete :destroy, id: @access_device
    end

    assert_redirected_to access_devices_path
  end
end
