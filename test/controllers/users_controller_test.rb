require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = {user: {
      first_name: 'Tod',
      last_name: 'Rod',
      email: 'Tod@poopmail.com',
      password: '##$$##$$$##$$'}}
  end

  def test_signup
    get signup_path
    assert_response :success
  end

  def test_create
    post users_path, params: @user
    assert_redirected_to root_path
  end

  def test_show
    art = arts(:one)
    get user_path(art)
    assert_response :success
  end
end
