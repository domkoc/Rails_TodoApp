require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get login" do
    get user_session_path
    assert_response :success
  end

  test "load login page" do
    get user_session_path
    assert_response :success
    assert_select "input", value: "Log in"
    assert_nil session[:user]
  end

  test "login" do
    get user_session_path
    assert_response :success
    assert_select "input", value: "Log in"
    assert_nil session[:user]
    sign_in users(:dominik)
    assert_response :success
    get todos_path
    assert_select 'button', 'Sign out'
  end
end
