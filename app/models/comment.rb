class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :bookclub_thread
end
