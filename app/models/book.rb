class Book < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many_attached :photos, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :title, presence: true, length: { minimum: 2, too_short: "minimum is %{count} characters" }
  validates :author, presence: true, length: { minimum: 2, too_short: "minimum is %{count} characters" }
  validates :genre, presence: true
  validates :description, presence: true, length: { minimum: 5, too_short: "minimum is %{count} characters" }
  validates :year, numericality: { only_integer: true, greater_than: 0 }
  # validates :pages, presence: true, numericality: { only_integer: true }
end
