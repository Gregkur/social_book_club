class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :bookclub_thread

  validates :content, presence: true
end
