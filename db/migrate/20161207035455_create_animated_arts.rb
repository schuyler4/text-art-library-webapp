class CreateAnimatedArts < ActiveRecord::Migration[5.0]
  def change
    create_table :animated_arts do |t|
      t.string :title
      t.integer :rating

      t.timestamps
    end
  end
end
