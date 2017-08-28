require 'test_helper'

class MatchControllerTest < ActionController::TestCase
  test "should get matching" do
    get :matching
    assert_response :success
  end

end
