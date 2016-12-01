require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new
    @user.first_name = "jone"
    @user.last_name = "joe"
    @user.email = "jonejoe@gmail.com"
    @user.password = "password"
  end

  def test_valid_user
    assert @user.valid?
  end

  def test_invalid_first_name
    @user.first_name = nil
    refute @user.valid?
  end

  def test_invalid_last_name
    @user.last_name = nil
    refute @user.valid?
  end

  def test_invalid_email
    @user.email = nil
    refute @user.valid?
  end

  def test_invalid_password
    @user.password = nil
    refute @user.valid?
  end
end
