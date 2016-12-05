class AddUserToLiveArt < ActiveRecord::Migration[5.0]
  def change
    add_reference :live_arts, :user, foreign_key: true
  end
end
