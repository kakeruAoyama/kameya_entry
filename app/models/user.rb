class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :validatable

  has_many :entris, dependent: :destroy
  has_many :exits, dependent: :destroy
end
