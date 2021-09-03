class UserAttributesController < ApplicationController
  before_action :authenticate_user!
  before_action :user_attribute_done, only: [:edit, :update]

  def new
    @user_attributes = UserAttribute.new
  end

  def create
    user_attribute = UserAttribute.new(user_attribute_params)
    user_attribute.user_id = current_user.id
    if user_attribute.save!
      redirect_to root_path
    else
      redirect_to :action => "new"
    end
  end

  def edit
    @user_attribute = UserAttribute.find_by(user_id: current_user.id)
  end

  def update
    user_attribute = UserAttribute.find_by(user_id: current_user.id)
    if user_attribute.update!(user_attribute_params)
      redirect_to root_path, notice: "変更を記録しました"
    else
      flash.now[:alert] = "入力に誤りがあります"
      redirect_to :action => "edit"
    end
  end

  private
  def user_attribute_params
    params.require(:user_attribute).permit(:university, :name, :barthday, :graduation_year, :number, :sex, :department)
  end
end
