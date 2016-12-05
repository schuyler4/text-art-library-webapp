class Slide < ApplicationRecord
  belongs_to :live_art

  validates :text, presence: true
end
