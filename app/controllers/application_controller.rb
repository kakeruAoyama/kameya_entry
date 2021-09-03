class ApplicationController < ActionController::Base
  def user_attribute_done
    if current_user
      current_user_attribute = UserAttribute.where(user_id: current_user.id).present?
      p current_user_attribute
      unless current_user_attribute 
        redirect_to new_user_attribute_path
      end
    end
  end

  def after_sign_in_path_for(resource)
    case resource
    when User
      top_index_path
    when Admin
      admins_top_path
    end
  end
end
