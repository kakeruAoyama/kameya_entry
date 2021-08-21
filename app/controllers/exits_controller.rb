class ExitsController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!, only: [:create, :show]
  
  def create
    exit = Exit.new(user_id: current_user.id)
    if exit.save!
      redirect_to exits_show_path
    end
  end

  def show
  end
end
