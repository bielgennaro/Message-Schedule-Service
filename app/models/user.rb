class User < ApplicationRecord
  validates :name, :email, :phone, :gender, :password, presence: true
  has_secure_password :password, validations: true
  enum gender: { male: 0, female: 1, other: 2, prefer_not_to_say: 3 }, _default: :male
  has_many :messages
end
