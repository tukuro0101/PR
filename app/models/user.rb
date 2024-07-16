class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_secure_password

  has_many :addresses
  has_many :orders
  has_many :reviews
  has_one :cart

  enum role: { user: 'user', admin: 'admin' }
end
