# frozen_string_literal: true

class User::RegistrationsController < Devise::RegistrationsController

  def new
    super
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "ユーザー認証メールを送信いたしました。認証が完了しましたらログインをお願いいたします"
      redirect_to new_user_session_path
    else
      flash[:alert] = "ユーザー登録に失敗しました"
      render action: :new and return
    end
  end

  def after_inactive_sign_up_path_for(resource)
    flash[:notice] = "ユーザー情報の登録をお願い致します"
    new_user_attribute_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
