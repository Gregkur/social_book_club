class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :books
  has_many :bookings
  has_many :bookclubs, through: :bookclub_users
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
