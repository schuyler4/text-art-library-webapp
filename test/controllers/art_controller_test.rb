require 'test_helper'

class ArtControllerTest < ActionDispatch::IntegrationTest

  def get_index
    get art_index_url
    assert_response :success
    assert_equal Art.all, assigns(:products)
  end

  def get_new
    get art_new_url
    assert_response :success
  end

  def post_create
    post art_create_url, params: {title: 'Smile Face', text: ':)', rating: 0}
    assert_response :success
  end

  def get_show
    get art_show_url, params: {id: 1}
    assert_response :success
  end

end
