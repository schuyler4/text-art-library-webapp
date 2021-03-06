class CreateArts < ActiveRecord::Migration[5.0]
  def change
    create_table :arts do |t|
      t.string :title
      t.text :text
      t.integer :rating
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
