class Bookclub < ApplicationRecord
  belongs_to :user, optional: true
  has_many :bookclub_users
  has_many :members, through: :bookclub_users, source: :user
  #:members, through: :bookclub_users, class_name: "User", foreign_key: "bookclub_id"
end
