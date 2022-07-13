require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Example User", email: "user@example.com", password: "foobar", password_digest: "foobar")
  end

  test "should be valid" do
    assert @user.valid?
  end
  test "email addresses should be saved as lower-case" do
    mixed_case_email = "user@example.com"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end

end
