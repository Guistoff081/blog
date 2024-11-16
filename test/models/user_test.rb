require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not save user without email" do
    user = User.new(password: "password")
    assert_not user.save, "Saved the user without an email"
  end

  test "should not save user without password" do
    user = User.new(email_address: "test@example.com")
    assert_not user.save, "Saved the user without a password"
  end

  test "should have a valid email format" do
    user = User.new(email_address: "invalid_email", password: "password")
    assert_not user.valid?, "User is valid with an invalid email format"
  end
end
