class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :book_rating, presence: true
end
