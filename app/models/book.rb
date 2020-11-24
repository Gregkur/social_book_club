class Book < ApplicationRecord
  belongs_to :user
  has_many_attached :photos, dependent: :destroy
end
