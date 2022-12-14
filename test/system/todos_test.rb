require "application_system_test_case"

class TodosTest < ApplicationSystemTestCase
  setup do
    @todo = todos(:tesztiras)
    @user = users(:dominik)
  end

  test "visiting the index" do
    visit user_session_path

    fill_in "user_email", with: @user.email
    fill_in "user_password", with: "Jelszo"
    click_on "Log in"

    visit todos_url
    assert_selector "h1", text: "Todos"
  end

  test "should create todo" do
    visit user_session_path

    fill_in "user_email", with: @user.email
    fill_in "user_password", with: "Jelszo"
    click_on "Log in"

    visit todos_url
    click_on "New todo"

    fill_in "Description", with: @todo.description
    check "Is done" if @todo.is_done
    fill_in "Name", with: @todo.name
    fill_in "Tag", with: @todo.tag
    click_on "Create Todo"

    assert_text "Todo was successfully created"
    click_on "Back"
  end

  test "should update Todo" do
    visit user_session_path

    fill_in "user_email", with: @user.email
    fill_in "user_password", with: "Jelszo"
    click_on "Log in"

    visit todo_url(@todo)
    click_on "Edit this todo", match: :first

    fill_in "Description", with: @todo.description
    check "Is done" if @todo.is_done
    fill_in "Name", with: @todo.name
    fill_in "Tag", with: @todo.tag
    click_on "Update Todo"

    assert_text "Todo was successfully updated"
    click_on "Back"
  end

  test "should destroy Todo" do
    visit user_session_path

    fill_in "user_email", with: @user.email
    fill_in "user_password", with: "Jelszo"
    click_on "Log in"

    visit todo_url(@todo)
    click_on "Destroy this todo", match: :first

    assert_text "Todo was successfully destroyed"
  end
end
