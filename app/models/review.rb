class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :rating, presence: true
end
