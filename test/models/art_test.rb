require 'test_helper'

class ArtTest < ActiveSupport::TestCase

  def setup
    user = User.new(first_name: 'joe', last_name: 'bob', email:
     'joe@hotmail.com', password:'ihaveagoodpassword')
    @art = Art.new(title: 'Smile Face', text: ':)', rating: 0, user: user)
  end

  def test_valid_art
    assert @art.valid?
  end

  def test_invalid_title
    @art.title = nil
    refute @art.valid? "saved art without title"
    assert_not_nil @art.errors[:title], "no validation error for title present"
  end

  def test_invalid_text
    @art.text = nil
    refute @art.valid? "saved art without text"
    assert_not_nil @art.errors[:text], "no validation error for text present"
  end

  def test_invalid_rating
    @art.rating = nil
    refute @art.valid? "saved art without rating"
    assert_not_nil @art.errors[:rating], "no validation error for reating present"
  end

  def test_invalid_user
    @art.user = nil
    refute @art.valid? "saved art without rating"
    assert_not_nil @art.errors[:user], "no validation error for reating present"
  end
end
