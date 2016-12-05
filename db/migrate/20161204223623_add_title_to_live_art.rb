class AddTitleToLiveArt < ActiveRecord::Migration[5.0]
  def change
    add_column :live_arts, :title, :string
  end
end
