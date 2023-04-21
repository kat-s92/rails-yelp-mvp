class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian) }
end


# class Review < ApplicationRecord
#   belongs_to :restaurant
#   validates :content, :rating, presence: true
#   validates :rating, numericality: { only_integer: true }
#   validates :rating, inclusion: { in: 0..5 }
# end
