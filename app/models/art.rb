class Art < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :text, presence: true
  validates :rating, presence: true
end
