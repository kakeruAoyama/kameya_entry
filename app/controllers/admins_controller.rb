class AdminsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'

  def top
    @entries = Entry.preload(:user).where(completed: false, created_at: Date.today.beginning_of_day..Date.today.end_of_day)
    @exits = Exit.preload(:user).where(completed: false, created_at: Date.today.beginning_of_day..Date.today.end_of_day)
    @paid_yet_users = PaidUser.preload(:user).where(completed: false, created_at: Date.today.beginning_of_day..Date.today.end_of_day)
    @paid_users = PaidUser.preload(:user).where(completed: true, created_at: Date.today.beginning_of_day..Date.today.end_of_day)
  end
end
