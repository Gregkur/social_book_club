class BookclubThread < ApplicationRecord
  belongs_to :user
  belongs_to :bookclub
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
end
