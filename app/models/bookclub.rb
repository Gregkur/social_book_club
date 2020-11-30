class Bookclub < ApplicationRecord
  belongs_to :user, optional: true
  has_many :bookclub_users
  has_many :members, through: :bookclub_users, source: :user
  has_many_attached :photos, dependent: :destroy
  has_many :bookclub_threads, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { minimum: 2, too_short: "minimum is %{count} characters" }
  validates :description, presence: true, length: { minimum: 5, too_short: "minimum is %{count} characters" }
  
  include PgSearch::Model
  pg_search_scope :search,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
