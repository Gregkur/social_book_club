class Bookclub < ApplicationRecord
  belongs_to :user
  belongs_to :thread_bookclub
  has_many :users, through: :bookclub_users
end
