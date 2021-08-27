class Entry < ApplicationRecord
  belongs_to :user
  has_many :paid_users, dependent: :destroy
end
