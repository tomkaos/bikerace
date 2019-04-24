require 'test_helper'

class RidersControllerTest < ActionDispatch::IntegrationTest
  test "should get riders" do
    get riders_url
    assert_response :success
  end
end
