class Art < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  validates :rating, presence: true
end
