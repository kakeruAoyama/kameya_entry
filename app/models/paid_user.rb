class PaidUser < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :entry, optional: true
  belongs_to :exit, optional: true
  belongs_to :admin, optional: true
  belongs_to :plan, optional: true
end
