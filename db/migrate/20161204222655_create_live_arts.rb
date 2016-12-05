class CreateLiveArts < ActiveRecord::Migration[5.0]
  def change
    create_table :live_arts do |t|

      t.timestamps
    end
  end
end
