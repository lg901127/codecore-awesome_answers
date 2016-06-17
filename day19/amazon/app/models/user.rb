class User < ActiveRecord::Base
  has_many :products, dependent: :destroy
  has_many :reviews, dependent: :nullify
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  has_secure_password
end
