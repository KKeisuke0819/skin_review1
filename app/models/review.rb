class Review < ApplicationRecord
  belongs_to :user
  belongs_to :skin_item
  validates :score, presence: true
end
