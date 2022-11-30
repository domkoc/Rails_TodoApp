require "test_helper"

class TagTest < ActiveSupport::TestCase
  test "Unable to save tag without name" do
    t = Tag.new
    assert !t.save, "Houston, we have a problem"
  end
end
