class ExitsController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!, only: [:create, :show]
  
  def create
    exit = Exit.new(user_id: current_user.id)
    if exit.save!
      paid_user = PaidUser.where(user_id: current_user.id).last
      if paid_user.update!(exit_id: exit.id)
        redirect_to exits_show_path
      end
    end
  end

  def show
  end
end
