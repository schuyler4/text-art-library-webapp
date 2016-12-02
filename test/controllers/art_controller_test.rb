require 'test_helper'

class ArtControllerTest < ActionDispatch::IntegrationTest

  def test_get_index
    get art_index_path
    assert_response :success
  end

  def test_get_new
    get art_new_path
    assert_response :success
  end

#  def test_post_create
#    post create_art_path, params: {title: 'Smile Face', text: ':)', rating: 0}
#  end

#  def test_get_show
#    get create_art_path, params: {id: 1}
#  end

end
