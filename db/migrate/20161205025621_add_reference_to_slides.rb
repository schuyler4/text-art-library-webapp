class AddReferenceToSlides < ActiveRecord::Migration[5.0]
  def change
    add_reference :slides, :live_art, foreign_key: true
  end
end
