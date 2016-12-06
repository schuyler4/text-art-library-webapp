class AddAnimatedArtToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :animated_art, foreign_key: true
  end
end
