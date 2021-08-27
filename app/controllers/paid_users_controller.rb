class PaidUsersController < ApplicationController
  def update
    paid_user = PaidUser.find(params[:id])
    paid_user.update!(completed: true, admin_id: current_admin.id)
    redirect_to admins_top_path
  end

  def un_aupdate
    paid_user = PaidUser.find(params[:id])
    paid_user.update!(completed: false, admin_id: nil)
    redirect_to admins_top_path
  end
end
