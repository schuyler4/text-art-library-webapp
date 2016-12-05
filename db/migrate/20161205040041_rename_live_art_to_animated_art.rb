class RenameLiveArtToAnimatedArt < ActiveRecord::Migration[5.0]
  def change
    rename_table :live_arts, :animated_art
  end
end
