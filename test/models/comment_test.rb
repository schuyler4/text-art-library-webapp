require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    user = User.new(first_name: 'joe', last_name: 'bob', email:
     'joe@hotmail.com', password:'ihaveagoodpassword')
    art = Art.new(title: "Smile Face", text: ':)', rating: 0, user: user)

    @comment = Comment.new(user: user, body: "what do you think", art: art)
  end

  def test_valid_comment
    assert @comment.valid?
  end

  def test_invalid_user
    @comment.user = nil
    refute @comment.valid? "saved comment without user"
    assert_not_nil @comment.errors[:user], "no validation error for user present"
  end

  def test_invalid_body
    @comment.body = nil
    refute @comment.valid? "saved comment with out any text"
    assert_not_nil @comment.errors[:body], "no validation error for body present"
  end

  def test_invalid_art
    @comment.art = nil
    refute @comment.valid? "saved comment with out art"
    assert_not_nil @comment.errors[:art], "no validation error for art present"
  end
end
