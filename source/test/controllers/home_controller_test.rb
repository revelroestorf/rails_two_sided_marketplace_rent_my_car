require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_home_url
    assert_response :success
  end

  test "should get how_it_works" do
    get home_how_it_works_url
    assert_response :success
  end

  test "should get pricing" do
    get home_pricing_url
    assert_response :success
  end

end
