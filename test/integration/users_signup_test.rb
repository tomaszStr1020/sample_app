require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: {user: {name: "", email: "user@invalid.pl", password: "asddsa",
                                       password_confirmation: "asddsa"}}
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert'
    assert_select 'div.alert-danger'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: "Example user", email: "user@example.com",
                                         password: "passwords", password_confirmation: "passwords"}}
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash[:success].equal?("Welcome to the Sample App!")
    assert is_logged_in?
  end

end
