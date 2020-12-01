class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :bookclub_thread

  validates :content, presence: true, length: { minimum: 2, too_short: "minimum is %{count} characters" }
end
