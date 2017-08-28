require 'test_helper'

class ApplyControllerTest < ActionController::TestCase
  test "should get apply_create" do
    get :apply_create
    assert_response :success
  end

end
