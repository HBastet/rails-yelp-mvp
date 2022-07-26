class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { in: 0..5, allow_nil: false }, numericality: {only_integer: true}
  validates :restaurant_id, presence: true, allow_nil: false
end
