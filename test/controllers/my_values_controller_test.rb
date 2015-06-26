require 'test_helper'

class MyValuesControllerTest < ActionController::TestCase
  test "should get value" do
    get :value
    assert_response :success
  end

end
