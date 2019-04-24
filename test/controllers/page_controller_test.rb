require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_url
    assert_response :success
  end

  test "should get map" do
    get map_url
    assert_response :success
  end

  test "should get photos" do
    get photos_url
    assert_response :success
  end

end
