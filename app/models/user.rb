class User < ApplicationRecord
  validates :name, :email, :phone, :gender, :password, presence: true
  enum gender: { male: 0, female: 1, other: 2 }
  has_many :messages
end
