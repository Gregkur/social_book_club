class Bookclub < ApplicationRecord
  belongs_to :user
  belongs_to :thread_bookclub
end
