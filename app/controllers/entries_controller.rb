class EntriesController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!, only: [:create, :show]

  def create
    entry = Entry.new(user_id: current_user.id)
    if entry.save!
      paid_user = PaidUser.new(user_id: current_user.id, entry_id: entry.id)
      if paid_user.save!
        redirect_to entries_show_path
      end
    end
  end

  def show
  end
end
