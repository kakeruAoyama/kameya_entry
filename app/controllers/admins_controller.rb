class AdminsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'

  def top
    @entries = Entry.where(completed: false)
    @exits = Exit.where(completed: false)
  end
end
