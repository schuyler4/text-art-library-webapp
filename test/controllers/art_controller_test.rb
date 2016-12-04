require 'test_helper'

class ArtControllerTest < ActionDispatch::IntegrationTest
  def setup
    @art = arts(:one)
  end

  def teardown
    Rails.cache.clear
  end

  def test_show
    get art_url(@art)
    assert_response :success
  end

end
