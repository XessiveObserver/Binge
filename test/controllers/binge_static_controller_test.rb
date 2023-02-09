require "test_helper"

class BingeStaticControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get binge_static_index_url
    assert_response :success
  end

  test "should get about" do
    get binge_static_about_url
    assert_response :success
  end

  test "should get contact" do
    get binge_static_contact_url
    assert_response :success
  end
end
