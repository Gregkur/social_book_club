class Bookclub < ApplicationRecord
  belongs_to :user, optional: true
  has_many :bookclub_users
  has_many :members, through: :bookclub_users, source: :user

  validates :name, presence: true, uniqueness: true, length: { minimum: 2, too_short: "minimum is %{count} characters" }
  validates :description, presence: true, length: { minimum: 5, too_short: "minimum is %{count} characters" }
end
