require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get criticality" do
    get static_pages_criticality_url
    assert_response :success
  end

  test "should get how_to" do
    get static_pages_how_to_url
    assert_response :success
  end
end
