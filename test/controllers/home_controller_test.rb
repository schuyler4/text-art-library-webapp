require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  def get_home
    get root_path
    assert_response :success
  end
end
