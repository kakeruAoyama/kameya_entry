class EntriesController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user!, only: [:create, :show]
  before_action :authenticate_admin!, only: [:delete]
  before_action :user_attribute_done

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

  def destroy
    @entry = Entry.find(params[:id])
    if @entry.destroy
      flash[:success] = 'Entry was successfully deleted.'
      redirect_to admins_top_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to admins_top_path
    end
  end
  
end
