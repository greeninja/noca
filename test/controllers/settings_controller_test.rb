require 'test_helper'

class SettingsControllerTest < ActionController::TestCase
  test "should get incident" do
    get :incident
    assert_response :success
  end

end
