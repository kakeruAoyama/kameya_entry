class UserAttributesController < ApplicationController
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
  end

  private
  def user_attribute_params
    params.permit(:university, :name, :barthday, :graduation_year, :number, :sex, :department)
  end
end
