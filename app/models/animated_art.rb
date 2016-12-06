class AnimatedArt < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :slides, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
end
