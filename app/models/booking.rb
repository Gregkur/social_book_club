class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :from, presence: true
  validates :until, presence: true
end
