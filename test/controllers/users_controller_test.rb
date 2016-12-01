require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def test_get_signup
    get signup_path
    assert_response :success
  end

  def test_get_login
    get login_path
    assert_response :success
  end

  def test_post_signup
    @params = {post: {first_name: "janet",
      last_name: "",
      email: "jr@email.com",
      password: ""}}
    post user_create_path, params: @params
    assert_response :success
  end

end
