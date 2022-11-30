require "test_helper"

class TodosControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @todo = todos(:tesztiras)
    sign_in users(:dominik)
  end

  test "should create todo" do
    assert_difference("Todo.count") do
      post todos_url, params: { todo: { description: @todo.description, is_done: @todo.is_done, name: @todo.name, tag: @todo.tag } }
    end

    assert_redirected_to todo_url(Todo.last)
  end

  test "should get index" do
    get todos_path
    assert_response :success
  end

  test "should get new" do
    get new_todo_path
    assert_response :success
  end

  test "should show todo" do
    get todo_url(@todo)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo_url(@todo)
    assert_response :success
  end

  test "should update todo" do
    patch todo_url(@todo), params: { todo: { description: @todo.description, is_done: @todo.is_done, name: @todo.name, tag: @todo.tag } }
    assert_redirected_to todo_url(@todo)
  end

  test "should destroy todo" do
    assert_difference("Todo.count", -1) do
      delete todo_url(@todo)
    end

    assert_redirected_to todos_url
  end
end
