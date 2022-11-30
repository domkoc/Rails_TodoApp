require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "Unable to save user without email" do
    u = User.new
    u.encrypted_password = Devise::Encryptor.digest(User, 'Jelszo')
    assert !u.save, "Houston, we have a problem"
  end

  test "Unable to save user without password" do
    u = User.new
    u.email = "valami@email.hu"
    assert !u.save, "Houston, we have a problem"
  end
end
