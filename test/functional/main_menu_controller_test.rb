require 'test_helper'

class MainMenuControllerTest < ActionController::TestCase
  test "should get main_menu" do
    get :main_menu
    assert_response :success
  end

end
