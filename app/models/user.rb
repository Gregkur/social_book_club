class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookclubs
  has_many :books
  has_one_attached :photo, dependent: :destroy
  has_many :bookings
  has_many :bookclub_users
  has_many :bookclub_memberships, through: :bookclub_users, source: :bookclub
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
