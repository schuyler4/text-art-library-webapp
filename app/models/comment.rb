class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :art
  belongs_to :live_art

  validates :body, presence: true
end
