require 'test_helper'

class ArtTest < ActiveSupport::TestCase

  def setup
    @art = Art.new(title: 'Smile Face', text: ':)', rating: 0)
  end

  def test_valid_art
    assert @art.valid?
  end

  test "invalid without title" do
    @art.title = nil
    refute @art.valid? "saved user without title"
    assert_not_nil @art.errors[:title], "no validation error for title present"
  end

  test "invalid without text" do
    @art.text = nil
    refute @art.valid? "saved user without text"
    assert_not_nil @art.errors[:text], "no validation error for text present"
  end

  test "invalid without rating" do
    @art.rating = nil
    refute @art.valid? "saved user without rating"
    assert_not_nil @art.errors[:rating], "no validation error for reating present"
  end

end
