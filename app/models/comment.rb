class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :art

  validates :body, presence: true
end
