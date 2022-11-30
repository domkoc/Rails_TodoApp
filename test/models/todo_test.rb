require "test_helper"

class TodoTest < ActiveSupport::TestCase
  test "Unable to save todo without name" do
    t = Todo.new
    assert !t.save, "Houston, we have a problem"
  end
end
