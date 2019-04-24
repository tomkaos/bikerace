require 'test_helper'

class RidersControllerTest < ActionDispatch::IntegrationTest
  test "should get index"
    get riders_url
    assert_response :success
  end
end
