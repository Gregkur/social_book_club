class BookclubThread < ApplicationRecord
  belongs_to :user
  belongs_to :bookclub

  validates :title, presence: true, length: { minimum: 2, too_short: "minimum is %{count} characters" }
  validates :content, presence: true, length: { minimum: 5, too_short: "minimum is %{count} characters" }
end