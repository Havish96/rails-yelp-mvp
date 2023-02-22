class Review < ApplicationRecord
  validates :rating, presence: true, inclusion: { in: 0..5, message: 'should be between 0 to 5' }
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true

  belongs_to :restaurant
end
