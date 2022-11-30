require "test_helper"

class LoginAndCreateTodoTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  test "Login and create todo" do
    get user_session_path
    assert_response :success
    assert_select "input", value: "Log in"
    assert_nil session[:user]
    sign_in users(:dominik)
    assert_response :success
    get todos_path
    assert_select 'button', 'Sign out'

    assert_difference("Todo.count") do
      post todos_url, params: { todo: { description: "This is a test todo", is_done: true, name: "Test todo", tag: "testTag" } }
    end

    assert_redirected_to todo_url(Todo.last)
  end
end
