class EntriesController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!, only: [:create, :show]

  def create
    entry = Entry.new(user_id: current_user.id)
    if entry.save!
      redirect_to entries_show_path
    end
  end

  def show
  end
end
