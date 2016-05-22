require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { first_name: "",
                               last_name: "  ",
                               email: "user@invalid",
                               birthday: "",
                               password: "wrong",
                               password_confirmation: "not right"}
    end
    assert_template 'users/new'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { first_name: "Test",
                                            last_name: "User",
                                            username: "TestUser",
                                            email: "user@valid.com",
                                            birthday: "01-01-2000",
                                            password: "password",
                                            password_confirmation: "password"}
    end
    assert_template 'users/show'
  end
end
