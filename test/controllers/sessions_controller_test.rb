require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = {user: {
      first_name: 'Tod',
      last_name: 'Rod',
      email: 'Tod@poopmail.com',
      password: '##$$##$$$##$$'}}
  end

  def test_login
    get login_path
    assert_response :success
  end

  def test_create
    post sessions_path, params: @user
    assert_redirected_to root_path
  end
end
