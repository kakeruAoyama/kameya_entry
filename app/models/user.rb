class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable,
          :confirmable, :lockable, :timeoutable, :trackable

  has_many :entris, dependent: :destroy
  has_many :exits, dependent: :destroy
  has_one :user_attribute, dependent: :destroy
end
