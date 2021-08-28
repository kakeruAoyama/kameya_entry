class PaidUsersController < ApplicationController
  before_action :authenticate_admin!
  def update
    paid_user = PaidUser.find(params[:id])
    paid_user.update!(completed: true, admin_id: current_admin.id)
    redirect_to admins_top_path
  end

  def destroy
    @paid_user = PaidUser.find(params[:id])
    if @paid_user.destroy
      flash[:success] = 'PaidUser was successfully deleted.'
      redirect_to admins_top_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to admins_top_path
    end
  end
  

  def un_aupdate
    paid_user = PaidUser.find(params[:id])
    paid_user.update!(completed: false, admin_id: nil)
    redirect_to admins_top_path
  end
end
