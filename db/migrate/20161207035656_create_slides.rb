class CreateSlides < ActiveRecord::Migration[5.0]
  def change
    create_table :slides do |t|
      t.string :text
      t.references :animated_art, foreign_key: true

      t.timestamps
    end
  end
end
