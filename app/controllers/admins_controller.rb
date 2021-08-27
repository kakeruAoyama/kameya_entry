class AdminsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'

  def top
    @entries = Entry.preload(:user).where(completed: false)
    @exits = Exit.preload(:user).where(completed: false)
    @paid_yet_users = PaidUser.preload(:user).where(completed: false)
    @paid_users = PaidUser.preload(:user).where(completed: true)
  end
end
